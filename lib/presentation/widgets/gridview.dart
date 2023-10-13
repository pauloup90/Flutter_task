import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_and_laptop_store/manger/cubit_products/cubit_products_cubit.dart';
import 'package:mobile_and_laptop_store/presentation/widgets/items_sec_all.dart';

import '../view/detils_home.dart';

class GridViewItems extends StatelessWidget {
  const GridViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      final cubit = ProductsCubit.get(context);
      return BlocBuilder<ProductsCubit, ProductsState>(
        builder: (context, state) {
          if (state is ProductsStateError) {
            return Text(state.errorMsg);
          }
          if (state is ProductsStateLoading) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Padding(
                        padding: const EdgeInsets.only(top: 100.0),
                        child: SizedBox(
                          height: 50,
                          child: Image.asset('assets/icons/bg.gif'),
                        ))),
                const SizedBox(
                  width: 150,
                ),
                Center(
                    child: Padding(
                        padding: const EdgeInsets.only(top: 100.0),
                        child: SizedBox(
                          height: 50,
                          child: Image.asset('assets/icons/bg.gif'),
                        ))),
              ],
            );
          }
          return GridView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.all(5),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.5),
              itemCount: cubit.products.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetilsHome(
                                    image: '${cubit.products[index].image}',
                                    price: '${cubit.products[index].price}',
                                    title: '${cubit.products[index].name}',
                                description: '${cubit.products[index].description}',
                                  )));
                    },
                    child: ItemsSecAll(
                      image: '${cubit.products[index].image}',
                      title: '${cubit.products[index].name}',
                      price: '${cubit.products[index].price}',
                    ));
              });
        },
      );
    });
  }
}
