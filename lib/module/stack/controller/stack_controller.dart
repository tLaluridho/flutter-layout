import 'package:flutter/material.dart';
import 'package:flutter_layout/core.dart';
import '../view/stack_view.dart';

class StackController extends State<StackView> {
  static late StackController instance;
  late StackView view;

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
