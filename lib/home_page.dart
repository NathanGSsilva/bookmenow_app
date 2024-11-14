// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BookMeNow"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),

      backgroundColor: Colors.white,
      drawer: Drawer(
        
        child: ListView(
          children: [
            SizedBox(
              height: 100,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.orange),
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Text("Olá, Nathan",
                 style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.login),
              title: Text("Login"),
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text("Serviços"),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Dúvidas"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Sobre o BookMeNow"),
            )
          ],
        ),
      ),
    );
  }
}