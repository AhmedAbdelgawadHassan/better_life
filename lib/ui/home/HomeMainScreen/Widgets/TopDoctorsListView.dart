import 'package:better_life/ui/home/HomeMainScreen/Widgets/DoctorItem.dart';
import 'package:flutter/material.dart';

class Topdoctorslistview extends StatelessWidget {
  const Topdoctorslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 10),
            child:  DoctorItem(
                DoctorImage:
                    "assets/images/homeScreen/pexels-cedric-fauntleroy-4270371@2x.png",
                DoctorName: "Dr ALi Ebrahim",
                DoctorSpeciality: "chardiologist",
                DoctorRating: "4.7",
                distance: "800"),
          );
        },
      ),
    );
  }
}
