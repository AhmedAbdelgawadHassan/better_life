import 'package:better_life/ui/home/profileScreen/buildProfileItems.dart';
import 'package:better_life/ui/home/profileScreen/profileData.dart';
import 'package:better_life/ui/home/profileScreen/showLogOutDialog.dart';
import 'package:flutter/material.dart';

class profileScreen extends StatelessWidget {
  static const String routeName = 'profile-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF199A8E),
      body: Column(
        children: [
          SizedBox(height:60,),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage("assetName"), // هنا هيبقي في صورة اليوزر
          ),
          SizedBox(height: 12,),
          Text("User",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),), // هنا هيبقي في اسم اليوزر
          SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [ // هنا هنبي نحط الداتا دي من ال backend لما نمل ال API دي مجرد داتا مؤقته
              profileData(value: "215bpm", icon: Icons.favorite, label: "Heart rate"),
              profileData(value: "756cal", icon: Icons.local_fire_department, label: "Calories"),
              profileData(value: "103lbs", icon: Icons.fitness_center, label: "weight"),
            ],
          ),
          SizedBox(height: 32,),
          Expanded(
            child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                  ),
              child: ListView(
                children: [
                  buildProfileItems(Icons.bookmark, "MySaved", (){}),
                  buildProfileItems(Icons.note_alt_outlined, "Appointment", (){}),
                  buildProfileItems(Icons.payment, "Payment Method", (){}),
                  buildProfileItems(Icons.help_center_outlined, "FAQs", (){}),
                  buildProfileItems(Icons.settings, "Settings", (){}),
                  buildProfileItems(Icons.logout, "Logout", (){
                    LogOutDialog.showLogOutDialog(context);
                  },isLogout: true
                  ),
                ],
              ),
          ),
          ),
       ],
      ),
    );
  }
}
