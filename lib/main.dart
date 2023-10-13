import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:mobile_and_laptop_store/data/stripe_keys.dart';
import 'package:mobile_and_laptop_store/manger/cubit_products/cubit_products_cubit.dart';

import 'package:mobile_and_laptop_store/splash_screen.dart';

import 'core/colors.dart';
import 'manger/cubit_navbar/navigationbarcubit_cubit.dart';

void main() {
  Stripe.publishableKey= ApiKeys.publishableKey;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NavigationBarCubit()),
        BlocProvider(create: (context) => ProductsCubit()..productsCubit()),
      ],
      child: BlocConsumer<NavigationBarCubit, NavigationBarState>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,
                bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                    selectedIconTheme: IconThemeData(
                      color: Colors.black,
                      size: 22,
                    ),
                    unselectedIconTheme:
                        IconThemeData(color: CustemColors.gray2))),
            home: const SplashScree(),
          );
        },
      ),
    );
  }
}
