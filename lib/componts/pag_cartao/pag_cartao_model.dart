import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/componts/pag_card_com_sucess/pag_card_com_sucess_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'pag_cartao_widget.dart' show PagCartaoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PagCartaoModel extends FlutterFlowModel<PagCartaoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey5 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey8 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey7 = GlobalKey<FormState>();
  final formKey9 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey10 = GlobalKey<FormState>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableController;

  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  String? _nomeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    return null;
  }

  // State field(s) for cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfController;
  final cpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cpfControllerValidator;
  String? _cpfControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length < 14) {
      return 'Mínimo de 14 Caracteres';
    }

    return null;
  }

  // State field(s) for number_cartao widget.
  FocusNode? numberCartaoFocusNode;
  TextEditingController? numberCartaoController;
  final numberCartaoMask = MaskTextInputFormatter(mask: '#### #### #### #### ');
  String? Function(BuildContext, String?)? numberCartaoControllerValidator;
  String? _numberCartaoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length < 18) {
      return 'Mínimo de 18 Caracteres';
    }

    return null;
  }

  // State field(s) for mes_card widget.
  FocusNode? mesCardFocusNode;
  TextEditingController? mesCardController;
  final mesCardMask = MaskTextInputFormatter(mask: '##');
  String? Function(BuildContext, String?)? mesCardControllerValidator;
  String? _mesCardControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length < 2) {
      return 'Mínimo de 2 Caracteres';
    }

    return null;
  }

  // State field(s) for ano_card widget.
  FocusNode? anoCardFocusNode;
  TextEditingController? anoCardController;
  final anoCardMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? anoCardControllerValidator;
  String? _anoCardControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length < 4) {
      return 'Mínimo de 4 Caracteres';
    }

    return null;
  }

  // State field(s) for cvv_card widget.
  FocusNode? cvvCardFocusNode;
  TextEditingController? cvvCardController;
  final cvvCardMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? cvvCardControllerValidator;
  String? _cvvCardControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length < 3) {
      return 'Mínimo de 3 Caracteres';
    }

    return null;
  }

  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepController;
  final cepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? cepControllerValidator;
  String? _cepControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length < 8) {
      return 'Mínimo de 8 Caracteres';
    }

    return null;
  }

  // State field(s) for numero widget.
  FocusNode? numeroFocusNode;
  TextEditingController? numeroController;
  final numeroMask = MaskTextInputFormatter(mask: '#####');
  String? Function(BuildContext, String?)? numeroControllerValidator;
  String? _numeroControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    if (val.length > 10) {
      return 'Máximo de 14 Caracteres';
    }

    return null;
  }

  // State field(s) for Complemento widget.
  FocusNode? complementoFocusNode;
  TextEditingController? complementoController;
  String? Function(BuildContext, String?)? complementoControllerValidator;
  // State field(s) for celular widget.
  FocusNode? celularFocusNode;
  TextEditingController? celularController;
  final celularMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? celularControllerValidator;
  // Stores action output result for [Backend Call - API (authenticate CobreFacil)] action in Button widget.
  ApiCallResponse? resultadoTokenCriado;
  // Stores action output result for [Backend Call - API (BUSCARCEP)] action in Button widget.
  ApiCallResponse? resultadoCep;
  // Stores action output result for [Backend Call - API (Criar Cliente CobreFacil)] action in Button widget.
  ApiCallResponse? resultadoCriarCliente;
  // Stores action output result for [Backend Call - API (Criar Cartao CobreFacil)] action in Button widget.
  ApiCallResponse? resultadoCartaoCriado;
  // Stores action output result for [Backend Call - API (Autorizar Cobranca via Cartao CobreFacil )] action in Button widget.
  ApiCallResponse? resultadoDaCobranca;
  // Stores action output result for [Backend Call - API (detalhes Cobranca via Cartao CobreFacil )] action in Button widget.
  ApiCallResponse? consultarAprovacao3;
  // Stores action output result for [Backend Call - API (Criar Cartao CobreFacil)] action in Button widget.
  ApiCallResponse? resultadoCartaoCriado2;
  // Stores action output result for [Backend Call - API (Autorizar Cobranca via Cartao CobreFacil )] action in Button widget.
  ApiCallResponse? resultadoDaCobranca2;
  // Stores action output result for [Backend Call - API (detalhes Cobranca via Cartao CobreFacil )] action in Button widget.
  ApiCallResponse? consultarAprovacao2;
  // Stores action output result for [Backend Call - API (Autorizar Cobranca via Cartao CobreFacil )] action in Button widget.
  ApiCallResponse? resultadoCartaoSalvo;
  // Stores action output result for [Backend Call - API (detalhes Cobranca via Cartao CobreFacil )] action in Button widget.
  ApiCallResponse? consultarAprovacao;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    nomeControllerValidator = _nomeControllerValidator;
    cpfControllerValidator = _cpfControllerValidator;
    numberCartaoControllerValidator = _numberCartaoControllerValidator;
    mesCardControllerValidator = _mesCardControllerValidator;
    anoCardControllerValidator = _anoCardControllerValidator;
    cvvCardControllerValidator = _cvvCardControllerValidator;
    cepControllerValidator = _cepControllerValidator;
    numeroControllerValidator = _numeroControllerValidator;
  }

  void dispose() {
    expandableController.dispose();
    nomeFocusNode?.dispose();
    nomeController?.dispose();

    cpfFocusNode?.dispose();
    cpfController?.dispose();

    numberCartaoFocusNode?.dispose();
    numberCartaoController?.dispose();

    mesCardFocusNode?.dispose();
    mesCardController?.dispose();

    anoCardFocusNode?.dispose();
    anoCardController?.dispose();

    cvvCardFocusNode?.dispose();
    cvvCardController?.dispose();

    cepFocusNode?.dispose();
    cepController?.dispose();

    numeroFocusNode?.dispose();
    numeroController?.dispose();

    complementoFocusNode?.dispose();
    complementoController?.dispose();

    celularFocusNode?.dispose();
    celularController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
