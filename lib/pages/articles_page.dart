import 'package:flutter/material.dart';

class ArticlesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var height = screenSize.height;
    var width = screenSize.width;

    return SafeArea(
      child: Scaffold(
        //Aqui é para preencher o vazio no fundo entre a barra e a página
        backgroundColor: Color.fromRGBO(60, 65, 133, 1),
        body: Stack(
          children: [
            Container(
              width: width,
              height: height - 90,
              decoration: BoxDecoration(
                color: Color.fromRGBO(232, 213, 173, 1),
                border: Border.all(
                  color: Color.fromRGBO(60, 65, 133, 1),
                  width: width * 0.025,
                ),
              ),
            ),
            // Inicio card do artigo
            Column(
              children: <Widget>[
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Image(
                                image:
                                    AssetImage("assets/images/background.jpeg"),
                                height: height * 0.12,
                                width: width * 0.20,
                                fit: BoxFit.fitWidth,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                                child: Column(
                                  children: [
                                    Text(
                                      "Swing Dance Baby!",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromRGBO(60, 65, 133, 1)),
                                    ),
                                    Text(
                                      "Autor: Frankie",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontStyle: FontStyle.italic,
                                          color:
                                              Color.fromRGBO(60, 65, 133, 1)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Swing Dance Baby! Swing Dance Baby! Swing Dance Baby! Swing Dance Baby! Swing Dance Baby! Swing Dance Baby! Swing Dance Baby! Swing Dance Baby!",
                          style:
                              TextStyle(color: Color.fromRGBO(60, 65, 133, 1)),
                        ),
                      ],
                    ),
                  ),
                  color: Color.fromRGBO(232, 213, 173, 1),
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: Color.fromRGBO(60, 65, 133, 1),
                        width: 1,
                      )),
                  elevation: 5,
                  margin: EdgeInsets.all(20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
