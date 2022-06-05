import 'package:flutter/material.dart';
import 'package:gs/app/models/lugares_model.dart';



class LugaresController extends ChangeNotifier{
   List<LugaresModel> lugaresList = [
     LugaresModel(nome: "Monte Olimpo", localizacao: "Planalto de Tharsis")
  ];

  adicionarLugar(
      {required String nomeLugar, required String localizacaoLugar}) {
  
      lugaresList.add(
          LugaresModel(
              nome: nomeLugar,
              localizacao:localizacaoLugar
          )
      );
      notifyListeners();
    }
  }