import 'package:cms_emrgroup/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Detailcontainer extends StatelessWidget {
  const Detailcontainer({super.key, required this.txt, required this.txt2, required this.ok,});

  final String txt;
  final String txt2;
  final String ok;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 286,
      decoration: BoxDecoration(
          color: colorwhite, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              txt,
              style:
                  GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              txt2,
              style:
                  GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 236, 235, 235),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: "name",
                  hintStyle: GoogleFonts.roboto(
                      fontSize: 11, fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 25,
                  width: 68,
                  decoration: BoxDecoration(
                      color: primarycolor,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text(
                      "CANCEL",
                      style: GoogleFonts.roboto(
                          color: colorwhite,
                          fontSize: 11,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 25,
                  width: 68,
                  decoration: BoxDecoration(
                      color: primarycolor,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text(
                      ok,
                      style: GoogleFonts.roboto(
                          color: colorwhite,
                          fontSize: 11,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
