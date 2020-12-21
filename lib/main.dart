import 'package:flutter/material.dart';
//import 'package:professional_class/facebook_clone/facebook_home.dart';
import 'package:professional_class/play_quiz/screen/playQuiz.dart';
import 'package:professional_class/widget/listTileWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
        appBarTheme: AppBarTheme(color: Colors.white),
        scaffoldBackgroundColor: Colors.white,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PlayQuiz()
      //FacebookHome()
      //home: FlutterClass()
      ,
    );
  }
}

class FlutterClass extends StatefulWidget {
  @override
  _FlutterClassState createState() => _FlutterClassState();
}

class _FlutterClassState extends State<FlutterClass> {
  String test;
  @override
  void initState() {
    test = 'Ashsih';
    print('this is init state');
    super.initState();
  }

  changeValue() {
    test = 'Nirmal Nyure';
  }

  @override
  Widget build(BuildContext context) {
    return ListTileWidget();
    //DigitalClock();
    // body: FirstLayoutDesignWidget()
    /*appBar: AppBar(
            leading: Icon(
              Icons.account_box,
              size: 30,
            ),
            title: Text(
              ' Greenery ',
              style: TextStyle(color: Colors.white, letterSpacing: 3),
            ),
            centerTitle: true,
            actions: [
              Icon(
                Icons.place,
                size: 30,
              ),
              Icon(Icons.more_vert)
            ],
          ),*/

    //TestForm()
    //ListTileWidget()
    //StackWidget()

    //ListViewWidget()

    //RowWidget()
    //ListViewWidget()

    /*SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RowWidget(),
            ContainerWidget(),
            ContainerWidget(),
            ContainerWidget(),
            ContainerWidget(),
            ContainerWidget(),
            ContainerWidget(),
            ContainerWidget(),
            ButtonWidget(),
            ButtonWidget(),
            ButtonWidget(),
            NetWorkImageWidget(),
            NetWorkImageWidget(),
            NetWorkImageWidget()
          ],
        ),
      )*/
    //ButtonWidget()
    //IconImageWidget()
    //NetWorkImageWidget()
    //AssetImageWidget()
    //ContainerWidget()
    /*Container(
          child: Text.rich(
            TextSpan(
              text: 'hello ',
              style: TextStyle(fontSize: 30.0),
              children: <TextSpan>[
                TextSpan(text: 'beautiful ',style: TextStyle(fontStyle:FontStyle.italic,color: Colors.red),),
                TextSpan(text: 'world',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.green),),
              ],
            ),
          ),
          */ /*   child: Text(
            'flutter app',
            style: TextStyle(),
          ),*/ /*
        ),*/
    //),
    //);
  }
}
