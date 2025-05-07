import 'package:equatable/equatable.dart';
import 'package:sott/data/models/estate_model.dart';

enum HomeStatus { idle, loading, error }

class HomeState extends Equatable {
  final List<EstateModel>? realEstates;
  final HomeStatus status;

  const HomeState({required this.realEstates, required this.status});

  @override
  List<Object?> get props => [realEstates, status];

  factory HomeState.initial() {
    return HomeState(realEstates: [], status: HomeStatus.loading);
  }

  HomeState copyWith({List<EstateModel>? realEstates, HomeStatus? status}) {
    return HomeState(
      realEstates: realEstates ?? this.realEstates,
      status: status ?? this.status,
    );
  }
}
