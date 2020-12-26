import 'package:flutter/material.dart';
import 'ListPage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'MapPage.dart';

//Lithion-green(#43CEA2) and (#D1FCFA)
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF198BAA),
      appBar: AppBar(
        iconTheme: IconThemeData(color: HexColor("#43CEA2")),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
          child: Stack(
        children: [
          MapPage(),
          Center(
              child: FlatButton(
            child: Text(
              'Battery Available Near you ?',
            ),
            color: Colors.white,
            textColor: HexColor("#43CEA2"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListPage();
              }));
            },
          )),
        ],
      )),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  'drawer header',
                  style: TextStyle(color: HexColor("#43CEA2")),
                ),
              ),
              decoration: BoxDecoration(
                color: HexColor("#D1FCFA"),
              ),
            ),
            ListTile(
              title: Text(
                'item 1',
                style: TextStyle(color: HexColor("#43CEA2")),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'item 2',
                style: TextStyle(color: HexColor("#43CEA2")),
              ),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
