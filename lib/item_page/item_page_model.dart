import '/flutter_flow/flutter_flow_util.dart';
import 'item_page_widget.dart' show ItemPageWidget;
import 'package:flutter/material.dart';

class ItemPageModel extends FlutterFlowModel<ItemPageWidget> {
  ///  Local state fields for this page.

  int quantity = 0;

  double amount = 0.0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
