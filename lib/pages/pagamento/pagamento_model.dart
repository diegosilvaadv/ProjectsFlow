import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pagamento_widget.dart' show PagamentoWidget;
import 'package:flutter/material.dart';

class PagamentoModel extends FlutterFlowModel<PagamentoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Pix Mercado Pago)] action in Button widget.
  ApiCallResponse? gerarPedido;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
