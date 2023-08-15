//my contact.dart

import 'package:demo_app/widgets/contact_grid.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'widgets/social_widgets_Icon.dart';

class MyContacts extends StatelessWidget {
  MyContacts({super.key});
  Map<String, String> ListIconAndUrl = {
    'instagram-1581266_640.webp': 'https://www.instagram.com/',
    'download (1).jpg': 'https://wa.me/+201158536036',
    'download.jpg': 'https://www.facebook.com/',
    'LinkedIn_logo_initials.png': 'https://www.linkedin.com/feed/',
    'Octicons-mark-github.svg.png': 'https://github.com/',
    'tiktok-logo-on-black-background-vector-35997587.jpg':
    'https://www.tiktok.com/'
  };
  @override
  Widget build(BuildContext mycontext) {
    var colors;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 7, 30),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/Abdo.jpeg'),
                radius: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'AbdulRahman Ahmed',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    '+0201158536036',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      launchUrl(Uri.parse('tel:+201158536036'));
                    },
                    icon: const Icon(
                      Icons.phone,
                      size: 20,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Contacts_Grid(ListIconAndUrl: ListIconAndUrl),
            ],
          ),
        ),
      ),
    );
  }
}

