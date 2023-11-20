import 'package:flutter/material.dart';
import 'package:flutter_layout/core.dart';
import '../controller/scrol_controller.dart';

class ScrolView extends StatefulWidget {
  const ScrolView({Key? key}) : super(key: key);

  Widget build(context, ScrolController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scrol"),
        actions: const [],
      ),
      // body: SingleChildScrollView(
      //   controller: ScrollController(),
      //   child: const Column(
      //     children: [
      //       // Row(
      //       //   children: [
      //       //     Container(
      //       //       width: 100.0,
      //       //       height: 100.0,
      //       //       color: Colors.red,
      //       //     ),
      //       //     Container(
      //       //       width: 100.0,
      //       //       height: 100.0,
      //       //       color: Colors.blue,
      //       //     ),
      //       //     Container(
      //       //       width: 100.0,
      //       //       height: 100.0,
      //       //       color: Colors.purple,
      //       //     ),
      //       //   ],
      //       // ),
      //       // const Text(
      //       //   "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      //       //   style: TextStyle(
      //       //     fontSize: 20.0,
      //       //     fontWeight: FontWeight.bold,
      //       //   ),
      //       // ),
      //       // Row(
      //       //   children: [
      //       //     Container(
      //       //       width: 100.0,
      //       //       height: 100.0,
      //       //       color: Colors.red,
      //       //     ),
      //       //     Container(
      //       //       width: 100.0,
      //       //       height: 100.0,
      //       //       color: Colors.blue,
      //       //     ),
      //       //     Container(
      //       //       width: 100.0,
      //       //       height: 100.0,
      //       //       color: Colors.purple,
      //       //     ),
      //       //   ],
      //       // ),
      //       // Row(
      //       //   children: [
      //       //     Container(
      //       //       width: 100.0,
      //       //       height: 100.0,
      //       //       color: Colors.red,
      //       //     ),
      //       //     Container(
      //       //       width: 100.0,
      //       //       height: 100.0,
      //       //       color: Colors.blue,
      //       //     ),
      //       //     Container(
      //       //       width: 100.0,
      //       //       height: 100.0,
      //       //       color: Colors.purple,
      //       //     ),
      //       //   ],
      //       // ),
      //     ],
      //   ),
      // ),

      //di body awalnya column di ubah ke scrolView
      body: SingleChildScrollView(
        //axish
        //scrollDirection: Axis.horizontal,
        controller: ScrollController(),
        child: Column(
          children: [
            //dibaah ini awalnya row lalu ubah ke kanan agar saat overflow rownya pindah ke bawah
            Wrap(
              spacing: 15, //jarak horizontal
              runSpacing: 25, //jarak vertical
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.red,
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.purple,
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.pink,
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.orange,
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.yellow,
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.green,
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.black,
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.purple,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ScrolView> createState() => ScrolController();
}
