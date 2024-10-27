import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social Media'),
      ),
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(color: Colors.cyan,
                    child: IconButton(
                      icon: Image.asset('images/facebook.png',),iconSize: 150.0,
                      onPressed: () => _launchURL('https://web.facebook.com/profile.php?id=100069547431626'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: IconButton(
                      icon: Image.asset('images/githhub.png'),iconSize: 150.0,
                      onPressed: () => _launchURL('https://github.com/HamzaAli689?tab=repositories'),
                    ),
                  ),
                ),
              ],
            ),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Image.asset('images/whatsapp.png'),iconSize: 150.0,
                  onPressed: () => _launchURL('https://wa.me/'),
                ),
                IconButton(
                  icon: Image.asset('images/youtube.png'),iconSize: 150.0,
                  onPressed: () => _launchURL('https://www.youtube.com/channel/UCdUYBvDlDn4prBUn3b9VRrw'),
                ),
              ],

            ),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Image.asset('images/tiktok.png'),iconSize: 150.0,
                  onPressed: () => _launchURL('https://www.tiktok.com/@hamza_legend7?lang=en'),
                ),
                IconButton(
                  icon: Image.asset('images/instagram.png'),iconSize: 150.0,
                  onPressed: () => _launchURL('https://www.instagram.com/hamzaalivr074/'),
                ),
              ],
            )
          ],
        ),
      ),

    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
