// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:convert';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:transaction_app/Screens/bankDetails.dart';

class BankCard extends StatefulWidget {
  const BankCard({Key? key}) : super(key: key);

  @override
  State<BankCard> createState() => _BankCardState();
}

class _BankCardState extends State<BankCard> {
  @override
  void initState() {
    // TODO: implement initState
    readJson();
    super.initState();
  }

  List items = [];

  // Fetch content from the json file
  Future<List> readJson() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response);

    items = data["bankname"];
    print(items);
    print(items[0]["image"]);
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: 30, left: 10),
              height: 200,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Colors.grey,
                          width: 1,
                          style: BorderStyle.solid))),
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        height: 20,
                        width: 10,
                      ),
                      Image.asset(
                        items[index]["image"].toString(),
                        width: 25,
                        height: 23,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        items[index]["name"].toString(),
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 8, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          items[index]["type"].toString(),
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Your Balance',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 20,
                    padding: EdgeInsets.only(left: 8, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          items[index]["accountno"].toString(),
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          items[index]["balance"].toString(),
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 20,
                    padding: EdgeInsets.only(left: 8, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline),
                              text: "View transactions",
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  readJson();
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BankDetails()),
                                  );
                                }),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
