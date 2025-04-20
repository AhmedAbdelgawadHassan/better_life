import 'package:flutter/material.dart';

class Distancefromdoctor extends StatelessWidget {
  const Distancefromdoctor({super.key, required this.distance});
  final String distance;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.location_on, color: Colors.grey, size: 15,),
        FittedBox(child: SizedBox(
          width: 80,
          child: Text("${distance}m away",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style:  TextStyle(color:  Colors.grey,fontSize: 13,fontWeight: FontWeight.bold),))),
      ],
    );
  }
}