import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../presentation/view/compani.dart';
import '../../presentation/view/home_body.dart';
import '../../presentation/view/info.dart';
import '../../presentation/view/lieks.dart';

part 'navigationbarcubit_state.dart';

class NavigationBarCubit extends Cubit<NavigationBarState> {
  NavigationBarCubit() : super(NavigationBarStateInitial());

  static NavigationBarCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> bottomScreens = const [
    HomeBody(),
    Lieks(),
    Company(),
    Info(),
  ];
  @override
  void changeBottom(int index) {
    currentIndex = index;
    emit(NavigationBarStateSucces());
  }
}
