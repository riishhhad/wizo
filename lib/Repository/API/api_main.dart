import 'dart:convert';


import 'package:http/http.dart';


import '../Modelclass/ProductModel.dart';

import 'api_client.dart';




class Wizoapi {
  late ProductModel productModel;
  ApiClient apiClient = ApiClient();


  Future<ProductModel> getwizo() async {
    String trendingpath ="https://real-time-amazon-data.p.rapidapi.com/search?query=Phone&page=1&country=US&sort_by=RELEVANCE&product_condition=";
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return ProductModel.fromJson(jsonDecode(response.body));
  }
}