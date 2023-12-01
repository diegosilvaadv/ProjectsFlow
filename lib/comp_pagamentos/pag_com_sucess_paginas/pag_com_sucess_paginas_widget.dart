import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'pag_com_sucess_paginas_model.dart';
export 'pag_com_sucess_paginas_model.dart';

class PagComSucessPaginasWidget extends StatefulWidget {
  const PagComSucessPaginasWidget({
    Key? key,
    this.detalhesProdutos,
    required this.cartaoFinal,
    required this.transacionID,
  }) : super(key: key);

  final PaginasRecord? detalhesProdutos;
  final String? cartaoFinal;
  final String? transacionID;

  @override
  _PagComSucessPaginasWidgetState createState() =>
      _PagComSucessPaginasWidgetState();
}

class _PagComSucessPaginasWidgetState extends State<PagComSucessPaginasWidget> {
  late PagComSucessPaginasModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PagComSucessPaginasModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('PAG_COM_SUCESS_PAGINAS_pagComSucess_pagi');
      logFirebaseEvent('pagComSucess_paginas_wait__delay');
      await Future.delayed(const Duration(milliseconds: 3000));
      logFirebaseEvent('pagComSucess_paginas_backend_call');

      await PagamentosRecord.collection.doc().set(createPagamentosRecordData(
            produto: widget.detalhesProdutos?.titulo,
            descricao: widget.detalhesProdutos?.descricao,
            valor: widget.detalhesProdutos?.valor,
            linkProjeto: widget.detalhesProdutos?.linkProjeto,
            statusCompra: true,
            ultimos4dig: widget.cartaoFinal,
            transacionID: widget.transacionID,
            userID: widget.detalhesProdutos?.userIDVendedor,
            nomePagante: currentUserDisplayName,
            email: currentUserEmail,
            creatData: getCurrentTimestamp,
            imgPagante: currentUserPhoto,
            emailVendedor: widget.detalhesProdutos?.emailVendedor,
            userIDPagante: currentUserUid,
          ));
      logFirebaseEvent('pagComSucess_paginas_wait__delay');
      await Future.delayed(const Duration(milliseconds: 2000));
      logFirebaseEvent('pagComSucess_paginas_navigate_to');

      context.goNamed(
        'detalhePage',
        queryParameters: {
          'paginas': serializeParam(
            widget.detalhesProdutos,
            ParamType.Document,
          ),
        }.withoutNulls,
        extra: <String, dynamic>{
          'paginas': widget.detalhesProdutos,
          kTransitionInfoKey: TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
          ),
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
                        'assets/lottie_animations/Animation_-_1701362267269.json',
                        width: 150.0,
                        height: 130.0,
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
                                16.0, 4.0, 16.0, 6.0),
                            child: Text(
                              'Pagamento Realizado com sucesso! ',
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
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
