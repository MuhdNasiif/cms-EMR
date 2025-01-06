import 'package:cms_emrgroup/components/app_bottom.dart';
import 'package:cms_emrgroup/utils/app_color.dart';
import 'package:cms_emrgroup/widgets/alertboxwidgets/alertboxcontainer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InvestigationPage extends StatefulWidget {
  const InvestigationPage({super.key});

  @override
  State<InvestigationPage> createState() => _InvestigationPageState();
}

class _InvestigationPageState extends State<InvestigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_outlined,color: primarycolor,size: 25,),
        title: Center(child: Text("Investigation",style:GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black))),
        actions: [
          Icon(Icons.search,color: primarycolor,size: 25,),
          SizedBox(width: 16,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10,right: 5,left: 5,top: 10),
                  child: Container(
                    height: 57,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      color:colorwhite ,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(blurRadius: 2,color: Colors.grey)
                      ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("X RAY",style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w500,color: colorblack),)),
                    ),
                  ),
                );
              },),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: primarycolor,
        onPressed: () {
        showDialog(
             context: context,
             builder: (context) {
               return AlertDialog(
                alignment: Alignment.bottomCenter,
                backgroundColor: Colors.transparent,
                content: 
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context, 
                            builder: (context) {
                              return AlertDialog(
                                alignment: Alignment.center,
                                backgroundColor: Colors.transparent,
                                content: Detailcontainer(txt:"Add Investigation", txt2: 'Add Investigation', ok: 'UPDATE',)
                              );
                            },);
                        },
                        child: Container(
                          width: 140,
                          height: 40,
                          decoration: BoxDecoration(
                            color: primarycolor,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add,color: colorwhite,size: 25,),
                              SizedBox(width: 5,),
                              Text("Add Complaints",style: GoogleFonts.roboto(fontSize: 12,fontWeight: FontWeight.w600,color: colorwhite),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context, 
                            builder: (context) {
                              return AlertDialog(
                                alignment: Alignment.center,
                                backgroundColor: Colors.transparent,
                                content: Detailcontainer(txt: "Edit Investigation", txt2: 'Add Investigation',ok: 'UPDATE')
                              );
                            },);
                        },
                        child: Container(
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                            color: primarycolor,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.edit,color: colorwhite,size: 20,),
                              SizedBox(width: 5,),
                              Text("Edit",style: GoogleFonts.roboto(fontSize: 12,fontWeight: FontWeight.w600,color: colorwhite),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
               ); 
             },);
      },
      child: Icon(Icons.add,color: colorwhite,size: 35,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
