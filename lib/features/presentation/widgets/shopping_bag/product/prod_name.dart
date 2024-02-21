import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProdName extends StatelessWidget {
  const ProdName({super.key, required this.name});

  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
