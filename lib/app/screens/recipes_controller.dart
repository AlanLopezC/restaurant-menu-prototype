import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pasillo_londres/app/screens/recipes_view.dart';
import 'package:pasillo_londres/app/widgets/my_tile.dart';
import 'package:pasillo_londres/data/datasources/firebase_firestore_impl.dart';

class RecipesController extends StatelessWidget {
  const RecipesController({
    required this.categorie,
    Key? key,
  }) : super(key: key);

  final String categorie;

  Future<List<Map<String, dynamic>>?> fetchPlatillo(
      BuildContext context) async {
    return await MyFirestore.fetchPlatillos(categorie);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchPlatillo(context),
      builder: (context, AsyncSnapshot<List<Map<String, dynamic>>?> snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CupertinoActivityIndicator(
              color: Colors.black,
            ),
          );
        }
        List<MyTile> recipesTiles = [];
        for (var data in snapshot.data!) {
          recipesTiles.add(
            MyTile(
              title: data["titulo"],
              description: data["descripcion"],
              price: data["precio"],
              imageRoute: data["titulo"] == "Elizabeth"
                  ? "assets/logo/2.png"
                  : "assets/images/$categorie/${data["titulo"].toString().toUpperCase()}.jpeg",
              ingredients: data["ingredientes"],
            ),
          );
        }

        return RecipesView(
          recipesTiles: recipesTiles,
        );
      },
    );
  }
}
