// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:transaction_app/Helper/filter.dart';

class DetailsBody extends StatefulWidget {
  const DetailsBody({Key? key}) : super(key: key);

  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, bottom: 10, right: 20),
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: Color.fromARGB(158, 0, 0, 0),
                    width: 1,
                    style: BorderStyle.solid))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Last 10 Transactions',
                  style: TextStyle(
                    color: Color.fromARGB(185, 0, 0, 0),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      filterButton();
                    },
                    icon: Icon(Icons.filter_alt))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: 170,
                height: 38,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Latest to Oldest",
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.w400),
                    ),
                    IconButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () {},
                        icon: Icon(
                          Icons.clear,
                          size: 16,
                        )),
                  ],
                ),
                decoration: BoxDecoration(
                    color: HexColor("#eef0fa"),
                    border: Border.all(
                      color: Color.fromARGB(255, 231, 228, 228),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
            SizedBox(
              height: 45,
            )
          ],
        ),
      ),
    );
  }

  void filterButton() {
    showBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.6,
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.clear)),
                Text("Sort & Filter"),
              ],
            ),
          );
        });
  }
}
