import 'package:flutter/material.dart';
import 'package:flutterpp/root_page.dart';
import 'package:flutterpp/authentication.dart';
import 'package:nice_button/nice_button.dart';

void main() => runApp(MaterialApp(
    home: FirstRoute(),
)
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: new ThemeData(
          primarySwatch: Colors.red,
        ),
        //home: new RootPage(auth: new Auth())
        home: new RootPage(auth: new Auth())

    );
  }
}
class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text( "Poke Code"),
      ),
      body: new Container(
        decoration: new BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/pokeCode.png'),
              fit: BoxFit.cover),
        ),
        alignment: Alignment.bottomCenter,
        child: NiceButton(
          width: 255,
          elevation: 5,
          radius: 52.0,
          text: "Let's Started",
          background: Colors.lightBlue,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          },
        ),
      ),
    );
  }
}

