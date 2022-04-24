import 'package:flutter/material.dart';

class DrinkTile extends StatelessWidget {
  const DrinkTile({
    required this.title,
    required this.description,
    required this.price,
    Key? key,
  }) : super(key: key);

  final String title;
  final String? description;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              Text("\$" + price),
            ],
          ),
          description != null ? Text(description!) : const SizedBox(),
        ],
      ),
    );
  }
}
