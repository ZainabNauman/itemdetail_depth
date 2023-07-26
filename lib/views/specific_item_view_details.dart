import 'package:flutter/material.dart';
import 'package:itemdetail_depth/utils/appstring.dart';
import 'package:itemdetail_depth/views/specific_item_rating_bar.dart';
import 'package:itemdetail_depth/widgets/custom_button.dart';

import 'bottom_sheet_bar.dart';

class SpecificItemViewDetail extends StatelessWidget {
  const SpecificItemViewDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                color: const Color.fromRGBO(243, 246, 248, 1),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Stack(children: [
                    Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Row(children: const [
                              Icon(Icons.arrow_back),
                              SizedBox(
                                width: 310,
                              ),
                              Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.black,
                              )
                            ]),
                            const SizedBox(
                              height: 40,
                            ),
                            const Text(
                              "Speakers",
                              style: TextStyle(
                                  color: Color.fromARGB(23, 23, 23, 1)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 220,
                              child: Text(
                                AppString.specificitemlist[0].name,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(fontSize: 30),
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const Text(
                              "From",
                              style: TextStyle(
                                  color: Color.fromARGB(23, 23, 23, 1)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              AppString.recommendedoption[0].price,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const Text(
                              "Available Colors",
                              style: TextStyle(
                                  color: Color.fromARGB(23, 23, 23, 1)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 50.0,
                              //color: Colors.amber,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                itemBuilder: (BuildContext context, int index) {
                                  return Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          color: AppString.color[index],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      )
                                    ],
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        FractionallySizedBox(
                          alignment: Alignment.bottomCenter,
                          widthFactor: 1,
                          child: Container(
                              height: 290,
                              width: 400,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    const Text(
                                      "Wireless, smart home speaker",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const Text(
                                        "A wireless speaker with a dynamic acoustic performance designed to be positioned up against the wall on a shelf or side table in your home. Impressive sound compared to its size."),
                                    const SizedBox(
                                      height: 45,
                                    ),
                                    CustomButton(
                                        text: "ADD TO CART",
                                        onTap: () {
                                          gotoViewDetail(context);
                                        }),
                                  ],
                                ),
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                          child: SpecificItemRatingBar(),
                        ),
                      ],
                    ),
                    Positioned(
                        top: 300,
                        right: 40,
                        child: Image.asset(AppString.specificitemlist[0].img))
                  ]),
                ))));
  }

  void gotoViewDetail(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SpecificItemRatingBar()),
    );
  }
}
