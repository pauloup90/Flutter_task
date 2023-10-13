import 'package:flutter/material.dart';
import 'package:mobile_and_laptop_store/core/styles.dart';
import 'package:mobile_and_laptop_store/presentation/widgets/app_bar.dart';
import 'package:mobile_and_laptop_store/presentation/widgets/black_friday_widgets.dart';
import 'package:mobile_and_laptop_store/presentation/widgets/gridview.dart';
import 'package:mobile_and_laptop_store/presentation/widgets/special_offers.dart';

import '../../manger/cubit_products/cubit_products_cubit.dart';
import '../widgets/offars_wid.dart';
import '../widgets/search_bar.dart';
import '../widgets/view_all.dart';

class HomeBody extends StatelessWidget {

  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      final cubit = ProductsCubit.get(context);
      cubit.productsCubit();
      return DefaultTabController(
        length: 5,
        child: Scaffold(
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Appbar(),
                const SizedBox(
                  height: 21,
                ),
                const SearchBarWid(),
                //TODO cubit search //
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OffarsWid()));
                  },
                  child: const BlackFriday(token: '',),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TabBar(
                  indicatorWeight: 1,
                  indicatorColor: Colors.white,
                  enableFeedback: false,
                  dividerColor: Colors.black,
                  labelColor: Colors.black,
                  automaticIndicatorColorAdjustment: false,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Text('All', style: Styles.meni),
                    Text('Mobile', style: Styles.meni),
                    Text('Laptop', style: Styles.meni),
                    Text('Watch', style: Styles.meni),
                    Text('Camera', style: Styles.meni),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),

                const SizedBox(
                  height: 280,
                  child: SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child:



                    GridViewItems(),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ViewAll()
                      ));
                },
                child:    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text('Special offers'),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Text('view all'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child:    Container(
                            width: 44,
                            height: 0.5,
                            color: Colors.black,
                          ),),
                      ],
                    ),
                  ],
                ),),



                const Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 15, right: 15),
                  child: SizedBox(
                      height: 110,
                      width: double.infinity,
                      child: SpecialOffers()),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
