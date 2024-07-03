import 'dart:convert';

import 'package:http/http.dart';

import '../Modelclass/Wizoprdct.dart';
import 'api_client.dart';




class Wizoprdctapi {
  late Wizoprdct  wizoprdct;
  ApiClient apiClient = ApiClient();


  Future<Wizoprdct> getwizo(String productId) async {
    String trendingpath ="https://real-time-amazon-data.p.rapidapi.com/product-details?asin=$productId&country=US";
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return Wizoprdct.fromJson(jsonDecode(response.body));
  }
}