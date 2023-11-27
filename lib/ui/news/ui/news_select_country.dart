import 'package:flutter/material.dart';
import 'package:untitled/shared.dart';

class NewsSelectCountryScreen extends StatefulWidget {
  const NewsSelectCountryScreen({super.key});

  @override
  State<NewsSelectCountryScreen> createState() =>
      _NewsSelectCountryScreenState();
}

class _NewsSelectCountryScreenState extends State<NewsSelectCountryScreen> {
  final countries = [
    "us",
    "eg",
    "sa",
    "ae",
    "ch",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: Text("Select Country"),
      ),
      body: ListView.separated(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => saveSelectedCountry(
              countries[index],
            ),
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Text(
                    countries[index],
                    style: TextStyle(fontSize: 22),
                  ),
                  Spacer(),
                  Icon(Icons.keyboard_arrow_right)
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.grey,
            height: 2,
          );
        },
      ),
    );
  }

  saveSelectedCountry(String selectedCountry) {
    PreferenceUtils.setString(
      PrefKeys.newsCountry,
      selectedCountry,
    );
    Navigator.pop(context);
  }
}
