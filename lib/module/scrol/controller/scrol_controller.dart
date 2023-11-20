import 'package:flutter/material.dart';
import 'package:flutter_layout/core.dart';
import '../view/scrol_view.dart';

class ScrolController extends State<ScrolView> {
  static late ScrolController instance;
  late ScrolView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
