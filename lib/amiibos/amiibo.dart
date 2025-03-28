class Amiibo {
  final String name;
  final String image;
  final String game;

  Amiibo({required this.name, required this.image, required this.game});

  factory Amiibo.fromJson(Map<String, dynamic> json) {
    return Amiibo(
      name: json['name'] as String,
      image: json['image'] as String,
      game: json['gameSeries'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'image': image,
      'game': game,
    };
  }
}
