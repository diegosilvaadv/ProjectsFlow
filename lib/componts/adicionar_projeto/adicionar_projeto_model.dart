import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/componts/projeto_criado/projeto_criado_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'adicionar_projeto_widget.dart' show AdicionarProjetoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AdicionarProjetoModel extends FlutterFlowModel<AdicionarProjetoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey8 = GlobalKey<FormState>();
  final formKey7 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  // State field(s) for titulo widget.
  FocusNode? tituloFocusNode;
  TextEditingController? tituloController;
  String? Function(BuildContext, String?)? tituloControllerValidator;
  String? _tituloControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length > 100) {
      return 'Titulo com Máximo 100 caracteres';
    }

    return null;
  }

  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoController;
  String? Function(BuildContext, String?)? descricaoControllerValidator;
  String? _descricaoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length > 500) {
      return 'Descrição com Máximo de 500 caracteres';
    }

    return null;
  }

  // State field(s) for requisitos widget.
  FocusNode? requisitosFocusNode;
  TextEditingController? requisitosController;
  String? Function(BuildContext, String?)? requisitosControllerValidator;
  String? _requisitosControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length > 500) {
      return 'Requisito com Máximo de 500 caracteres';
    }

    return null;
  }

  // State field(s) for linkprojeto widget.
  FocusNode? linkprojetoFocusNode;
  TextEditingController? linkprojetoController;
  String? Function(BuildContext, String?)? linkprojetoControllerValidator;
  String? _linkprojetoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (!RegExp(kTextValidatorWebsiteRegex).hasMatch(val)) {
      return 'Link Inválido';
    }
    return null;
  }

  // State field(s) for linkVideo widget.
  FocusNode? linkVideoFocusNode;
  TextEditingController? linkVideoController;
  String? Function(BuildContext, String?)? linkVideoControllerValidator;
  String? _linkVideoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (!RegExp(kTextValidatorWebsiteRegex).hasMatch(val)) {
      return 'Link Inválido';
    }
    return null;
  }

  // State field(s) for precoprojeto widget.
  FocusNode? precoprojetoFocusNode;
  TextEditingController? precoprojetoController;
  final precoprojetoMask = MaskTextInputFormatter(mask: 'R\$ ###');
  String? Function(BuildContext, String?)? precoprojetoControllerValidator;
  String? _precoprojetoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    tituloControllerValidator = _tituloControllerValidator;
    descricaoControllerValidator = _descricaoControllerValidator;
    requisitosControllerValidator = _requisitosControllerValidator;
    linkprojetoControllerValidator = _linkprojetoControllerValidator;
    linkVideoControllerValidator = _linkVideoControllerValidator;
    precoprojetoControllerValidator = _precoprojetoControllerValidator;
  }

  void dispose() {
    tituloFocusNode?.dispose();
    tituloController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoController?.dispose();

    requisitosFocusNode?.dispose();
    requisitosController?.dispose();

    linkprojetoFocusNode?.dispose();
    linkprojetoController?.dispose();

    linkVideoFocusNode?.dispose();
    linkVideoController?.dispose();

    precoprojetoFocusNode?.dispose();
    precoprojetoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
