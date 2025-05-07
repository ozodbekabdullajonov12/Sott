import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sott/data/repositories/home_repository.dart';
import 'package:sott/features/home_page/presentation/manager/home_state.dart';
part 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _repo;

  HomeBloc({required HomeRepository repo})
    : _repo = repo,
      super(HomeState.initial()) {
    on<HomeLoading>(_loading);
    add(HomeLoading());
  }

  Future<void> _loading(HomeLoading event, Emitter emit) async {
    emit(state.copyWith(status: HomeStatus.loading));
    final realEstates = await _repo.fetchEstates();
    emit(HomeState(realEstates: realEstates, status: HomeStatus.idle));
  }
}
