// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:lucaslimagimenezapp/components/lucasForm.dart';
import 'package:lucaslimagimenezapp/models/dadosModel.dart';

import 'components/lucasCard.dart';

// ignore: use_key_in_widget_constructors
class PaginaListagem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PaginaListagemState();
  }
}

class PaginaListagemState extends State<PaginaListagem> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController potenciaController = TextEditingController();
  FocusNode nomeFocus = FocusNode();
  FocusNode potenciaFocus = FocusNode();

  List<dadosModel> listaDados = [];

  adicionaNovaTransaction({required String nome, required String potencia}) {
    setState(() {
      listaDados.insert(
          listaDados.length, dadosModel(nome: nome, potencia: potencia));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 25.0, bottom: 20),
          child: FloatingActionButton(
              onPressed: () {
                adicionaNovaTransaction(
                    nome: nomeController.text,
                    potencia: potenciaController.text);
              },
              child: const Icon(Icons.add),
              backgroundColor: Colors.amberAccent)),
      body: Padding(
          padding: const EdgeInsets.only(left: 45, right: 45, top: 45),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30),
                LucasForm(
                  label: 'Nome do carro',
                  userInputController: nomeController,
                  focusNode: nomeFocus,
                  onEditingComplete: () {
                    potenciaFocus.nextFocus();
                  },
                ),
                const SizedBox(height: 50),
                LucasForm(
                    label: 'Potência do carro',
                    userInputController: potenciaController,
                    focusNode: potenciaFocus),
                const SizedBox(height: 50),
                ListView.separated(
                    shrinkWrap: true,
                    itemCount: listaDados.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(height: 15),
                    itemBuilder: (context, index) {
                      var listaItens = listaDados[index];
                      return LucasCard(
                          leftText: listaItens.nome!,
                          rightText: listaItens.potencia! + ' CV');
                    })
              ],
            ),
          )),
    );
  }
}
