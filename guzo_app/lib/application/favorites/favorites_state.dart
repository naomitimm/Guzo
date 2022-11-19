part of 'favorites_bloc.dart';

@immutable
abstract class FavoritesState extends Equatable {}

class FavoritesLoading extends FavoritesState {
  @override
  List<Object?> get props => [];
}

class FavoritesLoadingSuccessful extends FavoritesState {
  final List<Sight> sights;
  FavoritesLoadingSuccessful({this.sights = const <Sight>[]});
  @override
  List<Object?> get props => [sights];
}

class FavoritesLoadingFailed extends FavoritesState {
  final Exception error;
  FavoritesLoadingFailed({required this.error});
  @override
  List<Object?> get props => [error];
}

class AddedToFavorites extends FavoritesState {
  @override
  List<Object?> get props => [];
}
