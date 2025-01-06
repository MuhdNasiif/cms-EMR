import 'package:cms_emrgroup/features/druglist/adddrug.dart';
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
      appBar: AppBar(
        leading: CircleAvatar(
            backgroundColor: secondarycolor,
            child: Icon(
              Icons.chevron_left_rounded,
              size: 30,
              color: primarycolor,
            )),
        actions: [
          Icon(
            Icons.search,
            color: primarycolor,
            size: 30,
          )
        ],
        title: Center(
            child: Text(
          "Drug List",
          style: GoogleFonts.roboto(fontSize: 22, fontWeight: FontWeight.bold),
        )),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color.fromARGB(255, 129, 122, 122))),
                    child: ExpansionTile(
                      leading:
                          Image(image: AssetImage("assets/Vector (1).png")),
                      subtitle: Row(
                        children: [
                          Text(
                            "Prilosec",
                            style: GoogleFonts.roboto(
                                fontSize: 17,
                                color:
                                    const Color.fromARGB(255, 115, 108, 108)),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            "0",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "-",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: primarycolor),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "0",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "-",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: primarycolor),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "1",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "500",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "mg",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: primarycolor),
                          ),
                        ],
                      ),
                      collapsedIconColor: primarycolor,
                      iconColor: primarycolor,
                      title: Text(
                        "Omeparazole",
                        style: GoogleFonts.roboto(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 14, right: 20, bottom: 7),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Instruction",
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: primarycolor),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Nulla at tellus id nunc venenatis imperdiet. Fusce et mi at magna condimentum volutpat porttitor et nunc. Nunc ultricies nisi vehicula nisi venenatis, eu condimentummauris justo sagittis nisl, vel placerat neque dui at arcu. ")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
         
        ],
      ),
       floatingActionButton:FloatingActionButton(
          backgroundColor: primarycolor,
           shape: CircleBorder(),
           onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Adddrug()));
           },
           child: Icon(
             Icons.add,
             color: colorwhite,
             size: 35,
           ),
       ),
           floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          );
  }
}
