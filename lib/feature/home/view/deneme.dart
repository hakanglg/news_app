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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _serviceModel = NewsService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deneme'),
      ),
      body: FutureBuilder<List<Articles>?>(
        future: _serviceModel.fetchNewsArticle(),
        builder: (context, snapshot) {
          if (snapshot.hasData == true) {
            return ListView.builder(
                itemCount: snapshot.data?.length ?? 0,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Column(
                      children: [
                        SizedBox(
                          height: context.dynamicHeight(.25),
                          width: context.dynamicWidth(1),
                          child: Image.network(
                            snapshot.data[index].urlToImage.toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                        ListTile(
                          title: Text(
                            snapshot.data[index].title.toString(),
                            maxLines: 2,
                          ),
                          subtitle: Text(
                            snapshot.data[index].description.toString(),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
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
