import 'package:flutter/material.dart';
import 'dasboard.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   title: Text("hhhhhhh"),
        // ),
        body: ListView(children: [
          Container(
            height: 100,
            width: 500,
            alignment: Alignment.bottomCenter,
            child: Text(
              "INFO STMIK AMIK BANDUNG",
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 430,
            width: 500,
            child: Image(
                image: AssetImage("images/foto1.png"), fit: BoxFit.contain),
          ),
          Container(
            height: 280,
            width: 500,
            padding: EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      hintText: "Masukan Nomor Pokok Mahasiswa",
                      labelText: "NPM",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Masukan Password",
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Dasboard();
                    }));
                  },
                  child: Text("Login"),
                )
              ],
            ),
          ),
        ]));
  }
}
