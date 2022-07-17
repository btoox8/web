import 'package:flutter/material.dart';
import 'package:web_app/shared/app_colors.dart';

/*
  * naming your class is very important not use reserved words
  * using if & MQ to deal with responsive problem after get ideal size
  * from chrom, F12 , use mobile size then resize to see where our 
    design will be break then use this value on MQ
*/

class MyNotification extends StatefulWidget {
  MyNotification({Key? key}) : super(key: key);

  @override
  State<MyNotification> createState() => _MyNotificationState();
}

class _MyNotificationState extends State<MyNotification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.mainColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      child: Row(
        
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                
                Text.rich(
                  TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColor.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'hello world',
                        ),
                        TextSpan(
                          text: ' new web site',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'welcome welcome welcome welcome \nwelcome welcome welcome welcome\nwelcome welcome welcome \nwelcome welcome welcome welcome ',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColor.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Read More..',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColor.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ]),
          // deal with Image after ideal size from chrom
          // spacer, becareful (we put it inside if condition)
          // you can change row to column and use image as item on it..
          if (MediaQuery.of(context).size.width >= 673) ...{
            Spacer(),
            Image.asset(
              'assets/disk_image.png',
              height: 150,
            ),
          },
        ],
      ),
    );
  }
}
