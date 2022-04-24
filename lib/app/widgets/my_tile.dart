import 'package:flutter/material.dart';
import 'package:pasillo_londres/app/screens/recipe_screen.dart';

class MyTile extends StatelessWidget {
  const MyTile({
    Key? key,
    required this.imageRoute,
    required this.title,
    required this.description,
    required this.price,
    required this.ingredients,
  }) : super(key: key);

  final String imageRoute;
  final String title;
  final String description;
  final String price;
  final List<dynamic> ingredients;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => RecipeScreen(
            title: title,
            imageRoute: imageRoute,
            description: description,
            ingredients: ingredients.map((s) => s.toString()).toList(),
          ),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.only(bottom: 5),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color(0x1f000000),
              blurRadius: 5,
              offset: Offset(0, 2),
              spreadRadius: -1,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x1f000000),
                    blurRadius: 5,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: ClipRRect(
                // borderRadius: BorderRadius.circular(10),
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.asset(
                  imageRoute,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "\$" + price,
                        style: const TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                      color: Color(0xff555555),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
