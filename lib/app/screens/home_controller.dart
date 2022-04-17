import 'package:flutter/material.dart';
import 'package:pasillo_londres/app/screens/home_view.dart';
import 'package:pasillo_londres/app/widgets/my_card.dart';
import 'package:pasillo_londres/data/datasources/firebase_firestore_impl.dart';

class HomeController extends StatefulWidget {
  const HomeController({Key? key}) : super(key: key);

  @override
  State<HomeController> createState() => _HomeControllerState();
}

class _HomeControllerState extends State<HomeController> {
  Future<List<Map<String, dynamic>>?> fetchCategories(
      BuildContext context) async {
    try {
      return await MyFirestore.fetchCategories();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchCategories(context),
      builder: (context, AsyncSnapshot<List<Map<String, dynamic>>?> snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(
                // color: kPrimaryColor,
                ),
          );
        }

        List<MyCard> foodList = [];
        List<MyCard> drinkList = [];
        for (var data in snapshot.data!) {
          if (data["isFood"]) {
            foodList.add(
              MyCard(
                title: data["titulo"],
                route: data["imagen"],
                categorie: data["categoria"],
              ),
            );
          } else {
            drinkList.add(
              MyCard(
                title: data["titulo"],
                route: data["imagen"],
                categorie: data["categoria"],
              ),
            );
          }
        }

        return HomeView(
          foodList: foodList,
          drinkList: drinkList,
        );
      },
    );
  }
}
