import '/flutter_flow/flutter_flow_util.dart';
import 'resetar_senha_widget.dart' show ResetarSenhaWidget;
import 'package:flutter/material.dart';

class ResetarSenhaModel extends FlutterFlowModel<ResetarSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for seunomeMobile widget.
  FocusNode? seunomeMobileFocusNode;
  TextEditingController? seunomeMobileController;
  String? Function(BuildContext, String?)? seunomeMobileControllerValidator;
  // State field(s) for senhaDesk widget.
  FocusNode? senhaDeskFocusNode;
  TextEditingController? senhaDeskController;
  String? Function(BuildContext, String?)? senhaDeskControllerValidator;
  // Stores action output result for [Custom Action - updateSupabasePassword] action in Button-Login widget.
  bool? resposta;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    seunomeMobileFocusNode?.dispose();
    seunomeMobileController?.dispose();

    senhaDeskFocusNode?.dispose();
    senhaDeskController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
