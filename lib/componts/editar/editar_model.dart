import '/flutter_flow/flutter_flow_util.dart';
import 'editar_widget.dart' show EditarWidget;
import 'package:flutter/material.dart';

class EditarModel extends FlutterFlowModel<EditarWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for titulo widget.
  FocusNode? tituloFocusNode;
  TextEditingController? tituloController;
  String? Function(BuildContext, String?)? tituloControllerValidator;
  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoController;
  String? Function(BuildContext, String?)? descricaoControllerValidator;
  // State field(s) for categoria widget.
  FocusNode? categoriaFocusNode;
  TextEditingController? categoriaController;
  String? Function(BuildContext, String?)? categoriaControllerValidator;
  // State field(s) for codpag widget.
  FocusNode? codpagFocusNode;
  TextEditingController? codpagController;
  String? Function(BuildContext, String?)? codpagControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tituloFocusNode?.dispose();
    tituloController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoController?.dispose();

    categoriaFocusNode?.dispose();
    categoriaController?.dispose();

    codpagFocusNode?.dispose();
    codpagController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
