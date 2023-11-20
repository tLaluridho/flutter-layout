import 'package:flutter/material.dart';
import 'package:flutter_layout/core.dart';
import '../controller/stack_controller.dart';

class StackView extends StatefulWidget {
  const StackView({Key? key}) : super(key: key);

  Widget build(context, StackController controller) {
    controller.view = this;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          "Dashboard",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: const [],
      ),
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                height: 160,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                ),
              ),
              Positioned(
                left: 20,
                right: 20,
                top: 50,
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 24,
                        offset: Offset(0, 11),
                      ),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  @override
  State<StackView> createState() => StackController();
}
