import '/flutter_flow/flutter_flow_util.dart';
import 'vendor_page_widget.dart' show VendorPageWidget;
import 'package:flutter/material.dart';

class VendorPageModel extends FlutterFlowModel<VendorPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
