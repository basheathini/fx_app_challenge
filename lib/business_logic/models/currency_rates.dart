class Live {
  String timestamp;
  List<Map<String, dynamic>> price;

  Live({required this.timestamp, required this.price});

  factory Live.fromJson(Map snapshot){
    return Live(
        timestamp : snapshot['timestamp'] ?? '',
        price : snapshot['price'] ?? '',
    );
  }

  toJson() {
    return {
      "timestamp": timestamp,
      "price": price,
    };
  }
}