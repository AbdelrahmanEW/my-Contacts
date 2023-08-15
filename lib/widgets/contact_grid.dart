
import 'package:demo_app/widgets/social_widgets_Icon.dart';
import 'package:flutter/material.dart';

class Contacts_Grid extends StatelessWidget {
  const Contacts_Grid({
    super.key,
    required this.ListIconAndUrl,
  });

  final Map<String, String> ListIconAndUrl;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3),
      itemCount: ListIconAndUrl.length ,
      itemBuilder: (mycontext, index) {
      final entry = ListIconAndUrl.entries.elementAt(index);
        return SocialMediaIcon(
          socialMediaName: entry.key,
          socialMediaUrlName: entry.value,
        );
      },
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(20),
    );
  }
}