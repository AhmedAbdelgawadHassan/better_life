import 'package:better_life/ui/home/HomeMainScreen/Widgets/cancel&Reschdule_botton.dart';
import 'package:flutter/material.dart';

class sheduleItem extends StatelessWidget {
  const sheduleItem({super.key, required this.DoctorName, required this.Spaclist, required this.DoctorImage, required this.Date, required this.time, });
  final String DoctorName ;
  final String Spaclist ;
  final String DoctorImage;
  final String Date ;
  final String time ;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 220, 220, 220)),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        DoctorName,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      Text(
                        Spaclist,
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                        DoctorImage),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.calendar_month,
                        color: Colors.grey,
                        size: 20,
                      )),
                      Text(Date,style: TextStyle(color: const Color.fromARGB(255, 109, 109, 109),fontSize: 12,fontWeight: FontWeight.bold),)
                      ,SizedBox(width: 10,),
                      Icon(Icons.watch_later_outlined,color: Colors.grey,size: 20,),
                      Text(time,style: TextStyle(color: const Color.fromARGB(255, 109, 109, 109),fontSize: 12,fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Container(
                      width: 7,
                      height: 7,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle
                      )),
                      Text("Confirmed",style: TextStyle(color: const Color.fromARGB(255, 109, 109, 109),fontSize: 12,fontWeight: FontWeight.bold),),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Cancel_reschduleBotton(onpressed: (){}, text: "Cancel", containercolor: const Color.fromARGB(255, 226, 226, 226), textcolor: Colors.black)),
                  SizedBox(width: 10,),
                  Expanded(child: Cancel_reschduleBotton(onpressed: (){}, text: "Reschedule", containercolor: Color(0xff199A8E), textcolor:Colors.white,))
                ],

              )
            ],
          ),
        ));
  }
}
