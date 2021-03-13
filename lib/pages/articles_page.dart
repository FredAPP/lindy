import 'package:flutter/material.dart';
import 'package:lindyapp/widgets/lindyappbar.dart';

class ArticlesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    // var height = screenSize.height;
    var width = screenSize.width;
    var heightBody = screenSize.height - 156; //Tamanho do body

    return SafeArea(
      child: Scaffold(
        //Aqui é para preencher o vazio no fundo entre a barra e a página
        backgroundColor: Color.fromRGBO(60, 65, 133, 1),
        body: Column(
          children: [
            LindyAppBar(),
            Container(
              width: width,
              height: heightBody,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(5), //Colocar a borda interna
                color: Color.fromRGBO(232, 213, 173, 1),
                border: Border.all(
                  color: Color.fromRGBO(60, 65, 133, 1),
                  width: width * 0.025,
                ),
              ),
              child: Container(
                height: heightBody,
                child: ListView(
                  children: <Widget>[
                    lindyCard(context),
                    lindyCard(context),
                    lindyCard(context),
                    lindyCard(context),
                    lindyCard(context),
                    lindyCard(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget lindyCard(context) {
  //remover context
  var screenSize = MediaQuery.of(context).size;
  var height = screenSize.height;
  var width = screenSize.width;
  // var heightBody = screenSize.height - 160;
  return Card(
    margin: EdgeInsets.symmetric(
      vertical: 10,
      horizontal: 15,
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Image(
                  image: AssetImage("assets/images/background.jpeg"),
                  height: height * 0.12,
                  width: width * 0.20,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Column(
                    children: [
                      Text(
                        "Swing Dance Baby!",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(60, 65, 133, 1)),
                      ),
                      Text(
                        "Autor: Frankie",
                        style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            color: Color.fromRGBO(60, 65, 133, 1)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "Swing Dance Baby! Swing Dance Baby! Swing Dance Baby! Swing Dance Baby! Swing Dance Baby! Swing Dance Baby! Swing Dance Baby! Swing Dance Baby!",
              textAlign: TextAlign.justify,
              style: TextStyle(color: Color.fromRGBO(60, 65, 133, 1)),
            ),
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
  );
}
