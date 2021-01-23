import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:custom_bottom_navigation_bar/custom_bottom_navigation_bar_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'dart:html' as html;

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
        //fontFamily: 'Google',
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(
          items: [
            CustomBottomNavigationBarItem(
              icon: Icons.home,
              title: "home",
            ),
            CustomBottomNavigationBarItem(
              icon: Icons.web,
              title: "web",
            ),
            CustomBottomNavigationBarItem(
              icon: Icons.work,
              title: "projects",
            ),
          ],
          onTap: (index) {
            _pageController.animateToPage(index,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: Duration(milliseconds: 100));
          },
        ),
        body: new Center(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                //child: SingleChildScrollView(
                child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                          width: 200.0,
                          height: 200.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new AssetImage(
                                      "assets/IMG_20210121_123149.jpg")))),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        child: new Column(
                          children: <Widget>[
                            new Text(
                              'Enweazu Daniel',
                              style: GoogleFonts.pacifico(),
                            ),
                            new Text(
                                "Andriod. Flutter. Football.  \nMusic. Likes Travelling. ",
                                style: TextStyle(fontSize: 25),
                                textScaleFactor: 1.2,
                                textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: FaIcon(FontAwesomeIcons.telegram),
                            color: Colors.blue,
                            onPressed: () {},
                            iconSize: 40.0,
                          ),
                          new Text('telegram'),
                          IconButton(
                            icon: FaIcon(FontAwesomeIcons.github),
                            color: Colors.purple,
                            onPressed: () {},
                            iconSize: 40.0,
                          ),
                          new Text('github'),
                          IconButton(
                            icon: FaIcon(FontAwesomeIcons.twitter),
                            color: Colors.blue,
                            onPressed: () {},
                            iconSize: 40.0,
                          ),
                          new Text('twitter'),
                        ],
                      ),
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.facebook),
                        color: Colors.blue,
                        onPressed: () {
                          print('Opening facebook');
                        },
                        iconSize: 40.0,
                      ),
                      new Text('facebook'),
                    ]))));
  }
}
