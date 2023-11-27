import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:untitled/ui/json/show_news_details.dart';
import 'package:untitled/ui/news/model/news_response.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key, required this.category});
  final String category;
  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

List<Articles> articles = [];

class _NewsScreenState extends State<NewsScreen> {
  String showDetails = "Show more details";
  @override
  void initState() {
    super.initState();
    getNewsByCategory(widget.category);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                    child: Image.network(article.urlToImage),
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
}

Future<void> getNewsByCategory(String category) async {
  final response = await Dio().get(
      // BASE URL(domain)         /END POINT
      "https://newsapi.org/v2/top-headlines",
      queryParameters: {
        "country": "us",
        "category": category,
        "apiKey": "16eba444383a4366b13bf0073f5f087c",
      });
  final news = NewsResponse.fromJson(response.data);
  articles = news.articles;
}
