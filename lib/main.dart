import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:transaction_app/Helper/Cards.dart';
import 'package:transaction_app/Screens/bankAccounts.dart';
import 'package:transaction_app/jsondata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Data().readJsonData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: HexColor('#203b8e'),
          title: const Text("All Bank Accounts"),
        ),
        body: const AllBankAccounts(),
      ),
    );
  }
}
