import 'package:flutter/material.dart';
import '../utils/size_helper.dart';
//import 'package:myapp/config/app_theme.dart';

class SpecificItemRatingBar extends StatelessWidget {
  const SpecificItemRatingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white)),
              onPressed: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return Column(mainAxisSize: MainAxisSize.min, children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Customer Review",
                          style: TextStyle(
                              color: const Color.fromRGBO(23, 23, 23, 1),
                              fontSize: displayWidth(context) * 0.04),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "4.0",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: displayWidth(context) * 0.15),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 25,
                                  width: 129,
                                  child: Expanded(
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) =>
                                          const Divider(
                                        color: Colors.black,
                                      ),
                                      itemCount: 5,
                                      itemBuilder: (context, index) =>
                                          const Padding(
                                              padding: EdgeInsets.all(1.0),
                                              child: Center(
                                                  child: Icon(
                                                      Icons.square_rounded))),
                                    ),
                                  ),
                                ),
                                const Text("1K Reviews"),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Text("data"),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Expanded(child: Text("5")),
                                  Text("3%")
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: const [
                                  Expanded(child: Text("4")),
                                  Text("31%")
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: const [
                                  Expanded(child: Text("3")),
                                  Text("40%")
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: const [
                                  Expanded(child: Text("2")),
                                  Text("99%")
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: const [
                                  Expanded(child: Text("1")),
                                  Text("55%")
                                ],
                              ),
                            ],
                          ),
                        )
                      ]);
                    });
              },
              child: const Icon(
                Icons.horizontal_rule_sharp,
                color: Colors.black,
              )),
        ]));
  }
}
