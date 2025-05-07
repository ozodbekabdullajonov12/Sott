import 'package:dio/dio.dart';

class ApiClient {
  ApiClient() {
    dio = Dio(
      BaseOptions(baseUrl: "http://192.168.9.174:8888/api/v1", validateStatus: (value) => true),
    );
  }

  late final Dio dio;


  Future<List<dynamic>> fetchEstates({Map<String, dynamic>? queryParams}) async {
    var response = await dio.get("/real-estates", queryParameters: queryParams);
    List<dynamic> data = response.data;
    if (response.statusCode == 200) {
      return data;
    } else {
      throw Exception("estateni olib kelishda xatolik");
    }
  }
}
