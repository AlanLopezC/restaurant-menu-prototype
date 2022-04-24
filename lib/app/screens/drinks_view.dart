import 'package:flutter/material.dart';
import 'package:pasillo_londres/app/widgets/drink_tile.dart';
import 'package:pasillo_londres/app/widgets/my_appbar.dart';

class DrinksView extends StatelessWidget {
  const DrinksView({required this.drinkTiles, this.extra, Key? key})
      : super(key: key);

  final List<DrinkTile> drinkTiles;
  final String? extra;

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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView.builder(
                  itemCount: drinkTiles.length,
                  itemBuilder: (context, index) => drinkTiles[index],
                ),
              ),
            ),
            extra != null
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
                    child: Text(extra!),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
