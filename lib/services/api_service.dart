// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:task/utils/constants.dart';

class ApiService {
  final Dio dio;
  ApiService(
    this.dio,
  );
  

   Future<List<dynamic>> get({required String endPoint}) async {
    var response = await dio.get('${Constants.kBaseUrl}$endPoint');
    return response.data;
  }
}