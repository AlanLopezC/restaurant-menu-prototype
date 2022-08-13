import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pasillo_londres/app/widgets/my_appbar.dart';

class CuponScreen extends StatelessWidget {
  const CuponScreen({
    required this.date,
    Key? key,
  }) : super(key: key);

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    final formatedDate =
        "${DateFormat.yMMMMEEEEd("es_MX").format(date)}, ${DateFormat.Hms().format(date)}";
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Expanded(
            child: MyAppBar(),
          ),
          Expanded(
            flex: 14,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: double.infinity),
                const Text(
                  "Muchas gracias por tus comentarios!",
                  textScaleFactor: 1.4,
                ),
                const SizedBox(height: 10),
                const Text(
                  "Muestra tu pantalla al mesero para un descuento del 10%",
                  textScaleFactor: 1.2,
                ),
                const SizedBox(height: 10),
                Text(
                  "Encuesta contestada: $formatedDate",
                  textScaleFactor: 1.2,
                ),
                const SizedBox(height: 20)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
