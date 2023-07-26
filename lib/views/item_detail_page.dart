import 'package:flutter/material.dart';
import 'package:itemdetail_depth/utils/appstring.dart';
import 'package:itemdetail_depth/views/specific_item_view_details.dart';
import 'bottom_sheet_bar.dart';
import '../widgets/custom_post.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(children: const [
              Icon(Icons.arrow_back),
              SizedBox(
                width: 120,
              ),
              Text("SPEAKERS"),
              SizedBox(
                width: 120,
              ),
              Icon(Icons.multiple_stop_outlined)
            ]),
            const SizedBox(
              height: 20,
            ),
            CustomPost(
              obj: AppString.specificitemlist[0],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 30.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: AppString.options.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.white70,
                        padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                        child: Text(AppString.options[index],
                            style: const TextStyle(
                                color: Colors.black87, fontSize: 15)),
                      ),
                    ),
                    const SizedBox(width: 50),
                  ]);
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 350.0,
              width: 400,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: AppString.options.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CustomPost(
                          obj: AppString.specificitemlist[index],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 30,
              child: BottomSheetBar(),
            ),
            //  ],
            //)
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: const Color.fromRGBO(255, 219, 71, 0.4),
        child: InkWell(
          child: const Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SpecificItemViewDetail()));
          },
        ),
      ),
    );
  }
}
