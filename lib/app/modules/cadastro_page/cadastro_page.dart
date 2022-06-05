//import 'package:challenge_sprint_2/modules/home_page/home_page.dart';
import 'package:flutter/material.dart';

import '../../components/botao_modelo.dart';
import '../../components/form_modelo.dart';
import '../../components/pagina_modelo.dart';
import '../home_page/home_page.dart';

class CadastroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PaginaModelo(
        titulo: "Login",
        bodyWidget: Center(
      child: Column(
        children: [
          Image.asset('assets/images/logohue.png'),
          Row(
            children: const [
              Expanded(
                  child: Divider(
                color: Colors.black,
              ))
            ],
          ),
          const SizedBox(height: 15),
          const Text(
            'Gerenciador de drone',
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 20),
          FormModelo(textLabel: "Usuário"),
          const SizedBox(height: 40),
          FormModelo(textLabel: "Senha"),
          const SizedBox(height: 30),
          BotaoModelo(
            buttonText: "Login",
            buttonWidth: 250,
            funcOnPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          )
        ],
      ),
    ));
  }
}
