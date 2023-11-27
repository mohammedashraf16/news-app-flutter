import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:untitled/shared.dart';
import 'package:untitled/ui/news/ui/json_news_screen.dart';
import 'package:untitled/ui/news/ui/news_settings.dart';
import '../model/news_response.dart';

class NewsMainScreen extends StatefulWidget {
  const NewsMainScreen({super.key});

  @override
  State<NewsMainScreen> createState() => _NewsMainScreenState();
}

class _NewsMainScreenState extends State<NewsMainScreen> {
  List<Articles> articles = [];
  final titles = [
    "Business",
    "Sport",
    "general",
    "Science",
    "Technology",
  ];
  final screens = [
    const NewsScreen(category: 'business'),
    const NewsScreen(category: 'general'),
    const NewsScreen(category: 'health'),
    const NewsScreen(category: 'science'),
    const NewsScreen(category: 'technology'),
  ];
  int currentIndex = 0;

  @override
  void initState() {
    if (PreferenceUtils.getString(PrefKeys.newsCountry).isEmpty) {
      PreferenceUtils.getString(PrefKeys.newsCountry, "us");
    }
    super.initState();
    getNewsByCategory(titles[0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: Text(
          titles[currentIndex],
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => NavToSettingsScreen(),
            icon: Icon(Icons.settings),
            iconSize: 35,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal[400],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (selectedIndex) {
          setState(() {
            currentIndex = selectedIndex;
            getNewsByCategory(titles[currentIndex]);
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              size: 45,
              Icons.business,
            ),
            label: "Business",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              size: 45,
              Icons.public,
            ),
            label: "General",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              size: 45,
              Icons.healing,
            ),
            label: "Health",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              size: 45,
              Icons.science,
            ),
            label: "Science",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              size: 45,
              Icons.biotech,
            ),
            label: "Technology",
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xFFEFEFEF),
                labelText: 'Search',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                prefixIcon: Icon(
                  Icons.search,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  Articles article = articles[index];
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20)),
                        margin: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            article.urlToImage.isEmpty
                                ? const Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: Center(
                                      child: Icon(
                                        Icons.image_not_supported_outlined,
                                        size: 50,
                                      ),
                                    ),
                                  )
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: CachedNetworkImage(
                                      imageUrl: article.urlToImage,
                                    ),
                                  ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 10,
                              ),
                              child: Text(
                                article.title,
                                style: const TextStyle(
                                  fontSize: 19,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 10,
                              ),
                              child: Text(
                                "Show more details",
                                style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontSize: 19,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  final dio = Dio();

  Future<void> getNewsByCategory(String category) async {
    final response = await dio.get(
        // BASE URL(domain)         /END POINT
        "https://newsapi.org/v2/top-headlines",
        queryParameters: {
          "country": PreferenceUtils.getString(PrefKeys.newsCountry),
          "category": category,
          "apiKey": "16eba444383a4366b13bf0073f5f087c",
        });
    final news = NewsResponse.fromJson(response.data);
    articles = news.articles;
  }

  NavToSettingsScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NewsSettingsScreen(),
      ),
    ).then(
      (value) => getNewsByCategory(titles[currentIndex]),
    );
  }
}
