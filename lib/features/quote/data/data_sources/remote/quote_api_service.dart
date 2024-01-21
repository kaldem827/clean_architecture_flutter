import 'package:clean_architecture_app/features/quote/data/models/quote.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';

abstract class QuoteApiService
{
  final Dio dio;
  QuoteApiService({required this.dio});


  Future<HttpResponse<QuoteModel>> getQuote()async{
    Response response =  await dio.get("/");
    return HttpResponse(response.data, response);
  }
}