import 'package:cms_emrgroup/features/treatment_list/treatment_list.dart';
import 'package:cms_emrgroup/models/emr_list.dart';
import 'package:flutter/material.dart';

class EmrListCard extends StatelessWidget {
  const EmrListCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: items.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: GestureDetector(
              onTap: () {
                if (index == 0) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TreatmentList()));
                }
              },
              child: Container(
                height: 109,
                width: 155,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    image:
                        DecorationImage(image: AssetImage(items[index].image))),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 45),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(items[index].name),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
