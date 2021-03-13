import 'package:flutter/material.dart';
import 'package:lindyapp/widgets/articles.dart';
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
                    BorderRadius.circular(15), 
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
                    Articles(),
                    Articles(),
                    Articles(),
                    Articles(),
                    Articles(),
                    Articles(),
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
