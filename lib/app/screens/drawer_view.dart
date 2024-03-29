import 'package:flutter/material.dart';
import 'package:pasillo_londres/app/screens/survey_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({Key? key}) : super(key: key);

  Future<void> launchWhatsApp() async {
    const link = WhatsAppUnilink(
      phoneNumber: '', // insert phone number here
      text: "Hola, quiero hacer una reservación.",
    );

    await launchUrl(Uri.parse(link.toString()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {},
                    // onPressed: () =>
                    //     Navigator.of(context).pushReplacementNamed("/admin33"),
                    child: const Text(
                      'Menú secreto',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SurveyScreen(),
                      ),
                    ),
                    child: const Text(
                      'Encuesta',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Descuentos',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: launchWhatsApp,
                    child: const Text(
                      'WhatsApp',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              "assets/logo/1.png",
              color: Colors.black,
              cacheHeight: 200,
              cacheWidth: 200,
            ),
          ],
        ),
      ),
    );
  }
}
