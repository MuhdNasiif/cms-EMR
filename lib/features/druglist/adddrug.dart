import 'package:cms_emrgroup/components/app_bottom.dart';
import 'package:cms_emrgroup/features/druglist/drug.dart';
import 'package:cms_emrgroup/features/druglist/editdrug.dart';
import 'package:cms_emrgroup/features/settings_page/settings_page.dart';
import 'package:cms_emrgroup/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Adddrug extends StatefulWidget {
  const Adddrug({super.key});

  @override
  State<Adddrug> createState() => _AdddrugState();
}

class _AdddrugState extends State<Adddrug> {
  String dropdownValue = "mg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Drug()));
          },
          child: CircleAvatar(
            backgroundColor: secondarycolor,
            child: Icon(
              Icons.chevron_left_rounded,
              size: 30,
              color: primarycolor,
            ),
          ),
        ),
        title: Center(
          child: Text(
            "Add Drug",
            style:
                GoogleFonts.roboto(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              "Drug Name",
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter drug name",
                  hintStyle: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 118, 113, 113)),
                  fillColor: secondarycolor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Text(
              "Generic Name",
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter generic name",
                  hintStyle: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 118, 113, 113)),
                  fillColor: secondarycolor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Text(
              "Frequency",
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: secondarycolor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "0",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "-",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: primarycolor),
                ),
                SizedBox(width: 5),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: secondarycolor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "0",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "-",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: primarycolor),
                ),
                SizedBox(width: 5),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: secondarycolor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "0",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Dosage",
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 45,
                  width: 170,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter dosage",
                      hintStyle: TextStyle(fontSize: 18),
                      fillColor: secondarycolor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 45,
                  width: 87,
                  decoration: BoxDecoration(
                    color: secondarycolor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: Icon(
                        Icons.arrow_drop_down_sharp,
                        color: primarycolor,
                        size: 30,
                      ),
                      elevation: 16,
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>['mg', 'kg', 'g', 'lb']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Instruction",
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 150,
              width: 400,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "instruction",
                  hintStyle: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 118, 113, 113)),
                  fillColor: secondarycolor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Editdrug()));
                },
                child: Container(
                  height: 37,
                  width: 98,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: primarycolor,
                  ),
                  child: Center(
                      child: Text(
                    "SUBMIT",
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: colorwhite),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
