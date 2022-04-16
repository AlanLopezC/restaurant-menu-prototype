import 'package:flutter/material.dart';
import 'package:pasillo_londres/widgets/my_appbar.dart';
import 'package:pasillo_londres/widgets/my_tile.dart';

class RecipesScreen extends StatelessWidget {
  RecipesScreen({Key? key}) : super(key: key);

  final List<MyTile> recipesTiles = [
    const MyTile(
      imageRoute: "assets/images/waffle2.jpg",
      description:
          'Waffle hash brown con salmón ahumado, cebolla morada aguacate y un toque de aderezo chipotle.',
      title: 'Olivia',
      heroTag: 1,
    ),
    const MyTile(
      imageRoute: "assets/images/waffle2.2.webp",
      description:
          'Waffle de red velvet con galleta oreo, nuez y un toque de crema de avellana.',
      title: 'Ramona',
      heroTag: 2,
    ),
    const MyTile(
      imageRoute: "assets/images/waffle3.jpg",
      description:
          'Pancake clásico con chocolate blanco y frutos rojos acompañado de crema de almendras.',
      title: 'Amelia',
      heroTag: 3,
    ),
    const MyTile(
      imageRoute: "assets/images/waffle3.jpg",
      description:
          'Pancake clásico con chocolate blanco y frutos rojos acompañado de crema de almendras.',
      title: 'Amelia',
      heroTag: 4,
    ),
  ];

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
