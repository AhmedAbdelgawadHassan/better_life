import 'package:better_life/ui/home/HomeMainScreen/Widgets/DoctorDetailedItem.dart';
import 'package:flutter/material.dart';

class Doctordetailsscreen extends StatelessWidget {
  const Doctordetailsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 27,
                color: Colors.black,
              )),
          title: const Text(
            "Doctor",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
        ),
        body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(children: [
            DoctorDetailedItem(
              DoctorImage:
                  "assets/images/homeScreen/pexels-cedric-fauntleroy-4270371@2x.png",
              DoctorName: "Dr ALi Ebrahim",
              DoctorSpecality: "chardiologist",
              DoctorRating: "4.7",
              distance: "800",
            ),
          ]),
        ),
      ),
    );
  }
}
