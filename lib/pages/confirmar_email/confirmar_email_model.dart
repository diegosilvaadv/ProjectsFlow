import '/flutter_flow/flutter_flow_util.dart';
import 'confirmar_email_widget.dart' show ConfirmarEmailWidget;
import 'package:flutter/material.dart';

class ConfirmarEmailModel extends FlutterFlowModel<ConfirmarEmailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for seunomeMobile widget.
  FocusNode? seunomeMobileFocusNode;
  TextEditingController? seunomeMobileController;
  String? Function(BuildContext, String?)? seunomeMobileControllerValidator;
  // State field(s) for seunomeDesktop widget.
  FocusNode? seunomeDesktopFocusNode;
  TextEditingController? seunomeDesktopController;
  String? Function(BuildContext, String?)? seunomeDesktopControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    seunomeMobileFocusNode?.dispose();
    seunomeMobileController?.dispose();

    seunomeDesktopFocusNode?.dispose();
    seunomeDesktopController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
