import 'package:flutter/material.dart';
import 'package:flutter_layout/core.dart';
import '../view/mediaquery_view.dart';

class MediaqueryController extends State<MediaqueryView> {
  static late MediaqueryController instance;
  late MediaqueryView view;

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
