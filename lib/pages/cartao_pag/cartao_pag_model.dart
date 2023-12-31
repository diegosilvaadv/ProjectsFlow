import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/comp_pagamentos/cartao_process/cartao_process_widget.dart';
import '/comp_pagamentos/pag_com_sucess/pag_com_sucess_widget.dart';
import '/componts/app_bar/app_bar_widget.dart';
import '/componts/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'cartao_pag_widget.dart' show CartaoPagWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CartaoPagModel extends FlutterFlowModel<CartaoPagWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey10 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  final formKey9 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey7 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey8 = GlobalKey<FormState>();
  // Model for AppBar component.
  late AppBarModel appBarModel;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  // State field(s) for cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfController;
  final cpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cpfControllerValidator;
  // State field(s) for number_cartao widget.
  FocusNode? numberCartaoFocusNode;
  TextEditingController? numberCartaoController;
  late bool numberCartaoVisibility;
  final numberCartaoMask = MaskTextInputFormatter(mask: '#### #### #### #### ');
  String? Function(BuildContext, String?)? numberCartaoControllerValidator;
  // State field(s) for mes_card widget.
  FocusNode? mesCardFocusNode;
  TextEditingController? mesCardController;
  final mesCardMask = MaskTextInputFormatter(mask: '##');
  String? Function(BuildContext, String?)? mesCardControllerValidator;
  // State field(s) for ano_card widget.
  FocusNode? anoCardFocusNode;
  TextEditingController? anoCardController;
  final anoCardMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? anoCardControllerValidator;
  // State field(s) for cvv_card widget.
  FocusNode? cvvCardFocusNode;
  TextEditingController? cvvCardController;
  late bool cvvCardVisibility;
  final cvvCardMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? cvvCardControllerValidator;
  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepController;
  final cepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? cepControllerValidator;
  // State field(s) for numero widget.
  FocusNode? numeroFocusNode;
  TextEditingController? numeroController;
  final numeroMask = MaskTextInputFormatter(mask: '#####');
  String? Function(BuildContext, String?)? numeroControllerValidator;
  // State field(s) for Complemento widget.
  FocusNode? complementoFocusNode;
  TextEditingController? complementoController;
  String? Function(BuildContext, String?)? complementoControllerValidator;
  // State field(s) for celular widget.
  FocusNode? celularFocusNode;
  TextEditingController? celularController;
  final celularMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? celularControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (BUSCARCEP)] action in Button widget.
  ApiCallResponse? resultadoCEP;
  // Stores action output result for [Backend Call - API (API TOKEN MP)] action in Button widget.
  ApiCallResponse? resultadoGerarToken;
  // Stores action output result for [Backend Call - API (Criar Pagamentos Cartao MP)] action in Button widget.
  ApiCallResponse? resultadoCartaoPag;
  // Stores action output result for [Backend Call - API (Status Cartao)] action in Button widget.
  ApiCallResponse? resultadoStatus;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController;

  // Model for NavBar component.
  late NavBarModel navBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    numberCartaoVisibility = false;
    cvvCardVisibility = false;
    navBarModel = createModel(context, () => NavBarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    appBarModel.dispose();
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

    expandableController.dispose();
    navBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
