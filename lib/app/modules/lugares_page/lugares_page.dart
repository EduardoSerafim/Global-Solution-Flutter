import 'package:flutter/material.dart';
import 'package:gs/app/components/botao_modelo.dart';
import 'package:gs/app/components/card_lista_modelo,.dart';
import 'package:gs/app/components/form_modelo.dart';
import 'package:gs/app/modules/lugares_page/lugares_controller.dart';

import '../../components/pagina_modelo.dart';

class LugaresPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LugaresPageState();
  }
}

class _LugaresPageState extends State<LugaresPage> {
  TextEditingController nomeLugarController = TextEditingController();
  TextEditingController localizacaoLugarController = TextEditingController();
  FocusNode nomeLugarFocus = FocusNode();
  FocusNode localizacaoLugarFocus = FocusNode();

  final lugaresController = LugaresController();

  @override
  void initState() {
    super.initState();
    lugaresController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return PaginaModelo(
      titulo: "Lista de lugares",
      bodyWidget: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
                "Adicione na lista os lugares de marte que você deseja visitar futuramente",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 30,
            ),
            FormModelo(
                onEditingComplete: () {
                  localizacaoLugarFocus.nextFocus();
                },
                focusNode: nomeLugarFocus,
                textLabel: "Nome do lugar",
                userInputController: nomeLugarController),
            const SizedBox(height: 15),
            FormModelo(
                focusNode: localizacaoLugarFocus,
                textLabel: 'Localização do lugar',
                userInputController: localizacaoLugarController),
            const SizedBox(height: 30),
            BotaoModelo(
              buttonText: "Adicionar novo lugar",
              funcOnPressed: () {
                lugaresController.adicionarLugar(
                    nomeLugar: nomeLugarController.text,
                    localizacaoLugar: localizacaoLugarController.text);
              },
              buttonWidth: 500,
            ),
            const SizedBox(height: 30),
            
            ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 15,
                  );
                },
                shrinkWrap: true,
                itemCount: lugaresController.lugaresList.length,
                itemBuilder: (context, index) {
                  var listItem = lugaresController.lugaresList[index];
                  return CardListaModelo(
                      upperText: listItem.nome.toString(),
                      bottomText: listItem.localizacao.toString());
                }),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
