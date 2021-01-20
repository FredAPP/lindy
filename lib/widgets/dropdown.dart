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
      // appBar: AppBar(
      //   title: Text('Dropdown Menu'),
      // ),
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(232, 213, 173, 1)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(232, 213, 173, 1),

                // borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    canvasColor: Color.fromRGBO(232, 213, 173, 1),
                  ),
                  child: ButtonTheme(
                    splashColor: Color.fromRGBO(232, 213, 173, 1),
                    alignedDropdown: true,
                    buttonColor: Color.fromRGBO(232, 213, 173, 1),
                    child: DropdownButton(
                      hint: Text('Select Difficulty'),
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36,
                      isExpanded: true,
                      style: TextStyle(
                        color: Color.fromRGBO(60, 65, 133, 1),
                        fontSize: 16,
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
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
