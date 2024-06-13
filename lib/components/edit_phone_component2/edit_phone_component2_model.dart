import '/flutter_flow/flutter_flow_util.dart';
import 'edit_phone_component2_widget.dart' show EditPhoneComponent2Widget;
import 'package:flutter/material.dart';

class EditPhoneComponent2Model
    extends FlutterFlowModel<EditPhoneComponent2Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
