import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Maps extends StatelessWidget {
  String mapUrl = "https://maps.app.goo.gl/ucwwwV8T2iygnqS37";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maps Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Maps Example'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Buka Maps'),
            onPressed: () {
              openMaps();
            },
          ),
        ),
      ),
    );
  }

  void openMaps() async {
    //   if (await canLaunchUrl(mapUrl.toString())) {
    //     await launchUrl(mapUrl);
    //   } else {
    //     throw 'Tidak dapat membuka Maps';
    //     // }
    //   }
    // }
  }
}
