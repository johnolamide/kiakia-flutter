import '/flutter_flow/flutter_flow_util.dart';
import 'edit_display_name_component_widget.dart'
    show EditDisplayNameComponentWidget;
import 'package:flutter/material.dart';

class EditDisplayNameComponentModel
    extends FlutterFlowModel<EditDisplayNameComponentWidget> {
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
