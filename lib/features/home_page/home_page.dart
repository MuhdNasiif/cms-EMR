import 'package:cms_emrgroup/models/emr_list.dart';
import 'package:cms_emrgroup/widgets/emr_list_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EMR',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Electronic Medical Records',
              style:
                  GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            EmrListCard()
          ],
        ),
      ),
    );
  }
}
