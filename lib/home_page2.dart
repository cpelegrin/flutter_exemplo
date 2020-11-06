import 'package:flutter/material.dart';
import 'package:rounded_letter/rounded_letter.dart';
import 'package:rounded_letter/shape_type.dart';
import 'package:url_launcher/url_launcher.dart';

import 'next_page2.dart';

class HomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Título da página"),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: RoundedLetter(
                  shapeSize: 56,
                  fontBold: true,
                  text: "XX",
                  shapeColor: Theme.of(context).accentColor,
                  shapeType: ShapeType.circle,
                ),
                accountName: Text(
                  "Teste de Flutter",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text("teste@teste.com.br"),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://api.androidhive.info/images/nav-menu-header-bg.jpg"),
                        fit: BoxFit.fill)),
              ),
              Padding(padding: const EdgeInsets.only(top: 8)),
              ListTile(
                leading: Icon(Icons.business_center),
                title: Text("Abrir o Google"),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  _launchURL();
                },
              ),
              Divider(
                height: 15,
                thickness: 2,
              ),
              Padding(padding: const EdgeInsets.only(top: 8)),
              ListTile(
                leading: Icon(Icons.business_center),
                title: Text("Abrir o Google"),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  _launchURL();
                },
              ),
            ],
          ),
        ),
      ),
      body: _body(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print("cliquei");
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
              return NextPage2();
            }));
          }),
    );
  }

  _launchURL() async {
    const url = 'https://www.google.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _body() {
    List<String> lista = List();
    lista.add("a");
    lista.add("b");
    lista.add("c");
    return Container(
      child: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              child: Column(
                children: [
                  Text(lista[index]),
                  Text("Elemento 2"),
                  Row(
                    children: [
                      Text("Elemento em linha 1"),
                      Padding(padding: const EdgeInsets.only(right: 8)),
                      Text("Elemento em linha 2"),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
