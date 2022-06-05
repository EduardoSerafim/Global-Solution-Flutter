

import 'package:flutter/material.dart';
import 'package:gs/app/modules/galeria_page/galeria_controller.dart';


import '../../components/botao_modelo.dart';
import '../../components/form_modelo.dart';
import '../../components/pagina_modelo.dart';
import '../home_page/home_page.dart';

class GaleriaPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GaleriaPageState();
  }
}

class _GaleriaPageState extends State{
  final galeriaController = GaleriaController();

  @override
  void initState() {
    super.initState();
    galeriaController.addListener(() {
      setState(() {});
    });
  }

@override
  Widget build(BuildContext context) {
    return PaginaModelo(
        titulo: "Galeria de fotos",
        bodyWidget: Column(
        children: [
          const Text("Galeria de fotos do drone", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          const SizedBox(height: 30,),
          Center(
            child: Container(
              child:GestureDetector(
              child: Image.asset(galeriaController.imagemExibida),
              onTap: () {
                galeriaController.onClickImage();
              },
            ),
            width: 600,
            ),
          ),
          const SizedBox(height: 15,),
          const Text("Clique na imagem para passar para a próxima", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
  

