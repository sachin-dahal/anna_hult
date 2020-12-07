import 'package:anna_hult/common/ui/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnalyticsWidget extends StatelessWidget {
  final Color color;
  final double averageNum;
  //final int goodsSold;
  final int givenNumber;
  final String title;
  final IconData icon;

  AnalyticsWidget({
    this.color,
    this.averageNum,
    //this.goodsSold,
    this.givenNumber,
    this.title,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: sPadding,
      height: 140.0,
      width: 110.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                icon,
                size: 18.0,
                color: Colors.blue[100],
              ),
            ],
          ),
          Text(
            "${averageNum.toString()}%",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "${givenNumber.toString()}",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
              ),
            ),
          ),
          SizedBox(child: Divider(color: Colors.white)),
          Text(
            "$title",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 10.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
