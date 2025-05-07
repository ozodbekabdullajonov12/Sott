import 'package:sott/data/models/near_places_model.dart';

class EstateModel {
  final int id;
  final String category, image;
  final int price, numOfRooms, totalFloors, floor;
  final String currency;
  final double area;
  final NearPlacesModel nearPlacesModel;

  EstateModel({
    required this.id,
    required this.category,
    required this.image,
    required this.price,
    required this.numOfRooms,
    required this.totalFloors,
    required this.floor,
    required this.currency,
    required this.area,
    required this.nearPlacesModel,
  });

  factory EstateModel.fromJson(Map<String, dynamic> json) {
    return EstateModel(
      id: json['id'],
      category: json['category'],
      image: json['image'],
      price: json['price'],
      numOfRooms: json['numOfRooms'],
      totalFloors: json['totalFloors'],
      floor: json['floor'],
      currency: json['currency'],
      area: (json['area'] as num).toDouble(),
      nearPlacesModel: NearPlacesModel.fromJson(json['nearestPopularPlace']),
    );
  }

}
