import 'package:flutter/material.dart';

import '../models/currency_model.dart';

class HomeController {
  final TextEditingController toText ;
  final TextEditingController fromText ;

  List<CurrencyModel>? currencies;
  CurrencyModel? toCurrency;
  CurrencyModel? fromCurrency;

  HomeController({required this.toText, required this.fromText}) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies![0];
    fromCurrency = currencies![1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text) ?? 1;
    double returnValue = 0;

    if (fromCurrency == "Real") {
      returnValue = value * toCurrency!.real;
    } else if (fromCurrency == "Dolar") {
      returnValue = value * toCurrency!.dolar;
    } else if (fromCurrency == "Euro") {
      returnValue = value * toCurrency!.euro;
    } else if (fromCurrency == "Bitcoin") {
      returnValue = value * toCurrency!.bitcoin;
    }

    fromText.text = returnValue.toStringAsFixed(2);
  }
}
