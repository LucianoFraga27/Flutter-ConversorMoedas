
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Image.asset("assets/logo.png"),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(child: DropdownButton<String>(items: [], onChanged: (values) {})),
                  Expanded(child: TextField(decoration: InputDecoration(),)),
                ],
              ),
            ),
            RaisedButton(onPressed: (){}, child: Text("Converter"))
          ],
        ),
      )
    );
  }
}
