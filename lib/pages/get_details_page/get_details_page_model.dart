import '/flutter_flow/flutter_flow_util.dart';
import 'get_details_page_widget.dart' show GetDetailsPageWidget;
import 'package:flutter/material.dart';

class GetDetailsPageModel extends FlutterFlowModel<GetDetailsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Name widget.
  FocusNode? nameFocusNode1;
  TextEditingController? nameTextController1;
  String? Function(BuildContext, String?)? nameTextController1Validator;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode2;
  TextEditingController? nameTextController2;
  String? Function(BuildContext, String?)? nameTextController2Validator;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode3;
  TextEditingController? nameTextController3;
  String? Function(BuildContext, String?)? nameTextController3Validator;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode4;
  TextEditingController? nameTextController4;
  String? Function(BuildContext, String?)? nameTextController4Validator;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode5;
  TextEditingController? nameTextController5;
  String? Function(BuildContext, String?)? nameTextController5Validator;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode6;
  TextEditingController? nameTextController6;
  String? Function(BuildContext, String?)? nameTextController6Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode1?.dispose();
    nameTextController1?.dispose();

    nameFocusNode2?.dispose();
    nameTextController2?.dispose();

    nameFocusNode3?.dispose();
    nameTextController3?.dispose();

    nameFocusNode4?.dispose();
    nameTextController4?.dispose();

    nameFocusNode5?.dispose();
    nameTextController5?.dispose();

    nameFocusNode6?.dispose();
    nameTextController6?.dispose();
  }
}
