import 'package:flutter/material.dart';

class SurveyCheckbox extends StatelessWidget {
  const SurveyCheckbox({
    required this.isSelected,
    Key? key,
  }) : super(key: key);

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    if (isSelected) {
      return Container(
        height: 20,
        width: 20,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.check_rounded,
          color: Color(0xFF7E8FA8),
          size: 14,
        ),
      );
    }

    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        border: Border.all(width: 2.0, color: const Color(0xFF7E8FA8)),
        shape: BoxShape.circle,
      ),
    );
  }
}
