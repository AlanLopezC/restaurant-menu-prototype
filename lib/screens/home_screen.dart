import 'package:flutter/material.dart';
import 'package:pasillo_londres/constants.dart';
import 'package:pasillo_londres/widgets/my_card.dart';
import 'package:pasillo_londres/widgets/my_grid.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<MyCard> foodList = [
    const MyCard(
      title: "Waffles / Pancakes",
      route: "assets/images/pancake.jpg",
    ),
    const MyCard(
      title: "Crossaints",
      route: "assets/images/crossaint.jpg",
    ),
    const MyCard(
      title: "Bowls",
      route: "assets/images/bowl.jpg",
    ),
    const MyCard(
      title: "Baggels",
      route: "assets/images/baggel.jpg",
    ),
    const MyCard(
      title: "Bisquets",
      route: "assets/images/bisquet.jpg",
    ),
    const MyCard(
      title: "Toasts",
      route: "assets/images/toast.jpg",
    ),
    const MyCard(
      title: "Chilaquiles",
      route: "assets/images/chilaquiles.jpg",
    ),
  ];

  final List<MyCard> drinkList = [
    const MyCard(
      title: "Smoothies / Jugos",
      route: "assets/images/smoothie.jpg",
    ),
    const MyCard(
      title: "Cafés",
      route: "assets/images/cafe.jpg",
    ),
    const MyCard(
      title: "Bebidas",
      route: "assets/images/bebidas.jpg",
    ),
    const MyCard(
      title: "Smoothies / Jugos",
      route: "assets/images/smoothie.jpg",
    ),
    const MyCard(
      title: "Cafés",
      route: "assets/images/cafe.jpg",
    ),
    const MyCard(
      title: "Bebidas",
      route: "assets/images/bebidas.jpg",
    ),
    const MyCard(
      title: "Smoothies / Jugos",
      route: "assets/images/smoothie.jpg",
    ),
    const MyCard(
      title: "Cafés",
      route: "assets/images/cafe.jpg",
    ),
    const MyCard(
      title: "Bebidas",
      route: "assets/images/bebidas.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // final Size screenSize = MediaQuery.of(context).size;

    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Comida",
                  style: kTextStyle,
                ),
              ),
              MyGrid(list: foodList),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Bebidas",
                  style: kTextStyle,
                ),
              ),
              MyGrid(list: drinkList),
            ],
          ),
        ),
      ),
    );
  }
}
