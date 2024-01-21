import 'dart:io';

import 'package:clean_architecture_app/core/resources/data_state.dart';
import 'package:clean_architecture_app/features/quote/data/data_sources/remote/quote_api_service.dart';
import 'package:clean_architecture_app/features/quote/data/models/quote.dart';
import 'package:clean_architecture_app/features/quote/domain/entities/quote.dart';
import 'package:clean_architecture_app/features/quote/domain/repository/quote_repository.dart';
import 'package:dio/dio.dart';

class QuoteRepositoryImpl implements QuoteRepository
{
  final QuoteApiService _quoteApiService;


  const QuoteRepositoryImpl(this._quoteApiService);
  @override
  Future<DataState<QuoteModel>> getQuote() async{
    try
        {
          final response  = await _quoteApiService.getQuote();

          if(response.response.statusCode == HttpStatus.ok)
          {
            return DataSuccess(data: response.data);
          }else{
            return DataFailure(exception: DioException(
                error: response.response.statusMessage,
                requestOptions: response.response.requestOptions,
                type: DioExceptionType.badResponse
            ));
          }
        }
        on DioException catch(e)
    {
      return DataFailure(exception: e);
    }
  }
}