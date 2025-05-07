import 'package:sott/data/models/estate_model.dart';
import '../../core/client.dart';


class HomeRepository {
  final ApiClient client;

  List<EstateModel> estates = [];

  HomeRepository({required this.client});

  Future<List<EstateModel>> fetchEstates() async{
    var review = await client.fetchEstates();
    estates = review.map((e) => EstateModel.fromJson(e)).toList();
    return estates;
  }
}