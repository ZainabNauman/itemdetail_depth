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
                                children: [
                                  const Text(
                                    "5",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Container(
                                      width: 12,
                                      height: 12,
                                      color: const Color.fromRGBO(
                                          255, 219, 71, 0.4),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Container(
                                      width: 150,
                                      height: 12,
                                      color: const Color.fromRGBO(
                                          255, 219, 71, 0.4),
                                    ),
                                  ),
                                  const Expanded(
                                    child: SizedBox(
                                      width: 10,
                                    ),
                                  ),
                                  const Text(
                                    "3%",
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "4",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Container(
                                      width: 12,
                                      height: 12,
                                      color: const Color.fromRGBO(
                                          255, 219, 71, 0.4),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Container(
                                      width: 200,
                                      height: 12,
                                      color: const Color.fromRGBO(
                                          255, 219, 71, 0.4),
                                    ),
                                  ),
                                  const Expanded(
                                    child: SizedBox(
                                      width: 10,
                                    ),
                                  ),
                                  const Text(
                                    "31%",
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "3",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Container(
                                      width: 12,
                                      height: 12,
                                      color: const Color.fromRGBO(
                                          255, 219, 71, 0.4),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Container(
                                      width: 10,
                                      height: 12,
                                      color: const Color.fromRGBO(
                                          255, 219, 71, 0.4),
                                    ),
                                  ),
                                  const Expanded(
                                    child: SizedBox(
                                      width: 10,
                                    ),
                                  ),
                                  const Text(
                                    "40%",
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "2",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Container(
                                      width: 12,
                                      height: 12,
                                      color: const Color.fromRGBO(
                                          255, 219, 71, 0.4),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Container(
                                      width: 100,
                                      height: 12,
                                      color: const Color.fromRGBO(
                                          255, 219, 71, 0.4),
                                    ),
                                  ),
                                  const Expanded(
                                    child: SizedBox(
                                      width: 10,
                                    ),
                                  ),
                                  const Text(
                                    "99%",
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "1",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Container(
                                      width: 12,
                                      height: 12,
                                      color: const Color.fromRGBO(
                                          255, 219, 71, 0.4),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Container(
                                      width: 60,
                                      height: 12,
                                      color: const Color.fromRGBO(
                                          255, 219, 71, 0.4),
                                    ),
                                  ),
                                  const Expanded(
                                    child: SizedBox(
                                      width: 10,
                                    ),
                                  ),
                                  const Text(
                                    "55%",
                                    style: TextStyle(fontSize: 20),
                                  )
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
