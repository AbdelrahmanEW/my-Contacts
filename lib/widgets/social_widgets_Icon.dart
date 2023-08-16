
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIcon extends StatelessWidget {
  String socialMediaName, socialMediaUrlName;

  SocialMediaIcon({
    Key? key,
    required this.socialMediaName,
    required this.socialMediaUrlName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: InkWell(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: AssetImage('assets/$socialMediaName'),
          radius: 22,
        ),
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.deepOrange)),
                onPressed: () {
                  launchUrl(Uri.parse(socialMediaUrlName),
                      mode: LaunchMode.externalApplication);
                },
                child: Text('Start with $socialMediaName'),
              );
            },
          );
        },
      ),
    );
  }
}
