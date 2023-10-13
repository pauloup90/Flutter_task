import 'package:flutter/material.dart';
import 'package:mobile_and_laptop_store/core/colors.dart';
import 'package:mobile_and_laptop_store/core/styles.dart';

class ColorsBottomSheet extends StatelessWidget {
  const ColorsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 350,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: CustemColors.gray),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                        ),
                        height: 220,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                height: 3,
                                width: 34),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Colors.grey,
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Grey',
                                    style: Styles.Smoll.copyWith(fontSize: 17),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 1,
                              color: CustemColors.gray,
                              width: double.infinity,
                            ),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Red',
                                    style: Styles.Smoll.copyWith(fontSize: 17),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 1,
                              color: CustemColors.gray,
                              width: double.infinity,
                            ),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Colors.black,
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Black',
                                    style: Styles.Smoll.copyWith(fontSize: 17),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 1,
                              color: CustemColors.gray,
                              width: double.infinity,
                            ),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Colors.blue,
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Blue',
                                    style: Styles.Smoll.copyWith(fontSize: 17),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 1,
                              color: CustemColors.gray,
                              width: double.infinity,
                            ),
                          ],
                        ),
                      );
                    });
              },
              icon: const Icon(Icons.keyboard_arrow_down_outlined)),
          const Spacer(),
          const Center(child: Text('Colors')),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
