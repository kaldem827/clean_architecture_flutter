import 'package:equatable/equatable.dart';

class QuoteEntity extends Equatable
{
  final String quote;
  const QuoteEntity({
    required this.quote
  });

  @override
  List<Object?> get props => [quote];
}