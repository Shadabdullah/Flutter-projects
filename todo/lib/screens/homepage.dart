import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';

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
        backgroundColor: Color(0xFF240A34),
        centerTitle: true,
        title: Text(
          'APRIL 27 2024',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Color(0xFF240A34),
                height: 200,
                width: double.infinity,
                child: Row(children: []),
              ),
              Positioned(
                top: 200,
                child: Container(
                  color: Colors.white,
                  width: 300,
                  height: 400,
                  child: Row(children: []),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
