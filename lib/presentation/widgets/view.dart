import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mobile_and_laptop_store/presentation/widgets/specialoffers_items.dart';

import '../../manger/cubit_products/cubit_products_cubit.dart';
import '../view/detils_home.dart';

class ViewSpecialOffers extends StatelessWidget {
  const ViewSpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = ProductsCubit.get(context);

    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsStateError) {
          return Text(state.errorMsg);
        }
        if (state is ProductsStateLoading) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
        return




          ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: cubit.products.length,
              itemBuilder: (BuildContext context, int index) {
                return
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetilsHome(
                                  image: '${cubit.products[index].image}',
                                  price: '${cubit.products[index].price}',
                                  title: '${cubit.products[index].name}',
                                  description: '${cubit.products[index].description}',
                                )));
                      },
                      child:   SpecialOffersItems(
                        image: '${cubit.products[index].image}',
                        title: '${cubit.products[index].name}',
                        price: '${cubit.products[index].price}',
                      ));





              });
      },
    );
  }
}
