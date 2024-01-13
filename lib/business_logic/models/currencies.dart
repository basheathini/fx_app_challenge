
class Currency {
  final List<String> currencies;
  
  Currency({required this.currencies});


  factory Currency.fromJson(Map snapshot){
    return Currency(
      currencies : snapshot['currencies'] ?? [],
    );
  }

  toJson() {
    return {
      "currencies": currencies,
    };
  }
}
