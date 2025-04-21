// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Recentdoctoritem extends StatelessWidget {
  const Recentdoctoritem({super.key, required this.DoctorName, required this.DoctorImage});
  final String DoctorName ;
  final String DoctorImage;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 90,
          height: 90,
           decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(DoctorImage))
           ),
        ),
      const   SizedBox(height: 5,),
         Text(DoctorName,style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,

        ),),
      ],
    );
  }
}