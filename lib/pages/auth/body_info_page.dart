import 'package:flutter/material.dart';

import 'widgets.dart';

class BodyInfoPage extends StatefulWidget {
  const BodyInfoPage({super.key});

  @override
  State<BodyInfoPage> createState() => _BodyInfoPageState();
}

class _BodyInfoPageState extends State<BodyInfoPage> {
  List<String> steps = [
    "Jins", // 1-erkak, 2-ayol
    "Yosh",
    "Bo'y",
    "Vazn",
    "Oyoq Kiyim",
    "Kiyim Stili", // tor(1), o'rta(2), keng(3)
    "Tana Tuzilishi", // ozgin(1), o'rta(2), semiz(3), sportchi(4)
  ];
  List<int> values = [0, 18, 180, 70, 42, 2, 2];

  List<Widget> widgets = [
    GenderSelect(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: GenderSelect()),
        ],
      ),
    );
  }
}
