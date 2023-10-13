part of 'navigationbarcubit_cubit.dart';

@immutable
abstract class NavigationBarState {}

class NavigationBarStateInitial extends NavigationBarState {}
class NavigationBarStateSucces extends NavigationBarState {}
class NavigationBarStateError extends NavigationBarState {}
class NavigationBarStateLoading extends NavigationBarState {}
