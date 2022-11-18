part of 'favorites_bloc.dart';

@immutable
abstract class FavoritesEvent extends Equatable {}

class LoadFavorites extends FavoritesEvent {
  LoadFavorites();
  @override
  List<Object?> get props => [];
}

class AddToFavorites extends FavoritesEvent {
  final Sight sight;
  AddToFavorites({required this.sight});
  @override
  List<Object?> get props => [sight];
}

class RemoveFromFavorites extends FavoritesEvent {
  final Sight sight;
  RemoveFromFavorites({required this.sight});
  @override
  List<Object?> get props => [sight];
}
