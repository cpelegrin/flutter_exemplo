import 'package:flutter/material.dart';

class NextPage2 extends StatefulWidget {
  @override
  _NextPage2State createState() => _NextPage2State();
}

class _NextPage2State extends State<NextPage2> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Próxima página"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(flag ? "Estado 1": "Outro Estado"),
              FlatButton(
                child: Text("Alterar Estado"),
                onPressed: (){
                  setState(() {
                    flag = !flag;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
