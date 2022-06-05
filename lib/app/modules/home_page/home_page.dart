import 'package:flutter/material.dart';
import 'package:gs/app/modules/home_page/home_controller.dart';
import '../../components/botao_modelo.dart';
import '../../components/pagina_modelo.dart';
import '../galeria_page/galeria_page.dart';
import '../lugares_page/lugares_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController();

  @override
  void initState() {
    super.initState();
    homeController.addListener(() {
      setState(() {});
    });
  }

   Future<void> _showDialog() async {
    return showDialog<void>(
      barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Global Solution 3SIR"),
            content: SingleChildScrollView(
              child: Column(
                children: const [
                  Text("Eduardo Fernando Serafim Santos "),
                  Text("84492"),
                  Text("Leonardo Amorim Rombalde"),
                  Text("85535"),
                  Text("Vitor Rezende Passos"),
                  Text("85959"),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: Text('Voltar'))
            ],
          );
        });
  }


  @override
  Widget build(BuildContext context) {
    return PaginaModelo(
      titulo: "Home",
        floatingButton: FloatingActionButton(
          onPressed: () {
            _showDialog();
          },
          child: const Icon(Icons.info),
        ),
        bodyWidget: Center(
          child: Column(
            children: [
              const Text(
                "Bem vindo",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Gerenciador do Drone",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  homeController.ligarDrone();
                },
                child: Container(
                  width: 200,
                  height: 150,
                  child: Image.asset("assets/images/onoff.jpg"),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: homeController.isLigado
                          ? homeController.corLigado
                          : homeController.corDesligado),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                homeController.isLigado
                    ? homeController.textLigado.toString()
                    : homeController.textDesligado.toString(),
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 60,
              ),
              BotaoModelo(
                  buttonText: "Galeria de fotos",
                  buttonWidth: double.infinity,
                  funcOnPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GaleriaPage()));
                  }),
              const SizedBox(
                height: 35,
              ),
              BotaoModelo(
                  buttonText: "Lugares que eu gostaria de visitar",
                  buttonWidth: double.infinity,
                  funcOnPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LugaresPage()));
                  }),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ));
  }
}
