import 'package:cms_emrgroup/features/doctors_page/complaints.dart';
import 'package:cms_emrgroup/features/doctors_page/observation.dart';
import 'package:flutter/material.dart';

class DoctorsPage extends StatelessWidget {
  const DoctorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Complaints(),));
              },
              child: Container(
                width: 150,
                height: 50,
                color: Colors.amber,
                child: Center(child: Text("Complaints")),
              ),
            ),
          ),
            Center(
            child: InkWell(
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Observations(),));
              },
              child: Container(
                width: 150,
                height: 50,
                color: Colors.amber,
                child: Center(child: Text("Observation")),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}

