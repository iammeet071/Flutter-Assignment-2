import 'package:flutter/cupertino.dart';

import 'package:transaction_app/Helper/Cards.dart';

class AllBankAccounts extends StatefulWidget {
  const AllBankAccounts({Key? key}) : super(key: key);

  @override
  State<AllBankAccounts> createState() => _AllBankAccountsState();
}

class _AllBankAccountsState extends State<AllBankAccounts> {
  @override
  Widget build(BuildContext context) {
    return Container(padding: const EdgeInsets.all(10), child: BankCard());
  }
}
