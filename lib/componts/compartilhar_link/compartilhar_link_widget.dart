import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'compartilhar_link_model.dart';
export 'compartilhar_link_model.dart';

class CompartilharLinkWidget extends StatefulWidget {
  const CompartilharLinkWidget({
    Key? key,
    this.referencia,
  }) : super(key: key);

  final String? referencia;

  @override
  _CompartilharLinkWidgetState createState() => _CompartilharLinkWidgetState();
}

class _CompartilharLinkWidgetState extends State<CompartilharLinkWidget>
    with TickerProviderStateMixin {
  late CompartilharLinkModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 760.ms,
          begin: 0.0,
          end: 1.0,
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
    _model = createModel(context, () => CompartilharLinkModel());

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
      alignment: AlignmentDirectional(0.00, 0.00),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.333,
        height: MediaQuery.sizeOf(context).height * 0.11,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 6.0),
                  child: Text(
                    'https://projectsflow.flutterflow.app/detalhes?detalhesProjects=${widget.referencia}',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 23.0,
                        ),
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('COMPARTILHAR_LINK_Icon_m1fjdr4g_ON_TAP');
                  logFirebaseEvent('Icon_copy_to_clipboard');
                  await Clipboard.setData(ClipboardData(
                      text:
                          'https://projectsflow.flutterflow.app/detalhes?detalhesProjects=${widget.referencia}'));
                  logFirebaseEvent('Icon_bottom_sheet');
                  Navigator.pop(context);
                  logFirebaseEvent('Icon_show_snack_bar');
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Link Copiado!',
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                      duration: Duration(milliseconds: 4000),
                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                    ),
                  );
                },
                child: Icon(
                  Icons.content_copy,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 40.0,
                ),
              ),
            ],
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
