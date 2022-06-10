// import 'package:dio/dio.dart';

// class ProjectNetworkManager {
//   static ProjectNetworkManager? _instance;
//   static ProjectNetworkManager get instance {
//     if (_instance != null) return _instance!;
//     _instance = ProjectNetworkManager._init();
//     return _instance!;
//   }

//   final String _baseUrl = 'https://newsapi.org/v2/everything?q=Apple&from=2022-06-09&sortBy=popularity&apiKey=f3c14c82e5a14778a744df65ded1ab82';
//   late final Dio dio;

//   ProjectNetworkManager._init() {
//     dio = Dio();
//     dio.options.baseUrl = _baseUrl;
//   }
// }
