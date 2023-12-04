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
import '/flutter_flow/random_data_util.dart' as random_data;
import 'add_projetos_widget.dart' show AddProjetosWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddProjetosModel extends FlutterFlowModel<AddProjetosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey8 = GlobalKey<FormState>();
  final formKey7 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  final formKey10 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey9 = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for titulo widget.
  FocusNode? tituloFocusNode;
  TextEditingController? tituloController;
  String? Function(BuildContext, String?)? tituloControllerValidator;
  String? _tituloControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length < 20) {
      return 'Mínimo de 20  caracteres';
    }
    if (val.length > 100) {
      return 'Titulo com Máximo 100 caracteres';
    }

    return null;
  }

  // State field(s) for subtitulo widget.
  FocusNode? subtituloFocusNode;
  TextEditingController? subtituloController;
  String? Function(BuildContext, String?)? subtituloControllerValidator;
  String? _subtituloControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length < 100) {
      return 'Mínimo de 100 caracteres';
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

    if (val.length < 100) {
      return 'Mínimo de 100 caracteres';
    }
    if (val.length > 2000) {
      return 'Máximo de 2000 caracteres';
    }

    return null;
  }

  // State field(s) for linkProjeto widget.
  FocusNode? linkProjetoFocusNode;
  TextEditingController? linkProjetoController;
  String? Function(BuildContext, String?)? linkProjetoControllerValidator;
  String? _linkProjetoControllerValidator(BuildContext context, String? val) {
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
  String? Function(BuildContext, String?)? precoprojetoControllerValidator;
  String? _precoprojetoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (!RegExp('RegExp(r\'^[0-9,]+\$\')').hasMatch(val)) {
      return 'Tem que ser virgula';
    }
    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for descriVenda widget.
  FocusNode? descriVendaFocusNode;
  TextEditingController? descriVendaController;
  String? Function(BuildContext, String?)? descriVendaControllerValidator;
  String? _descriVendaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length < 500) {
      return 'Mínimo de 500 caracteres';
    }
    if (val.length > 2000) {
      return 'Máximo de 2000 caracteres';
    }

    return null;
  }

  // State field(s) for descriCompra widget.
  FocusNode? descriCompraFocusNode;
  TextEditingController? descriCompraController;
  String? Function(BuildContext, String?)? descriCompraControllerValidator;
  String? _descriCompraControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length < 500) {
      return 'Mínimo de 500 caracteres';
    }
    if (val.length > 2000) {
      return 'Máximo de 2000 caracteres';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    tituloControllerValidator = _tituloControllerValidator;
    subtituloControllerValidator = _subtituloControllerValidator;
    requisitosControllerValidator = _requisitosControllerValidator;
    linkProjetoControllerValidator = _linkProjetoControllerValidator;
    precoprojetoControllerValidator = _precoprojetoControllerValidator;
    descriVendaControllerValidator = _descriVendaControllerValidator;
    descriCompraControllerValidator = _descriCompraControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    tituloFocusNode?.dispose();
    tituloController?.dispose();

    subtituloFocusNode?.dispose();
    subtituloController?.dispose();

    requisitosFocusNode?.dispose();
    requisitosController?.dispose();

    linkProjetoFocusNode?.dispose();
    linkProjetoController?.dispose();

    precoprojetoFocusNode?.dispose();
    precoprojetoController?.dispose();

    descriVendaFocusNode?.dispose();
    descriVendaController?.dispose();

    descriCompraFocusNode?.dispose();
    descriCompraController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
