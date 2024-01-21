import 'package:clean_architecture_app/features/quote/domain/entities/quote.dart';

import 'package:clean_architecture_app/core/resources/data_state.dart';

abstract class QuoteRepository {
  Future<DataState<QuoteEntity>> getQuote();
}