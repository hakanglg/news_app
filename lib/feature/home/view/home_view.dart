import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:news_app/core/components/column/my_column.dart';
import 'package:news_app/core/components/row/my_row.dart';

import '../../../core/base/base_state.dart';

class HomeView extends StatelessWidget with BaseState {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('News APP'),
        ),
        body: MyRow(
            child: MyColumn(
                child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Text("Apple's USA Business doubled in revenue in Q1",
                          style: context.textTheme.headline4),
                      context.emptySizedHeightBoxLow3x,
                      Text(
                          "Apple's USA Business doubled in revenue in Q1 Apple's USA Business doubled in revenue in Q1Apple's USA Business doubled in revenue in Q1Apple's USA Business doubled in revenue in Q1Apple's USA Business doubled in revenue in Q1",
                          textAlign: TextAlign.start,
                          maxLines: 4,
                          style: context.textTheme.subtitle1),
                      context.emptySizedHeightBoxLow3x,
                      ListTile(
                        leading: const Icon(
                          Icons.person,
                          size: 55,
                        ),
                        title: Text(
                          "Hakan GOLGE",
                          style: context.textTheme.bodyText1,
                        ),
                        subtitle: Text("Editor",
                            style: context.textTheme.subtitle2!.copyWith(
                                color: colorConstants.darkGrey,
                                fontWeight: FontWeight.bold)),
                      ),
                      const Divider(
                        color: Colors.black,
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ))));
  }
}
