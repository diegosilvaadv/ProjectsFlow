import '/flutter_flow/flutter_flow_util.dart';
import 'esqueceu_senha_widget.dart' show EsqueceuSenhaWidget;
import 'package:flutter/material.dart';

class EsqueceuSenhaModel extends FlutterFlowModel<EsqueceuSenhaWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for senhaDesk widget.
  FocusNode? senhaDeskFocusNode;
  TextEditingController? senhaDeskController;
  String? Function(BuildContext, String?)? senhaDeskControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    senhaDeskFocusNode?.dispose();
    senhaDeskController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
