import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'resetar_senha_widget.dart' show ResetarSenhaWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

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
