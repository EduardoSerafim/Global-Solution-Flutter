import 'dart:math';

import 'package:flutter/cupertino.dart';

class GaleriaController extends ChangeNotifier {
  List<String> listaImagens = [
    "assets/images/mars0.jpg",
    "assets/images/mars1.jpg",
    "assets/images/mars3.jpg",
    "assets/images/mars4.jpg"
  ];

  String imagemExibida = "assets/images/mars4.jpg";
  
  
  int i = 0;
  onClickImage() {
    if (i == 4) {
      i = 0;
    }
    imagemExibida = listaImagens[i];
    i = i + 1;
    notifyListeners();
  }
}
