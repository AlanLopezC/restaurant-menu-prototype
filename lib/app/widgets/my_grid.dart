import 'package:flutter/material.dart';
import 'package:pasillo_londres/app/widgets/my_card.dart';

class MyGrid extends StatelessWidget {
  const MyGrid({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<MyCard> list;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 220,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 4,
        mainAxisSpacing: 20,
      ),
      itemCount: list.length,
      itemBuilder: (BuildContext ctx, index) {
        return list[index];
      },
    );
  }
}
