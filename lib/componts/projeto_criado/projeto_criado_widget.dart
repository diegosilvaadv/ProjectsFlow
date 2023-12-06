import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'projeto_criado_model.dart';
export 'projeto_criado_model.dart';

class ProjetoCriadoWidget extends StatefulWidget {
  const ProjetoCriadoWidget({Key? key}) : super(key: key);

  @override
  _ProjetoCriadoWidgetState createState() => _ProjetoCriadoWidgetState();
}

class _ProjetoCriadoWidgetState extends State<ProjetoCriadoWidget> {
  late ProjetoCriadoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProjetoCriadoModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('PROJETO_CRIADO_ProjetoCriado_ON_INIT_STA');
      logFirebaseEvent('ProjetoCriado_update_app_state');
      setState(() {
        FFAppState().CodigosRef = [];
      });
      logFirebaseEvent('ProjetoCriado_wait__delay');
      await Future.delayed(const Duration(milliseconds: 3000));
      logFirebaseEvent('ProjetoCriado_navigate_to');

      context.goNamed(
        'Projetos',
        extra: <String, dynamic>{
          kTransitionInfoKey: TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.bottomToTop,
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
                        'assets/lottie_animations/Animation_-_1701201365942.json',
                        width: 250.0,
                        height: 250.0,
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
                              'Projeto Criado com Sucesso!',
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
