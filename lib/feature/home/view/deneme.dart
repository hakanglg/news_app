import 'package:flutter/material.dart';
import 'package:news_app/feature/home/service/news_service.dart';
import 'package:kartal/kartal.dart';
import '../model/articles_model.dart';

class DenemeView extends StatefulWidget {
  const DenemeView({Key? key}) : super(key: key);

  @override
  State<DenemeView> createState() => _DenemeViewState();
}

class _DenemeViewState extends State<DenemeView> {
  late final NewsService _serviceModel;
  late Future<List<Articles>?> dataFuture;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _serviceModel = NewsService();
    dataFuture = _serviceModel.fetchNewsArticle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deneme'),
      ),
      body: FutureBuilder<List<Articles>?>(
        future: dataFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData == true) {
            List<Articles>? newsArticle = snapshot.data;
            return ListView.builder(
                itemCount: snapshot.data?.length ?? 0,
                itemBuilder: (context, index) {
                  return NewsView(
                    article: newsArticle![index],
                  );
                });
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class NewsView extends StatelessWidget {
  final Articles article;

  const NewsView({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          SizedBox(
            height: context.dynamicHeight(.25),
            width: context.dynamicWidth(1),
            child: Image.network(
              article.urlToImage ?? "",
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            title: Text(
              article.title ?? "",
              maxLines: 2,
            ),
            subtitle: Text(
              article.description ?? "",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
