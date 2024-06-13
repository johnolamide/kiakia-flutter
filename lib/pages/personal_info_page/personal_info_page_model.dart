import '/flutter_flow/flutter_flow_util.dart';
import 'personal_info_page_widget.dart' show PersonalInfoPageWidget;
import 'package:flutter/material.dart';

class PersonalInfoPageModel extends FlutterFlowModel<PersonalInfoPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
