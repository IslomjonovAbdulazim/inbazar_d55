import 'package:flutter/material.dart';
import 'package:inbazar_d55555/pages/auth/widgets.dart';

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
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: Builder(
                  builder: (context) {
                    if (current == 0) {
                      return GenderSelect(
                        value: values[0],
                        onChanged: (res) {
                          values[0] = res;
                          setState(() {});
                        },
                        next: () {
                          current++;
                          setState(() {});
                        },
                      );
                    } else if (current == 1) {
                      return AgeSelect(
                        value: values[1],
                        onChanged: (res) {
                          values[1] = res;
                          setState(() {});
                        },
                        back: () {
                          current--;
                          setState(() {});
                        },
                        next: () {
                          current++;
                          setState(() {});
                        },
                      );
                    } else if (current == 2) {
                      return HeightSelect(
                        value: values[2],
                        onChanged: (res) {
                          values[2] = res;
                          setState(() {});
                        },
                        back: () {
                          current--;
                          setState(() {});
                        },
                        next: () {
                          current++;
                          setState(() {});
                        },
                      );
                    } else {
                      return SizedBox();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
