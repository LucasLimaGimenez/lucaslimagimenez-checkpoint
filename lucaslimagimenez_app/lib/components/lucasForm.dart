import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class LucasForm extends StatelessWidget {
  final String label;
  final Function()? onEditingComplete;
  final TextEditingController? userInputController;
  final FocusNode? focusNode;

  // ignore: use_key_in_widget_constructors
  const LucasForm(
      {required this.label,
      this.userInputController,
      this.onEditingComplete,
      this.focusNode});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        focusNode: focusNode,
        onEditingComplete: onEditingComplete,
        controller: userInputController,
        style: const TextStyle(
          color: Colors.lime,
          height: 2,
          fontSize: 20,
        ),
        decoration: InputDecoration(
          label: Text(label),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.amberAccent, width: 2),
              borderRadius: BorderRadius.circular(10)),
        ));
  }
}
