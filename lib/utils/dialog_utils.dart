import 'package:flutter/material.dart';

class DialogUtils {
  static void showSuccessDialog({
    required BuildContext context,
    required String title,
    required String message,
    required String buttonText,
    required String routeName,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Container(
            width: 327,
            height: 401,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F8FF),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.check,color: Color(0xFF199A8E), size: 50),
                ),
                SizedBox(height: 20),
                Text(
                  title,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10),
                Text(
                  message,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushReplacementNamed(context, routeName);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF199A8E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(buttonText, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
