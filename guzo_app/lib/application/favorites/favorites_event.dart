part of 'favorites_bloc.dart';

@immutable
abstract class FavoritesEvent extends Equatable {}

class LoadFavorites extends FavoritesEvent {
  final List<Sight> sights;

  LoadFavorites({this.sights = const <Sight>[]});
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

class FavoritedASight extends FavoritesEvent {
  @override
  List<Object?> get props => [];
}
