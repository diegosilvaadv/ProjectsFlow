import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/comp_pagamentos/pag_com_sucess/pag_com_sucess_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'cartao_process_model.dart';
export 'cartao_process_model.dart';

class CartaoProcessWidget extends StatefulWidget {
  const CartaoProcessWidget({
    Key? key,
    this.detalhesProdutos,
    required this.cartaoFinal,
    required this.transacionID,
  }) : super(key: key);

  final ProjetosRecord? detalhesProdutos;
  final String? cartaoFinal;
  final String? transacionID;

  @override
  _CartaoProcessWidgetState createState() => _CartaoProcessWidgetState();
}

class _CartaoProcessWidgetState extends State<CartaoProcessWidget> {
  late CartaoProcessModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartaoProcessModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CARTAO_PROCESS_CartaoProcess_ON_INIT_STA');
      logFirebaseEvent('CartaoProcess_custom_action');
      await actions.atualizarAPI(
        () async {
          var _shouldSetState = false;
          logFirebaseEvent('_backend_call');
          _model.resultadoStatusCartao = await StatusCartaoCall.call(
            accessToken:
                'APP_USR-2540313967326267-111909-94d7cfcc16413329acb45f48567519c7-433297459',
            idPag: widget.transacionID,
          );
          _shouldSetState = true;
          logFirebaseEvent('_update_app_state');
          setState(() {
            FFAppState().statusCartaodeCredito = StatusCartaoCall.statusPag(
              (_model.resultadoStatusCartao?.jsonBody ?? ''),
            ).toString().toString();
          });
          if (FFAppState().PagRed.status == 'Approved') {
            logFirebaseEvent('_bottom_sheet');
            await showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Color(0x8A000000),
              enableDrag: false,
              context: context,
              builder: (context) {
                return Padding(
                  padding: MediaQuery.viewInsetsOf(context),
                  child: PagComSucessWidget(
                    detalhesProdutos: widget.detalhesProdutos,
                    cartaoFinal: widget.cartaoFinal!,
                    transacionID: widget.transacionID!,
                  ),
                );
              },
            ).then((value) => safeSetState(() {}));

            return;
          } else {
            return;
          }
        },
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: AlignmentDirectional(0.00, 0.00),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.5,
            height: MediaQuery.sizeOf(context).height * 0.5,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset(
                        'assets/lottie_animations/pagProcess.json',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                        reverse: true,
                        animate: true,
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 0.0),
                            child: Text(
                              'Processando Pagamento...',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 6.0),
                            child: Text(
                              'Aguarde enquando está sendo\n processado o pagamento...',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 10.0, 6.0),
                            child: Text(
                              'Status: ',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 16.0, 6.0),
                            child: Text(
                              FFAppState().statusCartaodeCredito,
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
