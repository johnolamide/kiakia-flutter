import '/flutter_flow/flutter_flow_util.dart';
import 'order_summary_page_widget.dart' show OrderSummaryPageWidget;
import 'package:flutter/material.dart';

class OrderSummaryPageModel extends FlutterFlowModel<OrderSummaryPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
