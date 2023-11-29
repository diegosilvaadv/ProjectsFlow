import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'pag_pix_model.dart';
export 'pag_pix_model.dart';

class PagPixWidget extends StatefulWidget {
  const PagPixWidget({
    super.key,
    required this.status,
    required this.detalhesProduto,
  });

  final dynamic status;
  final ProjetosRecord? detalhesProduto;

  @override
  _PagPixWidgetState createState() => _PagPixWidgetState();
}

class _PagPixWidgetState extends State<PagPixWidget>
    with TickerProviderStateMixin {
  late PagPixModel _model;

  final animationsMap = {
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          hz: 7,
          offset: const Offset(-13.0, 0.0),
          rotation: 0.087,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PagPixModel());

    _model.textController ??=
        TextEditingController(text: FFAppState().PagRed.chavepix);
    _model.textFieldFocusNode ??= FocusNode();

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

    return Align(
      alignment: const AlignmentDirectional(0.00, 0.00),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.7,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Realizar Pagamento Via PIX',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 35.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 20.0, 20.0, 20.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.textController,
                                      focusNode: _model.textFieldFocusNode,
                                      readOnly: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'QrCode',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 25.0,
                                          ),
                                      maxLines: 5,
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: 12.0,
                                  borderWidth: 1.0,
                                  buttonSize: 60.0,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  icon: Icon(
                                    Icons.content_copy,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 40.0,
                                  ),
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'PAG_PIX_COMP_content_copy_ICN_ON_TAP');
                                    logFirebaseEvent(
                                        'IconButton_copy_to_clipboard');
                                    await Clipboard.setData(ClipboardData(
                                        text: FFAppState().PagRed.chavepix));
                                    logFirebaseEvent(
                                        'IconButton_show_snack_bar');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Copiado!',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 40.0,
                                          ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    FutureBuilder<ApiCallResponse>(
                      future: (_model.apiRequestCompleter ??=
                              Completer<ApiCallResponse>()
                                ..complete(StatusPixCall.call(
                                  idPix: FFAppState().PagRed.idPedido,
                                )))
                          .future,
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: SpinKitPulse(
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 50.0,
                              ),
                            ),
                          );
                        }
                        final columnStatusPixResponse = snapshot.data!;
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (StatusPixCall.status(
                                  columnStatusPixResponse.jsonBody,
                                ).toString() !=
                                'approved')
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 10.0, 20.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 6.0, 0.0),
                                      child: Icon(
                                        Icons.paid,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24.0,
                                      ),
                                    ),
                                    Text(
                                      'Pagamento Pendente',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 30.0,
                                          ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.00, 0.00),
                                      child: Lottie.asset(
                                        'assets/lottie_animations/Animation_-_1700667862033.json',
                                        width: 100.0,
                                        height: 100.0,
                                        fit: BoxFit.cover,
                                        animate: true,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            if (StatusPixCall.status(
                                  columnStatusPixResponse.jsonBody,
                                ).toString() ==
                                'approved')
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 10.0, 20.0, 20.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 6.0, 0.0),
                                      child: Icon(
                                        Icons.paid,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        size: 24.0,
                                      ),
                                    ),
                                    Text(
                                      'Pagamento Aprovado com Sucesso!',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            fontSize: 30.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 20.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 20.0, 20.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        if (StatusPixCall.status(
                                              columnStatusPixResponse.jsonBody,
                                            ).toString() !=
                                            'approved')
                                          FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'PAG_PIX_ATUALIZAR_PAGAMENTO_BTN_ON_TAP');
                                              logFirebaseEvent(
                                                  'Button_refresh_database_request');
                                              setState(() => _model
                                                  .apiRequestCompleter = null);
                                              await _model
                                                  .waitForApiRequestCompleted();
                                              logFirebaseEvent(
                                                  'Button_wait__delay');
                                              await Future.delayed(
                                                  const Duration(
                                                      milliseconds: 3000));
                                              logFirebaseEvent(
                                                  'Button_update_app_state');
                                              setState(() {
                                                FFAppState().updatePagRedStruct(
                                                  (e) => e
                                                    ..status = widget.status
                                                        ?.toString(),
                                                );
                                              });
                                            },
                                            text: 'Atualizar Pagamento',
                                            options: FFButtonOptions(
                                              height: 59.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        fontSize: 40.0,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                          ),
                                        if (StatusPixCall.status(
                                              columnStatusPixResponse.jsonBody,
                                            ).toString() ==
                                            'approved')
                                          FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'PAG_PIX_COMP_ACESSAR_PROJETO_BTN_ON_TAP');
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              await PagamentosRecord.collection
                                                  .doc()
                                                  .set(
                                                      createPagamentosRecordData(
                                                    produto: widget
                                                        .detalhesProduto
                                                        ?.titulo,
                                                    descricao: widget
                                                        .detalhesProduto
                                                        ?.descricao,
                                                  ));
                                              logFirebaseEvent(
                                                  'Button_navigate_to');

                                              context.goNamed(
                                                'detalhesProjects',
                                                queryParameters: {
                                                  'detalhesProjects':
                                                      serializeParam(
                                                    widget.detalhesProduto,
                                                    ParamType.Document,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  'detalhesProjects':
                                                      widget.detalhesProduto,
                                                },
                                              );
                                            },
                                            text: 'Acessar Projeto',
                                            options: FFButtonOptions(
                                              height: 59.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0xFF10DA26),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        fontSize: 40.0,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ).animateOnPageLoad(
                            animationsMap['columnOnPageLoadAnimation']!);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
