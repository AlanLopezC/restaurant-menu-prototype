import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({
    required this.imageRoute,
    required this.description,
    required this.ingredients,
    required this.heroTag,
    Key? key,
  }) : super(key: key);

  final String imageRoute;
  final String description;
  final List<String> ingredients;
  final int heroTag;

  final String bullet = "  \u2022 ";

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Image.asset(
                  imageRoute,
                  width: double.infinity,
                  height: screenSize.height * 2 / 5,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Descripción",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        description,
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Ingredientes",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 15),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: ingredients.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) =>
                            Text(bullet + ingredients[index]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
