import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Pages/about_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Center(
              child: Image.asset('assets/images/Ai.png'),
            ),
          ),
          ListTile(
            leading: const Icon(Iconsax.hierarchy_2),
            title: Text(
              "Source code",
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.secondary,
                  fontFamily: 'Nexa'),
            ),
            subtitle: Text(
              "Download the Source Code of This App",
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
                fontFamily: 'NexaLight',
              ),
            ),
            onTap: () async {
              final Uri url = Uri.parse(
                  'https://epofficial.gumroad.com/l/ai-art');
              if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
                throw Exception('Could not launch $url');
              }
            },
          ),
          ListTile(
            leading: const Icon(Iconsax.refresh_circle),
            title: Text(
              "Check for update",
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.secondary,
                  fontFamily: 'Nexa'),
            ),
            subtitle: Text(
              "Check for Updates",
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
                fontFamily: 'NexaLight',
              ),
            ),
            onTap: () async {
              final Uri url = Uri.parse(
                  'https://epofficial.gumroad.com/l/ai-art');
              if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
                throw Exception('Could not launch $url');
              }
            },
          ),
          ListTile(
            leading: const Icon(Iconsax.info_circle),
            title: Text(
              "About",
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.secondary,
                  fontFamily: 'Nexa'),
            ),
            subtitle: Text(
              "About this project",
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
                fontFamily: 'NexaLight',
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutPage(),
                ),
              );
            },
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'v1.0.5',
                  style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.secondary,
                      fontFamily: 'Nexa'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
