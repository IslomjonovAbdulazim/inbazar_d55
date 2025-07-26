import 'package:flutter/material.dart';

class GenderSelect extends StatelessWidget {
  final int value;
  final void Function(int value) onChanged;

  const GenderSelect({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [],
    );
  }
}

class AgeSelect extends StatelessWidget {
  final int value;
  final void Function(int value) onChanged;
  final void Function() back;

  const AgeSelect({
    super.key,
    required this.value,
    required this.onChanged,
    required this.back,
  });

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
