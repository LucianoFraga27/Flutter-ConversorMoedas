import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final items = ['Real', 'Dolar', 'Euro', 'Bitcoin'];
  String? value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
        child: Column(
          children: [
            Image.asset(
              "assets/logo.png",
              width: 180,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 56,
                        child: DropdownButton<String>(
                          isExpanded: true,
                            underline: Container(
                              height:1,
                              color:Colors.red
                            ),
                            items: items.map(buildMenuItem).toList(),
                            value: value,
                            onChanged: (value) => setState(() => this.value = value)
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(onPressed: () {},
                color: Colors.red,
                child: Text("Converter"))
          ],
        ),
      ),
    ));
  }

  DropdownMenuItem<String> buildMenuItem (String item) => DropdownMenuItem(
      value: item,
      child: Text(item,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
      ),),

  );

}
