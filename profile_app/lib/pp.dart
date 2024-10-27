import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Social Media'),
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Image.asset('images/facebook.png'),
              onPressed: () => _launchURL('https://www.facebook.com/'),
            ),
            IconButton(
              icon: Image.asset('images/githhub.png'),
              onPressed: () => _launchURL('https://github.com/'),
            ),
          ],
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Image.asset('images/whatsapp.png'),
              onPressed: () => _launchURL('https://wa.me/'),
            ),
            IconButton(
              icon: Image.asset('images/youtube.png'),
              onPressed: () => _launchURL('https://www.youtube.com/'),
            ),
          ],

          ),
          Row(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Image.asset('images/tiktok.png'),
              onPressed: () => _launchURL('https://www.tiktok.com/'),
            ),
            IconButton(
              icon: Image.asset('images/instagram.png'),
              onPressed: () => _launchURL('https://www.instagram.com/'),
            ),
          ],
          )
        ],
      ),

    );}}

class _launchURL {
  _launchURL(String s);
}