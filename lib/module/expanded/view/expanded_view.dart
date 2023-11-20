import 'package:flutter/material.dart';
import 'package:flutter_layout/core.dart';
import '../controller/expanded_controller.dart';

class ExpandedView extends StatefulWidget {
  const ExpandedView({Key? key}) : super(key: key);

  Widget build(context, ExpandedController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 60.0,
                  height: 60.0,
                  color: Colors.red,
                ),
                Container(
                  width: 60.0,
                  height: 60.0,
                  color: Colors.blue,
                ),
                const Spacer(), //fungsi dari spacer adalah mendorong di bagaian belahan agar memakan sisa space yang ada berguna di column juga
                Container(
                  width: 60.0,
                  height: 60.0,
                  color: Colors.purple,
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Save"),
                ),
              ],
            ),
            Row(
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
                Expanded(
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Column(
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
                  Expanded(
                    child: Container(
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ExpandedView> createState() => ExpandedController();
}
