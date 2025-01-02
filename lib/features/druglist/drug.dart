import 'package:cms_emrgroup/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          collapsedShape: CircleBorder(),
          subtitle: Row(
            children: [
              Text("Prilosec",style: GoogleFonts.roboto(fontSize: 17,color: Colors.grey),),
              Text("data")
            ],
          ),
          iconColor:primarycolor,title: Text("Omeparazole",style:GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.w500),),
          children: [
            Text("sjfjdddsvdsv")
          ],)
        ],
      ),
    );
  }
}