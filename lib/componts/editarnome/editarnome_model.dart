import '/flutter_flow/flutter_flow_util.dart';
import 'editarnome_widget.dart' show EditarnomeWidget;
import 'package:flutter/material.dart';

class EditarnomeModel extends FlutterFlowModel<EditarnomeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for titulo widget.
  FocusNode? tituloFocusNode;
  TextEditingController? tituloController;
  String? Function(BuildContext, String?)? tituloControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tituloFocusNode?.dispose();
    tituloController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
