import 'package:itemdetail_depth/models/specific_item_detail_model.dart';

import 'package:flutter/material.dart';

class CustomPost extends StatelessWidget {
  SpecificItemDetailModel obj;
  CustomPost({super.key, required this.obj});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        //color: Colors.pink,
        color: const Color.fromRGBO(243, 246, 248, 1),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
          ),
        ],
      ),
      child: InkWell(
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  height: 120,
                  //color: Colors.amber,
                  color: const Color.fromRGBO(243, 246, 248, 1),
                  child: Stack(alignment: Alignment.center, children: [
                    Positioned(
                      top: 0,
                      left: 90,
                      child: Image.asset(
                        obj.img,
                        fit: BoxFit.fill,
                        width: 100,
                        height: 120,
                      ),
                    ),
                  ]),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      obj.name,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          const TextStyle(color: Colors.black54, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      obj.description,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          const TextStyle(color: Colors.black54, fontSize: 15),
                    ),
                  ],
                ),
              ],
            )),
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //       builder: (context) => ItemDetail(
          //             obj: obj,
          //           )),
          //);
        },
      ),
    );
  }
}
