import 'package:cms_emrgroup/utils/app_color.dart';
import 'package:cms_emrgroup/widgets/observation/alertone.dart';
import 'package:cms_emrgroup/widgets/observation/alerttwo.dart';
import 'package:flutter/material.dart';

class Obspopup_btnobserv extends StatelessWidget{
  const Obspopup_btnobserv({super.key});
  
  
  @override
  Widget build(BuildContext context) {
     return AlertDialog(
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     InkWell(
                      onTap: () {
                        showDialog(context: context, 
                        builder: (context) {
                          return ObsAlertone();
                        },);
                      },
                       child: Container(
                                           width: 200,
                                           height: 50,
                                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: primarycolor,),
                                           child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add,color: colorwhite,), 
                          SizedBox(width: 10,),
                          Text("Add complaints",style: TextStyle(color: colorwhite),)],
                        ),
                                           ),
                                         ),
                     ),
                  SizedBox(height: 10,),
                   InkWell(
                    onTap: () {
                       showDialog(context: context, 
                       builder: (context) {
                         return ObsAlerttwo();
                       },);
                    },
                     child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: primarycolor,),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.edit,color: colorwhite,), 
                          SizedBox(width: 10,),
                          Text("Edit",style: TextStyle(color: colorwhite),)],
                        ),
                      ),
                                       ),
                   ),
                   SizedBox(height: 80,),
                  ],
                ),
                
                backgroundColor: Colors.transparent,
              );
  }
}
