import 'package:flutter/material.dart';
import 'package:gs/themes/app_theme.dart';

import 'cadastro_page/cadastro_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CadastroPage(),
      theme: light,
    );
  }
}
