import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../manger/cubit_navbar/navigationbarcubit_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key ,});

  @override
  Widget build(BuildContext context) {



    return BlocConsumer<NavigationBarCubit, NavigationBarState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        final cubit = NavigationBarCubit.get(context);
        return Scaffold(
          body: cubit.bottomScreens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              cubit.changeBottom(index);
            },
            currentIndex: cubit.currentIndex,
            elevation: 2,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedLabelStyle: const TextStyle(color: Colors.grey),
            items: const [
              BottomNavigationBarItem(
                  label: '',
                  icon: FaIcon(FontAwesomeIcons.house)),
              BottomNavigationBarItem(
                  label: '',
                  icon:  FaIcon(FontAwesomeIcons.heart)),
              BottomNavigationBarItem(
                  label: '',
                  icon:FaIcon(FontAwesomeIcons.grip)),
              BottomNavigationBarItem(
                  label: '',
                  icon:FaIcon(FontAwesomeIcons.sellcast)),
            ],
          ),
        );
      },
    );
  }
}
