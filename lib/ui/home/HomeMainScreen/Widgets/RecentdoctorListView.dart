import 'package:better_life/ui/home/HomeMainScreen/Widgets/RecentDoctorItem.dart';
import 'package:flutter/material.dart';

class RecentdoctorListView extends StatelessWidget {
  const RecentdoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 5),
            child:  Recentdoctoritem(
                DoctorName: "Dr. Amir",
                DoctorImage: "assets/images/homeScreen/Mask Group.png"),
          );
        },
      ),
    );
  }
}
