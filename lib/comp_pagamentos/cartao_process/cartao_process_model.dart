import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/comp_pagamentos/pag_com_sucess/pag_com_sucess_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'cartao_process_widget.dart' show CartaoProcessWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CartaoProcessModel extends FlutterFlowModel<CartaoProcessWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Status Cartao)] action in CartaoProcess widget.
  ApiCallResponse? resultadoStatusCartao;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
