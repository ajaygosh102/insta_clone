import 'package:dio/dio.dart';
import 'package:riafy_flutter_app/config/server_addresses.dart';

class HomeServices {
  Dio dio = new Dio();

  Future<dynamic> getHomeData() async {
    try {
      var response = await dio.get(ServerAddresses.home);
      return response.data;
    } catch (e) {
      return e.message;
    }
  }
}
