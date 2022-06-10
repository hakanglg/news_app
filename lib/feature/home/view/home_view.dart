// import 'package:flutter/material.dart';
// import 'package:news_app/core/components/column/my_column.dart';
// import 'package:news_app/core/components/row/my_row.dart';
// import 'package:news_app/feature/home/model/news_model.dart';
// import 'package:news_app/feature/home/service/news_service.dart';

// import '../../../core/base/base_state.dart';

// class HomeView extends StatefulWidget with BaseState {
//   HomeView({Key? key}) : super(key: key);

//   @override
//   State<HomeView> createState() => _HomeViewState();
// }

// class _HomeViewState extends State<HomeView> {
//   List<NewsModel>? _items;
//   bool _isLoading = false;
//   late final NewsService _serviceModel;

//   @override
//   void initState() {
//     super.initState();
//     _serviceModel = NewsService();
//     fetchPostItems();
//   }

//   void _changeLoading() {
//     setState(() {
//       _isLoading = !_isLoading;
//     });
//   }

//   Future<void> fetchPostItems() async {
//     _changeLoading();
//     _items = await _serviceModel.fetchPostItem();
//     _changeLoading();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: const Text('News APP'),
//         ),
//         body: MyRow(
//             child: MyColumn(
//                 child: Column(
//           children: [
//             Expanded(
//               child: ListView.builder(
//                 itemCount: _items?.length ?? 0,
//                 itemBuilder: (BuildContext context, int index) {
//                   return ListTile(
//                     title: Text(_items!.elementAt(index).author.toString()),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ))));
//   }
// }


// // Column(
// //                     children: [
// //                       Text("Apple's USA Business doubled in revenue in Q1",
// //                           style: context.textTheme.headline4),
// //                       context.emptySizedHeightBoxLow3x,
// //                       Text(
// //                           "Apple's USA Business doubled in revenue in Q1 Apple's USA Business doubled in revenue in Q1Apple's USA Business doubled in revenue in Q1Apple's USA Business doubled in revenue in Q1Apple's USA Business doubled in revenue in Q1",
// //                           textAlign: TextAlign.start,
// //                           maxLines: 4,
// //                           style: context.textTheme.subtitle1),
// //                       context.emptySizedHeightBoxLow3x,
// //                       ListTile(
// //                         leading: const Icon(
// //                           Icons.person,
// //                           size: 55,
// //                         ),
// //                         title: Text(
// //                           "Hakan GOLGE",
// //                           style: context.textTheme.bodyText1,
// //                         ),
// //                         subtitle: Text("Editor",
// //                             style: context.textTheme.subtitle2!.copyWith(
// //                                 color: colorConstants.darkGrey,
// //                                 fontWeight: FontWeight.bold)),
// //                       ),
// //                       const Divider(
// //                         color: Colors.black,
// //                       )
// //                     ],
// //                   );