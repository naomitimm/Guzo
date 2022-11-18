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
  }

  void _handleLoadFavorites(LoadFavorites event, Emitter emit) async {}
  void _handleAddToFavorites(AddToFavorites event, Emitter emit) {}
  void _handleRemoveFromFavorites(RemoveFromFavorites event, Emitter emit) {}
}
