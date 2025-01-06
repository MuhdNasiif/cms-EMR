import 'package:cms_emrgroup/utils/app_color.dart';
import 'package:cms_emrgroup/widgets/observation/popup_btn.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Observations extends StatefulWidget {
  const Observations({super.key});

  @override
  State<Observations> createState() => _ObservationState();
}

class _ObservationState extends State<Observations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: primarycolor,
        ),
        title: const Text(
          "Observation",
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
      floatingActionButton: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return Obspopup_btnobserv();
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
                "Swalling",
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










