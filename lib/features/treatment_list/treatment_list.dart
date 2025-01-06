import 'package:cms_emrgroup/features/add_treatment/add_treatmenr.dart';
import 'package:cms_emrgroup/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TreatmentList extends StatelessWidget {
  const TreatmentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Treatment List'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Card(
                    child: Container(
                      height: 105,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(children: [
                        Container(
                            height: 57,
                            width: MediaQuery.of(context).size.width,
                            color: secondarycolor,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Acne scar Surgery',
                                    style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: primarycolor),
                                  ),
                                  Text(
                                    '0023',
                                    style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: primarycolor),
                                  )
                                ],
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Spacer(),
                              Text(
                                '₹',
                                style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: primarycolor),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '10000',
                                style: GoogleFonts.roboto(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 9,
                              ),
                              Icon(
                                Icons.access_time_outlined,
                                size: 20,
                                color: primarycolor,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('4 Hours',
                                  style: GoogleFonts.roboto(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddTreatment()));
        },
        backgroundColor: primarycolor,
        child: Icon(Icons.add, color: colorwhite),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
