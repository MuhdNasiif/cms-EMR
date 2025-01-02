import 'package:cms_emrgroup/utils/app_color.dart';
import 'package:flutter/material.dart';

class Drug extends StatefulWidget {
  const Drug({super.key});

  @override
  State<Drug> createState() => _DrugState();
}

class _DrugState extends State<Drug> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ExpansionTile(leading: Image(image: AssetImage("assets/Vector (1).png")),
          iconColor:primarycolor,title: Text("Omeparazole"),
          children: [
            Text("sjfj")
          ],)
        ],
      ),
    );
  }
}