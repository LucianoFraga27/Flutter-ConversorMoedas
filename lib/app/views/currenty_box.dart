import 'package:flutter/material.dart';

class CurrencyBox extends StatefulWidget {
  const CurrencyBox({Key? key}) : super(key: key);

  @override
  State<CurrencyBox> createState() => _CurrencyBoxState();
}

class _CurrencyBoxState extends State<CurrencyBox> {
  final items = ['Real', 'Dolar', 'Euro', 'Bitcoin'];
  String? value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: SizedBox(
              height: 56,
              child: DropdownButton<String>(
                  iconEnabledColor: Colors.red,
                  isExpanded: true,
                  underline: Container(height: 1, color: Colors.red),
                  items: items.map(buildMenuItem).toList(),
                  value: value,
                  onChanged: (value) => setState(() => this.value = value)),
            )),
        SizedBox(
          height: 10,
        ),
        Expanded(
            flex: 2,
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            )),
      ],
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );
}
