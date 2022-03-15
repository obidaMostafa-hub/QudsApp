import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      debugShowCheckedModeBanner: false,
      title: 'Flutter Qudes Project',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'عاصمه فلسطين'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/quds.jpg'),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'مدينه القدس',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MyLayout(text: 'الاسم ', val: 'القدس'),
            MyLayout(text: 'كم 125 ', val: 'المساحه'),
            MyLayout(text: '٣٥٨٠٠٠ نسمة', val: 'السكان'),
            MyLayout(text: 'فلسطين ', val: 'الدولة'),
            MyLayout(text: 'عمراحمد علي  ', val: 'اسم الطالب'),
          ],
        ),
      ),
    );
  }
}

class MyLayout extends StatelessWidget {
  String text;
  String val;
  MyLayout({required this.text, required this.val});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          height: 70,
          decoration: BoxDecoration(color: Color(0xfff5eded), borderRadius: BorderRadius.circular(30), border: Border.all(color: Colors.black, width: 0.6)),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30), border: Border.all(color: Colors.black, width: 0.6)),
                    child: Center(
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30), border: Border.all(color: Colors.black, width: 0.6)),
                    child: Center(
                      child: Text(
                        val,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
