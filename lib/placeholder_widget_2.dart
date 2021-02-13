import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceholderWidget2 extends StatelessWidget {
  final Color color;

  PlaceholderWidget2(this.color);

  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new Text(
        'My Favourie Apps',
        style: GoogleFonts.pacifico(),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.telegram),
            color: Colors.blue,
            onPressed: () => launch(
                'https://play.google.com/store/apps/details?id=org.telegram.messenger&hl=en_GB&gl=US'),
            iconSize: 40.0,
          ),
          Text('Telegram'),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.tasks),
            color: Colors.orange,
            onPressed: () => launch(
                'https://play.google.com/store/apps/details?id=net.dinglisch.android.taskerm&hl=en_GB&gl=US'),
            iconSize: 40.0,
          ),
          Text('Tasker'),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.terminal),
            color: Colors.red,
            onPressed: () => launch(
                'https://play.google.com/store/apps/details?id=com.sonelli.juicessh&hl=en_GB&gl=US'),
            iconSize: 40.0,
          ),
          Text('JuiceSSH'),
        ],
      ),
      new Text(
        'My Featured Apps',
        style: GoogleFonts.pacifico(),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.youtube),
            color: Colors.red,
            onPressed: () => launch(
                'https://github.com/SongTube/SongTube-App/releases/download/5.6.0%2B8/songtube-release.5.6.0+8.apk'),
            iconSize: 40.0,
          ),
          Text('Songtube'),
        ],
      ),
    ]);
  }
}
