import 'package:flutter/material.dart';
import 'package:pasillo_londres/app/widgets/my_card.dart';
import 'package:pasillo_londres/app/widgets/my_grid.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    required this.foodList,
    required this.drinkList,
    Key? key,
  }) : super(key: key);

  final List<MyCard> foodList;
  final List<MyCard> drinkList;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Comida",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              MyGrid(list: foodList),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Bebidas",
                  style: TextStyle(
                    fontSize: 18,
                  ),
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
