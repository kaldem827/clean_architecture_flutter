import 'package:clean_architecture_app/features/quote/domain/entities/quote.dart';

class QuoteModel extends QuoteEntity{
  const QuoteModel({required super.quote});

  factory QuoteModel.fromJson(Map<String, dynamic> map)
  {
    return QuoteModel(quote: map["quote"] ?? "");
  }
}