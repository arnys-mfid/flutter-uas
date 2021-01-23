import 'package:flutter/material.dart';
import 'main_page.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainAppsClone(),
    ));

class MainAppsClone extends StatefulWidget {
  @override
  MainAppCloneState createState() {
    return new MainAppCloneState();
  }
}

class MainAppCloneState extends State<MainAppsClone> {
  onButtonTap(Widget page) {
    Navigator.push(
        context, MaterialPageRoute(builder: (BuildContext context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Apps Clone"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            onButtonTap(MoviesConceptPage())
          ],
        ),
      ),
    );
  }
}
