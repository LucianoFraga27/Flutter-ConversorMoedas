import 'package:conversor_moedas/app/views/currenty_box.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.only(top: 120, left: 20, right: 20, bottom: 20),
        child: Column(
          children: [
            Image.asset(
              "assets/logo.png",
              width: 180,
            ),
            SizedBox(
              height: 20,
            ),
            CurrencyBox(),
            SizedBox(
              height: 20,
            ),
            CurrencyBox(),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
                onPressed: () {}, color: Colors.red, child: Text("Converter"))
          ],
        ),
      ),
    ));
  }
}
