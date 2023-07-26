import 'package:flutter/material.dart';
import '../utils/appstring.dart';
import '../widgets/custom_button.dart';

class BottomSheetBar extends StatefulWidget {
  const BottomSheetBar({super.key});

  @override
  State<BottomSheetBar> createState() => _BottomSheetBarState();
}

class _BottomSheetBarState extends State<BottomSheetBar> {
  Widget build(BuildContext context) {
    double _startValue = 20;
    double _endValue = 100;
    return Scaffold(
      //backgroundColor: Colors.white,
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
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 30,
                                ),
                                const Text(
                                  "Gender",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                SizedBox(
                                  height: 60.0,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 3,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Row(
                                        children: [
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            child: Container(
                                              height: 50,
                                              width: 80,
                                              alignment: Alignment.center,
                                              color: const Color.fromRGBO(
                                                  243, 246, 248, 1),
                                              child: Text(
                                                AppString.gender[index],
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
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
                                const SizedBox(
                                  height: 30,
                                ),
                                const Text(
                                  "Price Rate",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                RangeSlider(
                                  min: 0.0,
                                  max: 100.0,
                                  divisions: 10,
                                  labels: RangeLabels(
                                    _startValue.round().toString(),
                                    _endValue.round().toString(),
                                  ),
                                  values: RangeValues(_startValue, _endValue),
                                  onChanged: (values) {
                                    setState(() {
                                      _startValue = values.start;
                                      _endValue = values.end;
                                    });
                                  },
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                          height: 50,
                                          width: 80,
                                          alignment: Alignment.center,
                                          color: const Color.fromRGBO(
                                              243, 246, 248, 1),
                                          child: const Text("Min")),
                                    ),
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Container(
                                            height: 50,
                                            width: 80,
                                            alignment: Alignment.center,
                                            color: const Color.fromRGBO(
                                                243, 246, 248, 1),
                                            child: const Text("Min")))
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                const Text(
                                  "Color",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                SizedBox(
                                  height: 60.0,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: AppString.color.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Row(
                                        children: [
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            child: Container(
                                              height: 50,
                                              width: 50,
                                              alignment: Alignment.center,
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
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    CustomButton(
                                        onTap: () {},
                                        text: 'APPLY FILTERS (4)',
                                        width: 200),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    CustomButton(
                                      text: "RESET",
                                      width: 100,
                                      backgroundcolor: const Color.fromRGBO(
                                          243, 246, 248, 1),
                                      onTap: () {},
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    });
              },
              child: const Icon(
                Icons.horizontal_rule_sharp,
                color: Colors.black,
              )),
        ],
      ),
    );
  }
}
