import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:url_launcher/url_launcher.dart';

class PlaceholderWidget3 extends StatelessWidget {
  final Color color;

  PlaceholderWidget3(this.color);

  @override
  Widget build(BuildContext context) {
    return new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            'Social ',
            style: GoogleFonts.pacifico(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: FaIcon(FontAwesomeIcons.telegram),
                color: Colors.blue,
                onPressed: () => launch('https://t.me/dandollar1'),
                iconSize: 40.0,
              ),
              new Text('telegram'),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.github),
                color: Colors.purple,
                onPressed: () => launch('https://github.com/enweazudaniel'),
                iconSize: 40.0,
              ),
              new Text('github'),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.twitter),
                color: Colors.blue,
                onPressed: () => launch('https://twitter.com/enweazu_daniel'),
                iconSize: 40.0,
              ),
              new Text('twitter'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: FaIcon(FontAwesomeIcons.facebook),
                color: Colors.blue,
                onPressed: () =>
                    launch('https://www.facebook.com/enweazu.daniel'),
                iconSize: 40.0,
              ),
              new Text('facebook'),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.whatsapp),
                color: Colors.green,
                onPressed: () => launch('https://wa.me/qr/XTZZF74WOYXFK1'),
                iconSize: 40.0,
              ),
              new Text('whatsapp'),
            ],
          ),
        ]);
  }
}
