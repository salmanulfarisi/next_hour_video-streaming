import 'package:flutter/material.dart';

class FilterChipWidgets extends StatelessWidget {
  final String text;
  const FilterChipWidgets({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: FilterChip(
        label: Text(text),
        onSelected: (value) {},
        elevation: 0,
      ),
    );
  }
}
