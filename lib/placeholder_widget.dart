import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return new Column(
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
                      image:
                          new AssetImage("assets/IMG_20210121_123149.jpg")))),
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
                new Text('Xda Senior Member')
              ],
            ),
          )
        ]);
  }
}
