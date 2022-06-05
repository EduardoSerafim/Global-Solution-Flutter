import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  String? textDesligado = "Drone Desligado";
  String? textLigado = "Drone Ligado";
  Color corDesligado = Colors.red;
  Color corLigado = Colors.green;

  bool isLigado = false;
  
  var context;

  ligarDrone() {
    isLigado = !isLigado;
    notifyListeners();
  }

  
}
