import 'package:flutter/material.dart';

//Lithion-green(#43CEA2) and (#D1FCFA)
import 'package:hexcolor/hexcolor.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text('MapPro'),
          backgroundColor: HexColor("#43CEA2"),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text("one"),
              onTap: () {},
            ),
            ListTile(
              title: Text("two"),
              onTap: () {},
            ),
            ListTile(
              title: Text("three"),
              onTap: () {},
            ),
            ListTile(
              title: Text("four"),
              onTap: () {},
            ),
            ListTile(
              title: Text("five"),
              onTap: () {},
            ),
            ListTile(
              title: Text("six"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
