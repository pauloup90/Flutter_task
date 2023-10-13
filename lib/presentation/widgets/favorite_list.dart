import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../manger/cubit_products/cubit_products_cubit.dart';
import '../view/detils_home.dart';
import '../widgets/delet_list.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    void _doNothing() {}
    return Builder(builder: (context) {
      return BlocBuilder<ProductsCubit, ProductsState>(
        builder: (context, state) {
          final cubit = ProductsCubit.get(context);
          return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Slidable(
                    key: ValueKey(0),
                    startActionPane: ActionPane(
                      motion: ScrollMotion(),
                      dismissible: DismissiblePane(onDismissed: () {}),
                      children: [
                        SlidableAction(
                          backgroundColor: Color(0xFFFE4A49),
                          foregroundColor: Colors.white,
                          icon: Icons.delete,
                          label: 'Delete',
                          onPressed: (context) => _doNothing(),
                        ),
                        SlidableAction(
                          onPressed: (context) => _doNothing(),
                          backgroundColor: Color(0xFF21B7CA),
                          foregroundColor: Colors.white,
                          icon: Icons.share,
                          label: 'Share',
                        ),
                      ],
                    ),
                    endActionPane: ActionPane(
                      motion: ScrollMotion(),
                      children: [
                        SlidableAction(
                          flex: 2,
                          onPressed: (context) => _doNothing(),
                          backgroundColor: Color(0xFF7BC043),
                          foregroundColor: Colors.white,
                          icon: Icons.archive,
                          label: 'Archive',
                        ),
                        SlidableAction(
                          onPressed: (context) => _doNothing(),
                          backgroundColor: Color(0xFF0392CF),
                          foregroundColor: Colors.white,
                          icon: Icons.save,
                          label: 'Save',
                        ),
                      ],
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetilsHome(
                                      image: '${cubit.products[index].image}',
                                      price: '${cubit.products[index].price}',
                                      title: '${cubit.products[index].name}',
                                      description:
                                          '${cubit.products[index].description}',
                                    )));
                      },
                      child: DeletList(
                        image: '${cubit.products[index].image}',
                        price: '${cubit.products[index].price}',
                        title: '${cubit.products[index].name}',
                      ),
                    ));
              });
        },
      );
    });
  }
}
