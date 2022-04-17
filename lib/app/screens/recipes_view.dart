import 'package:flutter/material.dart';
import 'package:pasillo_londres/app/widgets/my_appbar.dart';
import 'package:pasillo_londres/app/widgets/my_tile.dart';

class RecipesView extends StatelessWidget {
  const RecipesView({required this.recipesTiles, Key? key}) : super(key: key);

  final List<MyTile> recipesTiles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            const Expanded(
              flex: 1,
              child: MyAppBar(),
            ),
            Expanded(
              flex: 14,
              child: ListView.builder(
                itemCount: recipesTiles.length,
                itemBuilder: (context, index) => recipesTiles[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
