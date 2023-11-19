import 'package:flutter/material.dart';
import 'package:flutter_layout/core.dart';
import '../controller/dashboard_controller.dart';

//child hanya bisa di isi oleh 1 widged sedangkan children bisa di isi oleh banyak widged

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                color: Colors.red[100],
                child: const Row(
                  //di bawah ini untuk mengatur vertical
                  //crostart
                  //crocenter
                  //croend
                  crossAxisAlignment:
                      CrossAxisAlignment.center, //hidupkan container 3 di bawah

                  //di bawah ini untuk mengatur horizontal
                  //mainstart
                  //maincenter
                  //mainend
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.developer_board,
                      size: 24.0,
                    ),
                    // Container(
                    //   width: 100.0,
                    //   height: 100.0,
                    //   color: Colors.red,
                    // ),
                    // Container(
                    //   width: 100.0,
                    //   height: 100.0,
                    //   color: Colors.blue,
                    // ),
                    // Container(
                    //   width: 100.0,
                    //   height: 100.0,
                    //   color: Colors.purple,
                    // ),
                    // const SizedBox(
                    //   height: 20.0,
                    // ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                color: Colors.yellow[100],
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.8,
                child: Column(
                  //di bawah ini untuk mengatur horizontal
                  //crostart
                  //crocenter
                  //croend
                  crossAxisAlignment: CrossAxisAlignment.center,

                  //di bawah ini untuk mengatur vertical
                  //mainstart
                  //maincenter
                  //mainend
                  mainAxisAlignment: MainAxisAlignment.end,
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
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
