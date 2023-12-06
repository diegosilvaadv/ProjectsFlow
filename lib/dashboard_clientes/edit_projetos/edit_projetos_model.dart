import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/componts/editar_projets_comp/editar_projets_comp_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'edit_projetos_widget.dart' show EditProjetosWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class EditProjetosModel extends FlutterFlowModel<EditProjetosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey7 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey9 = GlobalKey<FormState>();
  final formKey8 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey10 = GlobalKey<FormState>();
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

    if (val.length < 50) {
      return 'Mínimo de 50 caracteres';
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

  // State field(s) for videoDemo widget.
  FocusNode? videoDemoFocusNode;
  TextEditingController? videoDemoController;
  String? Function(BuildContext, String?)? videoDemoControllerValidator;
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

  // State field(s) for preco widget.
  double? precoValue;
  FormFieldController<double>? precoValueController;
  // State field(s) for categoria widget.
  String? categoriaValue;
  FormFieldController<String>? categoriaValueController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for descri widget.
  FocusNode? descriFocusNode;
  TextEditingController? descriController;
  String? Function(BuildContext, String?)? descriControllerValidator;
  String? _descriControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length < 100) {
      return 'Mínimo de 100 caracteres';
    }
    if (val.length > 10000) {
      return 'Máximo de 10000 caracteres';
    }

    return null;
  }

  // State field(s) for videoTutorial widget.
  FocusNode? videoTutorialFocusNode;
  TextEditingController? videoTutorialController;
  String? Function(BuildContext, String?)? videoTutorialControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    tituloControllerValidator = _tituloControllerValidator;
    subtituloControllerValidator = _subtituloControllerValidator;
    requisitosControllerValidator = _requisitosControllerValidator;
    linkProjetoControllerValidator = _linkProjetoControllerValidator;
    descriControllerValidator = _descriControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    tituloFocusNode?.dispose();
    tituloController?.dispose();

    subtituloFocusNode?.dispose();
    subtituloController?.dispose();

    requisitosFocusNode?.dispose();
    requisitosController?.dispose();

    videoDemoFocusNode?.dispose();
    videoDemoController?.dispose();

    linkProjetoFocusNode?.dispose();
    linkProjetoController?.dispose();

    descriFocusNode?.dispose();
    descriController?.dispose();

    videoTutorialFocusNode?.dispose();
    videoTutorialController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
