class Article {
  final Source source;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final dynamic publishedAt;
  final String content;

  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });


  factory Article.fromJson(Map<String, dynamic> snapshot){
    return Article(
      source : Source.fromJson(snapshot['source']),
      author : snapshot['author'] ?? '',
      title : snapshot['title'] ?? '',
      description : snapshot['description'] ?? '',
      url : snapshot['url'] ?? [],
      urlToImage : snapshot['urlToImage'] ?? '',
      publishedAt : snapshot['publishedAt'] ?? '',
      content : snapshot['content'] ?? '',
    );
  }

  toJson() {
    return {
      'source': source.toJson(),
      'author': author,
      'title': title,
      'description': description,
      'url': url,
      'urlToImage': urlToImage,
      'publishedAt': publishedAt,
      'content': content,
    };
  }
}

class Source {
 final String id;
 final String name;

 Source({required this.id, required this.name});

 factory Source.fromJson(Map snapshot){
   return Source(
     id : snapshot['id'] ?? '',
     name : snapshot['name'] ?? '',
   );
 }


 toJson() {
   return {
     'id': id,
     'name': name,
   };
 }
}