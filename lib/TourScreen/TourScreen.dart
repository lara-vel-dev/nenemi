import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../QuizScreen/quiz_screen.dart';

Future<void> _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'No se pudo lanzar $url';
  }
}

class TourScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tour Screen Expirience")),
      body: Column(children: [
        Text("AR IS COOL"),
        ElevatedButton(
          onPressed: () =>
              // _launchURL(
              //     'https://www.instagram.com/ar/2173879186288909/?ch=ZDQ1OWI1ZjBlZDAzNDIwZTlhOWU3ODI2MDc1MWVhNjQ%3D'),
              launchUrl(
            Uri.parse(
                'https://www.instagram.com/ar/2173879186288909/?ch=ZDQ1OWI1ZjBlZDAzNDIwZTlhOWU3ODI2MDc1MWVhNjQ%3D'),
            mode: LaunchMode.externalApplication,
          ),
          // onPressed: () async {
          //   var url =
          //       'https://www.instagram.com/ar/2173879186288909/?ch=ZDQ1OWI1ZjBlZDAzNDIwZTlhOWU3ODI2MDc1MWVhNjQ%3D';

          //   if (await canLaunch(url)) {
          //     await launch(
          //       url,
          //       universalLinksOnly: true,
          //     );
          //   } else {
          //     throw 'There was a problem to open the url: $url';
          //   }
          // },
          child: Text("Let's start a Game!"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => QuizScreen()),
            );
          },
          child: Text("Let's see the Tour"),
        ),
      ]
          // QuizScreen
          ),
    );
  }
}
