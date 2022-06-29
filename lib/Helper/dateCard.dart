// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DateCard extends StatefulWidget {
  const DateCard({Key? key}) : super(key: key);

  @override
  State<DateCard> createState() => _DateCardState();
}

class _DateCardState extends State<DateCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: Color.fromARGB(230, 206, 206, 206),
                    width: 1,
                    style: BorderStyle.solid))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('10/02/2022'),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'ATM Withdrawal',
                style: TextStyle(
                    color: Color.fromARGB(195, 0, 0, 0),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Text(
                    'Rs 2,500',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.north_east,
                    color: Colors.red,
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'ATM Deposit',
                style: TextStyle(
                    color: Color.fromARGB(195, 0, 0, 0),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Text(
                    'Rs 2,500',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.south_west,
                    color: Colors.green,
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          )
        ]),
      ),
    );
  }
}
