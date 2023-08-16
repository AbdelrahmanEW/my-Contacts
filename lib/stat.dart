import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StartSocialMedia extends StatelessWidget {
  String Url;

  StartSocialMedia({
    super.key,
    required this.Url,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 7, 30),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.deepOrange)),
          onPressed: () {
            launchUrl(Uri.parse(Url), mode: LaunchMode.externalApplication);
          },
          child: Text('Start Social Media'),
        ),
      ),
    );
  }
}
