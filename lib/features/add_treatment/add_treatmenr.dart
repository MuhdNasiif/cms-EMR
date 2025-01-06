import 'package:cms_emrgroup/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTreatment extends StatelessWidget {
  const AddTreatment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Treatment'),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Treatment Name',
                style: GoogleFonts.roboto(
                    fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: secondarycolor,
                  filled: true,
                  hintText: 'name',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Treatment Code',
                style: GoogleFonts.roboto(
                    fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: secondarycolor,
                  filled: true,
                  hintText: 'code',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Charge',
                style: GoogleFonts.roboto(
                    fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '₹',
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: primarycolor),
                  ),
                  SizedBox(
                    width: 145,
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: secondarycolor,
                        filled: true,
                        hintText: 'amount',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Duration',
                style: GoogleFonts.roboto(
                    fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.access_time_outlined,
                    size: 20,
                    color: primarycolor,
                  ),
                  SizedBox(
                    width: 145,
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: secondarycolor,
                        filled: true,
                        hintText: 'duration',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 37,
                  width: 98,
                  decoration: BoxDecoration(
                    color: primarycolor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'SUBMIT',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        )));
  }
}
