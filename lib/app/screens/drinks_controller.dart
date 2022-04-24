import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pasillo_londres/app/screens/drinks_view.dart';
import 'package:pasillo_londres/app/widgets/drink_tile.dart';
import 'package:pasillo_londres/data/datasources/firebase_firestore_impl.dart';

class DrinksController extends StatelessWidget {
  const DrinksController({required this.categorie, Key? key}) : super(key: key);

  final String categorie;

  Future<List<Map<String, dynamic>>?> fetchBebida(BuildContext context) async {
    return await MyFirestore.fetchBebidas(categorie);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchBebida(context),
      builder: (context, AsyncSnapshot<List<Map<String, dynamic>>?> snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CupertinoActivityIndicator(
              color: Colors.black,
            ),
          );
        }

        List<DrinkTile> drinkTiles = [];
        for (var data in snapshot.data!) {
          drinkTiles.add(
            DrinkTile(
              title: data["titulo"],
              description: data["descripcion"],
              price: data["precio"],
            ),
          );
        }

        String? extra;
        if (categorie == "cafes") {
          extra =
              "*Leche en tu bebida (a elección) de almendra/soya/avena/coco \$10";
        }

        return DrinksView(
          drinkTiles: drinkTiles,
          extra: extra,
        );
      },
    );
  }
}
