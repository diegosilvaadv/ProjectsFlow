import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'adcionar_code_widget.dart' show AdcionarCodeWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdcionarCodeModel extends FlutterFlowModel<AdcionarCodeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for titulo widget.
  FocusNode? tituloFocusNode;
  TextEditingController? tituloController;
  String? Function(BuildContext, String?)? tituloControllerValidator;
  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoController;
  String? Function(BuildContext, String?)? descricaoControllerValidator;
  // State field(s) for codigo widget.
  FocusNode? codigoFocusNode;
  TextEditingController? codigoController;
  String? Function(BuildContext, String?)? codigoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    tituloFocusNode?.dispose();
    tituloController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoController?.dispose();

    codigoFocusNode?.dispose();
    codigoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
