import 'package:flutter/material.dart';
import 'package:flutter_layout/core.dart';
import '../view/fittedbox_view.dart';

class FittedboxController extends State<FittedboxView> {
  static late FittedboxController instance;
  late FittedboxView view;

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
