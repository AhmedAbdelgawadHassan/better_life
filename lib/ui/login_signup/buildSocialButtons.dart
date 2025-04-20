import 'package:flutter/material.dart';

class buildSocialButtons extends StatelessWidget {
final String text;
final String icon;
buildSocialButtons({required this.text, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
        onPressed: (){},
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 20,
              child:  Image.asset(icon,width: 25,height: 25,),),
            Center(
                child: Text(text,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                  ),)),
          ],
        ),
      ),
    );
  }
}
