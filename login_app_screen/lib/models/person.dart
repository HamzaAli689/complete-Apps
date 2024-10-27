class Person {
  String name;
  String title;
  String imageUrl;
  DateTime createdAt;

  // Constructor
  Person({
    required this.name,
    required this.title,
    required this.imageUrl,
    required this.createdAt,
  });

  // Convert a Person object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'title': title,
      'imageUrl': imageUrl,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  // Create a Person object from a JSON map
  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      name: json['name'],
      title: json['title'],
      imageUrl: json['imageUrl'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }

}
