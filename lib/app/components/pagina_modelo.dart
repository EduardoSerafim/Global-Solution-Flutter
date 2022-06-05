import 'package:flutter/material.dart';

class PaginaModelo extends StatelessWidget {
  final Widget bodyWidget;
  final FloatingActionButton? floatingButton;
  final String titulo;

  PaginaModelo({required this.bodyWidget, this.floatingButton, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(titulo),
        ),
        floatingActionButton: floatingButton,
        body: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
          child: SingleChildScrollView(
            child: bodyWidget,
          ),
        ));
  }
}
