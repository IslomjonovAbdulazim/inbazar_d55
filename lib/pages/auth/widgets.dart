import 'package:flutter/cupertino.dart';
import 'package:inbazar_d55555/utils/texts.dart';

import '../../utils/buttons.dart';

class GenderSelect extends StatelessWidget {
  final int value;
  final void Function(int value) onChanged;
  final void Function() next;

  const GenderSelect({
    super.key,
    required this.value,
    required this.onChanged,
    required this.next,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Jinsiyingizni tanlang",
          style: TextStyles.headline1,
        ),
        Spacer(),
        Row(
          children: [
            Expanded(
              flex: value == 1 ? 2 : 1,
              child: CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  onChanged(1);
                },
                child: Container(
                  decoration: value != 1
                      ? null
                      : BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("assets/male.png"),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: value == 2 ? 2 : 1,
              child: CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  onChanged(2);
                },
                child: Container(
                  decoration: value != 2
                      ? null
                      : BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("assets/female.png"),
                  ),
                ),
              ),
            ),
          ],
        ),
        Spacer(),
        Buttons.primary(
          onPressed: () {
            next();
          },
          text: "Keyingisi",
        ),
      ],
    );
  }
}

class AgeSelect extends StatelessWidget {
  final int value;
  final void Function(int value) onChanged;
  final void Function() back;
  final void Function() next;

  const AgeSelect({
    super.key,
    required this.value,
    required this.onChanged,
    required this.back,
    required this.next,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            "assets/age.png",
            height: 200,
          ),
        ),
        SizedBox(height: 10),
        Text("Yoshingizni kiriting", style: TextStyles.headline1),
        Spacer(),
        // yosh tanlansin! hw
        Spacer(),
        Row(
          children: [
            Expanded(
              child: Buttons.outlined(
                text: "Ortga qaytish",
                onPressed: () {
                  back();
                },
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Buttons.primary(
                onPressed: () {
                  next();
                },
                text: "Keyingisi",
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class HeightSelect extends StatelessWidget {
  final int value;
  final void Function(int value) onChanged;
  final void Function() back;
  final void Function() next;

  const HeightSelect({
    super.key,
    required this.value,
    required this.onChanged,
    required this.back,
    required this.next,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            "assets/height.png",
            height: 200,
          ),
        ),
        SizedBox(height: 10),
        Text("Bo'yingizni kiriting", style: TextStyles.headline1),
        Spacer(),
        // yosh tanlansin! hw
        Spacer(),
        Row(
          children: [
            Expanded(
              child: Buttons.outlined(
                text: "Ortga qaytish",
                onPressed: () {
                  back();
                },
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Buttons.primary(
                onPressed: () {
                  next();
                },
                text: "Keyingisi",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
