import '/flutter_flow/flutter_flow_util.dart';
import 'address_page_widget.dart' show AddressPageWidget;
import 'package:flutter/material.dart';

class AddressPageModel extends FlutterFlowModel<AddressPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
