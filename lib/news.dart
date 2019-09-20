import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'newsArticle.dart';
import 'webservice.dart';
import 'main.dart';


class News extends StatefulWidget {
  static const String id = "newsScreen";
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  List<NewsArticle> _newsArticles = List<NewsArticle>(); 

  @override
  void initState() {
    super.initState();
    _populateNewsArticles(); 
  }

  void _populateNewsArticles() {
   
    Webservice().load(NewsArticle.all).then((newsArticles) => {
      setState(() => {
        _newsArticles = newsArticles
      })
    });

  }

  ListTile _buildItemsForListView(BuildContext context, int index) {
      return ListTile(
        title: _newsArticles[index].urlToImage == null ? Image.asset("assets/images/placeholder.png") : Image.network(_newsArticles[index].urlToImage), 
        subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: _newsArticles.length,
          itemBuilder: _buildItemsForListView,
        )
      );
  }
}
