
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seminarios_camara_web/Camara.dart';
import 'package:seminarios_camara_web/Service.dart';

  class RedirectPage extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text("Seminarios"),
  centerTitle: true,
  ),
  backgroundColor: Colors.white,
  body: ListView(
  padding: const EdgeInsets.all(10.0),
  children: <Widget>[
  ListTile(
  title: MaterialButton(
  onPressed: () {
  Navigator.push(context, MaterialPageRoute(builder: (context) => CameraPage())
  );
  },
  child: Text(
  "Camara",
  style: TextStyle(color: Colors.white),
  ),
  height: 40.0,
  color: Colors.blue,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10.0),
  )),
  ),
  ListTile(
  title: MaterialButton(
  onPressed: () {
  Navigator.push(context, MaterialPageRoute(builder: (context) => WebServicePage())
  );
  },
  child: Text(
  "Web Service",
  style: TextStyle(color: Colors.white),
  ),
  height: 40.0,
  color: Colors.blue,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10.0),
  )),
  )
  ],
  ),
  );
  }
  }
