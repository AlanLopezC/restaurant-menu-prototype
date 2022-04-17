import 'package:flutter/material.dart';
import 'package:pasillo_londres/app/screens/recipes_view.dart';
import 'package:pasillo_londres/app/widgets/my_tile.dart';
import 'package:pasillo_londres/data/datasources/firebase_firestore_impl.dart';
import 'package:provider/provider.dart';

class RecipesController extends StatefulWidget {
  const RecipesController({
    required this.categorie,
    Key? key,
  }) : super(key: key);

  final String categorie;

  @override
  State<RecipesController> createState() => _RecipesControllerState();
}

class _RecipesControllerState extends State<RecipesController> {
  Future<List<Map<String, dynamic>>?> fetchPlatillo(
      BuildContext context) async {
    return await MyFirestore.fetchPlatillos(widget.categorie);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchPlatillo(context),
      builder: (context, AsyncSnapshot<List<Map<String, dynamic>>?> snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(
                // color: kPrimaryColor,
                ),
          );
        }
        List<MyTile> recipesTiles = [];
        int i = 0;
        for (var data in snapshot.data!) {
          recipesTiles.add(
            MyTile(
              title: data["titulo"],
              description: data["descripcion"],
              price: data["precio"],
              imageRoute: data["imagen"],
              ingredients: data["ingredientes"],
              heroTag: i++,
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
