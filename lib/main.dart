import 'package:custom_components_flutter/src/components/CustomButtons.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom components flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, CustomStyle> style = {
    "buttonStyle": CustomStyle(
      fontColor: Colors.amber,
      backgroundColor: Colors.pink,
      height: 100,
      width: 100,
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          BasicButton(
            label: "Meu botão de teste",
            isDesabled: false,
            onPressed: () {},
            style: style['buttonStyle'],
          ),
        ],
      ),
    );
  }
}
