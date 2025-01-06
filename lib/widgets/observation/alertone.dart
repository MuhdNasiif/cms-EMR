import 'package:cms_emrgroup/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ObsAlertone extends StatelessWidget {
  const ObsAlertone({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: colorwhite,
      content: SizedBox(
        width: 400,
        height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Add Observation",
              style:
                  GoogleFonts.roboto(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Observation Name",
              style:
                  GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                width: 250,
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "name"),
                )),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 70,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: primarycolor),
                  child: Center(
                    child: Text(
                      "Cancel",
                      style: TextStyle(color: colorwhite),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 70,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: primarycolor),
                  child: Center(
                    child: Text(
                      "SUBMIT",
                      style: TextStyle(color: colorwhite),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}