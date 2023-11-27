import 'package:flutter/material.dart';
import 'package:untitled/shared.dart';
import 'package:untitled/ui/news/ui/news_select_country.dart';

class NewsSettingsScreen extends StatefulWidget {
  const NewsSettingsScreen({super.key});

  @override
  State<NewsSettingsScreen> createState() => _NewsSettingsScreenState();
}

class _NewsSettingsScreenState extends State<NewsSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal[400],
        title: Text("Settings"),
      ),
      body: Column(
        children: [
          SettingItem(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewsSelectCountryScreen(),
                ),
              ).then((value) => setState((){}));
            },
            icon: Icons.language_outlined,
            title: "Country",
            value: PreferenceUtils.getString(PrefKeys.newsCountry),
          ),
          SettingItem(
            onTap: () {},
            icon: Icons.notifications,
            title: "Notifications",
            value: "",
          ),
          SettingItem(
            onTap: () {},
            icon: Icons.color_lens_rounded,
            title: "Notifications",
            value: "Light",
          ),
          SettingItem(
            onTap: () {},
            icon: Icons.language_outlined,
            title: "Language",
            value: "en",
          ),
        ],
      ),
    );
  }

  Widget SettingItem({
    required GestureTapCallback onTap,
    required IconData icon,
    required String title,
    String value = "",
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(vertical: 10),
        color: Colors.white,
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.teal,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 22),
            ),
            Spacer(),
            Text(
              value,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.keyboard_arrow_right),
          ],
        ),
      ),
    );
  }
}
