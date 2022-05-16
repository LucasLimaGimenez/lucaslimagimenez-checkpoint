import 'package:flutter/material.dart';
import 'package:lucaslimagimenezapp/paginaListagem.dart';
import 'package:lucaslimagimenezapp/theme/temas.dart';

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: darkTheme, home: PaginaListagem());
  }
}
