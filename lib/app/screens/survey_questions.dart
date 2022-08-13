import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pasillo_londres/data/survey_questions.dart';

import '../../bloc/survey/survey_bloc.dart';
import '../widgets/survey_checkbox.dart';

class Questions extends StatelessWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        SurveyQuestions.questions.length,
        (i) => Question(
          label: SurveyQuestions.questions[i],
          options: SurveyQuestions.options[i],
          questionIndex: i,
        ),
      ),
    );
  }
}

class Question extends StatelessWidget {
  const Question({
    required this.label,
    required this.options,
    required this.questionIndex,
    Key? key,
  }) : super(key: key);

  final String label;
  final List<String> options;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            textScaleFactor: 1.4,
            // style: labelStyle,
          ),
          const SizedBox(height: 10),
          QuestionOptions(
            options: options,
            questionIndex: questionIndex,
          ),
        ],
      ),
    );
  }
}

class QuestionOptions extends StatelessWidget {
  const QuestionOptions({
    required this.options,
    required this.questionIndex,
    Key? key,
  }) : super(key: key);

  final List<String> options;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SurveyBloc, SurveyState>(
      builder: (context, state) {
        return Column(
          children: List.generate(
            options.length,
            (i) => Option(
              text: options[i],
              index: i,
              questionIndex: questionIndex,
              isSelected: state.survey[questionIndex] == i,
            ),
          ),
        );
      },
    );
  }
}

class Option extends StatelessWidget {
  const Option({
    required this.text,
    required this.index,
    required this.questionIndex,
    required this.isSelected,
    Key? key,
  }) : super(key: key);

  final String text;
  final int index, questionIndex;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<SurveyBloc>();
    return GestureDetector(
      onTap: () {
        bloc.add(
          SurveyEvent.updateSurvey(
            questionIndex: questionIndex,
            optionIndex: index,
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(top: 18),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          color: isSelected ? const Color(0xFF7E8FA8) : Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(143, 164, 240, .25),
              blurRadius: 22,
              offset: Offset(0, 2),
            ),
            BoxShadow(
              color: Color.fromRGBO(184, 199, 255, .24),
              blurRadius: 4,
              offset: Offset(6, 7),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                text,
                textScaleFactor: 1.3,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.white : const Color(0xFF01369B),
                ),
              ),
            ),
            SurveyCheckbox(
              isSelected: isSelected,
            ),
          ],
        ),
      ),
    );
  }
}

class LastQuestion extends StatefulWidget {
  const LastQuestion({required this.tfcont, Key? key}) : super(key: key);

  final TextEditingController tfcont;

  @override
  State<LastQuestion> createState() => LastQuestionState();
}

class LastQuestionState extends State<LastQuestion> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              SurveyQuestions.lastQuestion,
              textScaleFactor: 1.4,
            ),
            TextFormField(
              controller: widget.tfcont,
            ),
          ],
        ),
      ),
    );
  }
}

class CellphoneQuestion extends StatefulWidget {
  const CellphoneQuestion({required this.tf, required this.tfcont, Key? key})
      : super(key: key);

  final GlobalKey<FormFieldState<String>> tf;
  final TextEditingController tfcont;

  @override
  State<CellphoneQuestion> createState() => CellphoneQuestionState();
}

class CellphoneQuestionState extends State<CellphoneQuestion> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Número de celular.",
              textScaleFactor: 1.4,
            ),
            const Text("Sólo es para comprobar que es primera vez."),
            TextFormField(
              key: widget.tf,
              controller: widget.tfcont,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return 'Este campo es requerido';
                }
                if (!validateCellphone(value)) {
                  return "Proporciona un número válido";
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }

  bool validateCellphone(String cellphone) {
    StringBuffer cel = StringBuffer();
    for (final String let in cellphone.split("")) {
      try {
        int.parse(let);
        cel.write(let);
      } catch (e) {
        debugPrint(e.toString());
      }
    }
    if (cel.length != 10) {
      return false;
    }
    return true;
  }
}
