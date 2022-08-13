import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pasillo_londres/app/screens/survey_questions.dart';
import 'package:pasillo_londres/data/datasources/firebase_firestore_impl.dart';
import 'package:pasillo_londres/data/survey_questions.dart';

import '../../bloc/survey/survey_bloc.dart';
import '../widgets/my_appbar.dart';
import 'cupon_screen.dart';

typedef Json = Map<String, dynamic>;

class SurveyScreen extends StatefulWidget {
  const SurveyScreen({Key? key}) : super(key: key);

  @override
  State<SurveyScreen> createState() => _SurveyScreenState();
}

class _SurveyScreenState extends State<SurveyScreen> {
  final _tfcont1 = TextEditingController();
  final _tfcont2 = TextEditingController();
  final _tf = GlobalKey<FormFieldState<String>>();

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<SurveyBloc>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const MyAppBar(),
              const Questions(),
              LastQuestion(tfcont: _tfcont2),
              CellphoneQuestion(tf: _tf, tfcont: _tfcont1),
              Padding(
                padding: const EdgeInsets.only(bottom: 30, top: 10),
                child: Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 12, 77, 198),
                      ),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.symmetric(
                          horizontal: 28,
                          vertical: 14,
                        ),
                      ),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () async => onPressed(bloc),
                    child: const Text(
                      "Enviar",
                      textScaleFactor: 1.2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> onPressed(SurveyBloc bloc) async {
    if (!_tf.currentState!.validate()) return;

    if (bloc.state.survey.any((e) => e == -1)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Contesta todas las preguntas de opciones"),
        ),
      );
      return;
    }

    final answers = <String>[
      ...List.generate(
        bloc.state.survey.length,
        (i) => SurveyQuestions.options[i][bloc.state.survey[i]],
      ),
      _tfcont2.text,
    ];

    final keys = List<String>.generate(
      answers.length,
      (index) => index.toString(),
    );

    final Json doc = Map.fromIterables(
      keys,
      answers,
    );

    final cellphone = filterCellphone(_tfcont1.text);

    final response = await MyFirestore.sendSurvey(
      document: doc,
      cellphone: cellphone,
    );

    // ? Check
    if (!mounted) return;

    if (response == 0) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => CuponScreen(
            date: DateTime.now(),
          ),
        ),
      );
    } else if (response == -1) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Este telefono ya fue usado"),
        ),
      );
    } else if (response == 2) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Hubo un error al subir la encuesta."),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Error desconocido."),
        ),
      );
    }
  }

  String filterCellphone(String cellphone) {
    StringBuffer cel = StringBuffer();
    for (final String let in cellphone.split("")) {
      try {
        int.parse(let);
        cel.write(let);
      } catch (e) {
        debugPrint(e.toString());
      }
    }

    return cel.toString();
  }
}
