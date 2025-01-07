import 'package:cms_emrgroup/utils/app_color.dart';
import 'package:cms_emrgroup/widgets/complaints/popup_btncom.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Complaints extends StatefulWidget {
  const Complaints({super.key});

  @override
  State<Complaints> createState() => _ObservationState();
}

class _ObservationState extends State<Complaints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: primarycolor,
        ),
        title: const Text(
          "Complaints",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: const [
          Icon(
            Icons.search_rounded,
            color: primarycolor,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Name_card(),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 5,
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return Popup_btnobserv ();
            },
          );
        },
        child: CircleAvatar(
          radius: 30,
          backgroundColor: primarycolor,
          child: Center(
            child: Icon(
              Icons.add,
              size: 45,
              color: colorwhite,
            ),
          ),
        ),
      ),
    );
  }
}

//name card custom
class Name_card extends StatelessWidget {
  const Name_card({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 50,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "UTI",
                style: GoogleFonts.roboto(
                    fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}










