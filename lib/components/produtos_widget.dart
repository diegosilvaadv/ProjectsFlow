import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'produtos_model.dart';
export 'produtos_model.dart';

class ProdutosWidget extends StatefulWidget {
  const ProdutosWidget({
    Key? key,
    this.detlahes,
  }) : super(key: key);

  final ProjetosRecord? detlahes;

  @override
  _ProdutosWidgetState createState() => _ProdutosWidgetState();
}

class _ProdutosWidgetState extends State<ProdutosWidget> {
  late ProdutosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProdutosModel());

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

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional(1.0, 1.0),
            children: [
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(6.0, 6.0, 6.0, 6.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: CachedNetworkImage(
                          fadeInDuration: Duration(milliseconds: 500),
                          fadeOutDuration: Duration(milliseconds: 500),
                          imageUrl: valueOrDefault<String>(
                            widget.detlahes?.iMGPrincipal,
                            'img',
                          ),
                          fit: BoxFit.cover,
                          alignment: Alignment(0.00, 0.00),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              if (widget.detlahes?.valor != 0.0)
                Align(
                  alignment: AlignmentDirectional(1.00, -1.00),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 4.0),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xC50BC70A),
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(6.0, 6.0, 6.0, 6.0),
                        child: Text(
                          valueOrDefault<String>(
                            formatNumber(
                              widget.detlahes?.valor,
                              formatType: FormatType.custom,
                              currency: 'R\$ ',
                              format: '0.00',
                              locale: 'pt_BR',
                            ),
                            '0',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 16.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
              if (widget.detlahes?.valor == 0.0)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 4.0),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xC50BC70A),
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(6.0, 6.0, 6.0, 6.0),
                      child: Text(
                        'Grátis',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 16.0,
                            ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(6.0, 6.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          valueOrDefault<String>(
                            widget.detlahes?.titulo,
                            'titulo',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(6.0, 8.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                        child: FaIcon(
                          FontAwesomeIcons.tag,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.detlahes?.categoria,
                          'tag',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(6.0, 5.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                        child: Icon(
                          Icons.person_2,
                          color: FlutterFlowTheme.of(context).secondary,
                          size: 24.0,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          valueOrDefault<String>(
                            widget.detlahes?.postadoPor,
                            'autor',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).secondary,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
