import 'package:flutter/material.dart';
import 'package:flutter_layout/core.dart';
import '../view/expanded_view.dart';

class ExpandedController extends State<ExpandedView> {
  static late ExpandedController instance;
  late ExpandedView view;

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
