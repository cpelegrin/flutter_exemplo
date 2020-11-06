import 'package:flutter/material.dart';
import 'package:rounded_letter/rounded_letter.dart';
import 'package:rounded_letter/shape_type.dart';
import 'package:url_launcher/url_launcher.dart';

import 'next_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página inicial"), //Textos também são widgets
      ),
      drawer: Drawer(
        // Envolver com safeArea para retirar a barra em cima
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: RoundedLetter(
                shapeSize: 56,
                fontBold: true,
                text: "FL",
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
            Padding(padding: const EdgeInsets.only(left: 8)),
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
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: ListView(
            children: [
              Card(
                child: Container(
                  child: Column(
                    children: [
                      Text("elemento 1"),
                      Text("elemento 2"),
                      Row(
                        children: [
                          Text("elemento 1 da linha"),
                          Padding(padding: const EdgeInsets.only(left: 8)),
                          Text("elemento 2 da linha"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  child: Column(
                    children: [
                      Text("elemento 1"),
                      Text("elemento 2"),
                      Row(
                        children: [
                          Text("elemento 1 da linha"),
                          Padding(padding: const EdgeInsets.only(left: 8)),
                          Text("elemento 2 da linha"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
            return NextPage();
          }));
        },
      ),
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
}
