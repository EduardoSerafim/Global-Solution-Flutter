import 'package:flutter/material.dart';

class FormModelo extends StatelessWidget {
  final String textLabel;
  final Function()? onEditingComplete;
  final TextEditingController? userInputController;
  final FocusNode? focusNode;
 
  FormModelo({required this.textLabel, this.onEditingComplete, this.userInputController, this.focusNode});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: TextFormField(
        decoration: InputDecoration(
          label: Text(textLabel),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        focusNode: focusNode,
        onEditingComplete: onEditingComplete,
        controller: userInputController,
      ),
    );
  }
}
