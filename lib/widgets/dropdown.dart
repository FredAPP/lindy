import 'package:flutter/material.dart';

class DropdownMenu extends StatefulWidget {
  DropdownMenu({Key key}) : super(key: key);

  @override
  _DropdownMenuState createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  String valorEscolhido;
  List lista = ['Easy', 'Medium', 'Hard', 'Very Hard', 'Insane'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dropdown Menu'),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: DropdownButton(
              hint: Text('Select Difficulty'),
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 36,
              isExpanded: true,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
              value: valorEscolhido,
              onChanged: (novoValor) {
                setState(() {
                  valorEscolhido = novoValor;
                });
              },
              items: lista.map((item) {
                return DropdownMenuItem(value: item, child: Text(item));
              }).toList(),
            ),
          )
        ]));
  }
}
