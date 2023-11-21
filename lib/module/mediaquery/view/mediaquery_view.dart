import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_layout/core.dart';
import '../controller/mediaquery_controller.dart';

class MediaqueryView extends StatefulWidget {
  const MediaqueryView({Key? key}) : super(key: key);

  Widget build(context, MediaqueryController controller) {
    controller.view = this;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Mediaquery"),
          actions: const [],
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  //gunakan layoutbuilder lalu tambahkan constrain di dalam context
                  child: LayoutBuilder(builder: (context, Constraints) {
                    return Container(
                      height: 100,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                      ),
                      child: Row(
                        children: [
                          //saya mau
                          //text ini berukan 10% dari lebar widget warna merah
                          Text(
                            "Ridho",
                            style: TextStyle(
                              //sehingga ukuran text ridho menjadi 10% dari lebar widget warna merah
                              fontSize: Constraints.biggest.width * 0.1,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ],
            ),
          ],
        )
        // Column(
        //   children: [
        //     Text(
        //       "${MediaQuery.of(context).size.width}",
        //       style: TextStyle(
        //         fontSize: 30.0,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //     Text(
        //       "${MediaQuery.of(context).size.height}",
        //       style: TextStyle(
        //         fontSize: 30.0,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //     CircleAvatar(
        //       radius: MediaQuery.of(context).size.width * 0.3,
        //       backgroundImage: NetworkImage(
        //         "https://i.ibb.co/PGv8ZzG/me.jpg",
        //       ),
        //     ),
        //     Text(
        //       "Ridho Ganteng",
        //       style: TextStyle(
        //         color: Colors.red,
        //         //ukuran font 10% dari layar lebar
        //         fontSize: MediaQuery.of(context).size.width * 0.1,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //     Container(
        //       height: 100,
        //       width: MediaQuery.of(context).size.width * 0.3,
        //       decoration: BoxDecoration(
        //         color: Colors.blue,
        //       ),
        //     ),
        //   ],
        // ),
        );
  }

  @override
  State<MediaqueryView> createState() => MediaqueryController();
}
