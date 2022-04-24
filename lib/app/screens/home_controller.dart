import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pasillo_londres/app/screens/home_view.dart';
import 'package:pasillo_londres/app/widgets/my_card.dart';
import 'package:pasillo_londres/data/datasources/firebase_firestore_impl.dart';

class HomeController extends StatelessWidget {
  const HomeController({Key? key}) : super(key: key);

  Future<List<Map<String, dynamic>>?> fetchCategories(
      BuildContext context) async {
    return await MyFirestore.fetchCategories();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchCategories(context),
      builder: (context, AsyncSnapshot<List<Map<String, dynamic>>?> snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CupertinoActivityIndicator(
              color: Colors.black,
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
                route: "assets/images/${data["categoria"]}/cat.jpeg",
                categorie: data["categoria"],
                isFood: data["isFood"],
              ),
            );
          } else {
            drinkList.add(
              MyCard(
                title: data["titulo"],
                route: "assets/images/bebidas/${data["categoria"]}.jpeg",
                categorie: data["categoria"],
                isFood: data["isFood"],
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
