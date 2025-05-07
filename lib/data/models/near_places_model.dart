class NearPlacesModel {
  final int distance;
  final String title;
  final String image;

  NearPlacesModel({
    required this.distance,
    required this.title,
    required this.image,
  });

  factory NearPlacesModel.fromJson(Map<String, dynamic> json) {
    return NearPlacesModel(
      distance: json['distance'],
      title: json['title'],
      image: json['image'],
    );
  }
}
