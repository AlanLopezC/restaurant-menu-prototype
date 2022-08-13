import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:pasillo_londres/app/screens/admin_page.dart';
import 'package:pasillo_londres/app/screens/drawer_view.dart';
import 'package:pasillo_londres/app/screens/home_controller.dart';
import 'package:provider/provider.dart';

import 'bloc/survey/survey_bloc.dart';

Future<void> main() async {
  const firebaseConfig = FirebaseOptions(
    apiKey: "AIzaSyACr0ar4TRJ6PgCObx8nb97aC4yqxWyHU4",
    authDomain: "pasillo-londres.firebaseapp.com",
    projectId: "pasillo-londres",
    storageBucket: "pasillo-londres.appspot.com",
    messagingSenderId: "357648359567",
    appId: "1:357648359567:web:7471ce89442fc2889c50fa",
    measurementId: "G-5XBHG8XWHF",
  );

  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(options: firebaseConfig);
  } else {
    await Firebase.initializeApp();
  }

  runApp(
    MultiProvider(
      providers: [
        BlocProvider<SurveyBloc>(
          create: (BuildContext context) => SurveyBloc(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pasillo Londres',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('es', 'MX'),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Lora",
        primaryColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const MyHome(),
        "/admin33": (context) => const AdminPage(),
      },
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SliderDrawer(
        sliderOpenSize: 150,
        appBar: SliderAppBar(
          drawerIconSize: 22,
          appBarHeight: 40,
          appBarPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          appBarColor: Colors.white,
          title: Text(
            "Pasillo Londres ",
            style: TextStyle(
              // fontFamily: "Domine",
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        slider: DrawerView(),
        child: HomeController(),
      ),
    );
  }
}
