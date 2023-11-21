import 'package:flutter/material.dart';
import 'package:flutter_layout/core.dart';
import '../controller/fittedbox_controller.dart';

class FittedboxView extends StatefulWidget {
  const FittedboxView({Key? key}) : super(key: key);

  Widget build(context, FittedboxController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fittedbox"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Icon(
                Icons.developer_board,
                size: 24.0,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: const Icon(
                  Icons.developer_board,
                  size: 24.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: const Icon(
                        Icons.developer_board,
                        size: 90.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                      ),
                      child: const FittedBox(
                        child: Icon(
                          Icons.developer_board,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FittedboxView> createState() => FittedboxController();
}
