import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:guzo_app/domain/nav_pages/home_page/sight_model.dart';
import 'package:meta/meta.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc() : super(FavoritesLoading()) {
    on<LoadFavorites>(_handleLoadFavorites);
    on<AddToFavorites>(_handleAddToFavorites);
    on<RemoveFromFavorites>(_handleRemoveFromFavorites);
    // on<FavoritedASight>(_handleFavoritedASight);
  }

  void _handleLoadFavorites(LoadFavorites event, Emitter emit) async {
    await Future.delayed(const Duration(seconds: 2));
    try {
      emit(FavoritesLoadingSuccessful(sights: event.sights));
    } on Exception catch (error) {
      emit(FavoritesLoadingFailed(error: error));
    }
  }

  void _handleAddToFavorites(AddToFavorites event, Emitter emit) {
    final state = this.state;
    if (state is FavoritesLoadingSuccessful) {
      emit(FavoritesLoadingSuccessful(
          sights: List<Sight>.from(state.sights)..add(event.sight)));
    }
  }

  void _handleRemoveFromFavorites(RemoveFromFavorites event, Emitter emit) {
    final state = this.state;

    if (state is FavoritesLoadingSuccessful) {
      final List<Sight> sights = state.sights.where((sight) {
        return sight.name != event.sight.name;
      }).toList();
      emit(FavoritesLoadingSuccessful(sights: sights));
    }
  }

  // void _handleFavoritedASight(FavoritedASight event, Emitter emit) {
  //   emit(AddedToFavorites());
  // }
}
