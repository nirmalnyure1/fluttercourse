import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:professional_class/model/news.dart';

class NewsScreen extends StatefulWidget {
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<News> newsData = new List();

  getNewsData() async {
    try {
      var url =
          'https://newsapi.org/v2/everything?q=bitcoin&apiKey=4875c95b2c3649bbae30674c06c39ae5';
      var response = await http.get(url);
      if (response.statusCode == 200) {
        // var jsonResponse = convert.jsonDecode(response.body);
        // jsonResponse['articles'].forEach((v) {
        //   newsData.add(News.fromJson(v));
        //   log(v.toString());
        // });
        //
        log('api call is successfully');
        log(response.body);
      } else {
        print('Request failed with status:${response.statusCode},');
      }
    } catch (e) {
      log(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    getNewsData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: Text('nirmal'),
      ),
    );
  }
}
