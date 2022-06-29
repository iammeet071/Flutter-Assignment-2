// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailsHeading extends StatefulWidget {
  const DetailsHeading({Key? key}) : super(key: key);

  @override
  State<DetailsHeading> createState() => _DetailsHeadingState();
}

class _DetailsHeadingState extends State<DetailsHeading> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, left: 10, bottom: 50),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Color.fromARGB(161, 0, 0, 0),
                  width: 1,
                  style: BorderStyle.solid))),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      height: 20,
                      width: 10,
                    ),
                    Image.asset(
                      "assets/images/hdfc.jpg",
                      width: 25,
                      height: 23,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "HDFC Bank",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Text(
                  "₹ 50,000",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 8, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Saving A/C",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "(xx2652)",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  '2.5% p.a.',
                  style: TextStyle(
                      fontSize: 14,
                      color: HexColor("#8ab45f"),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
