import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:professional_class/providerExample/product.dart';

class Controller with ChangeNotifier {
  bool _loading = true;

  bool get loading => _loading;
  String _username = '';

  List<Product> _products = new List();
  List get products => _products;

  Controller() {
    getProductList();
  }

  setUserName(String name) {
    _username = name;
    notifyListeners();
  }

  getProductList() async {
    try {
      var url = 'https://gorest.co.in/public-api/products';

      // Await the http get response, then decode the json-formatted response.
      var response = await http.get(url);

      print('API CALL:${response.statusCode.toString()}');
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body);
        jsonResponse['data'].forEach((v) {
          _products.add(Product.fromJson(v));
        });
        _loading = false;
        notifyListeners();
      } else {
        print('request faild with status');
      }
    } catch (e) {}
  }
}
