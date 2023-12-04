import '/backend/backend.dart';
import '/components/produtos_widget.dart';
import '/componts/app_bar/app_bar_widget.dart';
import '/componts/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vermais_model.dart';
export 'vermais_model.dart';

class VermaisWidget extends StatefulWidget {
  const VermaisWidget({
    Key? key,
    this.tag,
    this.eProjeto,
    this.pagos,
    this.gratis,
  }) : super(key: key);

  final String? tag;
  final bool? eProjeto;
  final double? pagos;
  final double? gratis;

  @override
  _VermaisWidgetState createState() => _VermaisWidgetState();
}

class _VermaisWidgetState extends State<VermaisWidget> {
  late VermaisModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VermaisModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'vermais'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Title(
        title: 'vermais',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.appBarModel,
                    updateCallback: () => setState(() {}),
                    child: AppBarWidget(),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 12.0, 12.0, 12.0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 3.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 49.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 2.0, 0.0, 2.0),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30.0,
                                        borderWidth: 1.0,
                                        buttonSize: 50.0,
                                        icon: Icon(
                                          Icons.home_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 30.0,
                                        ),
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'VERMAIS_PAGE_home_rounded_ICN_ON_TAP');
                                          logFirebaseEvent(
                                              'IconButton_navigate_to');

                                          context.goNamed(
                                            'HomePage',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 20.0,
                                      ),
                                    ),
                                    Container(
                                      height: 100.0,
                                      decoration: BoxDecoration(),
                                      alignment:
                                          AlignmentDirectional(0.00, 0.00),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (widget.pagos == 1.0)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: Text(
                                                'Todos os Projetos Pagos',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      fontSize: 20.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                              ),
                                            ),
                                          if (widget.pagos == 0.0)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: Text(
                                                'Todos os Projetos Grátis',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      fontSize: 20.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 16.0, 0.0),
                                      child: Container(
                                        height: 100.0,
                                        decoration: BoxDecoration(),
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.8,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 20.0, 20.0, 20.0),
                                child: StreamBuilder<List<ProjetosRecord>>(
                                  stream: queryProjetosRecord(
                                    queryBuilder: (projetosRecord) =>
                                        projetosRecord
                                            .where(
                                              'Valor',
                                              isGreaterThan: widget.pagos,
                                            )
                                            .where(
                                              'Valor',
                                              isEqualTo: widget.gratis,
                                            ),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: SpinKitRipple(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 50.0,
                                          ),
                                        ),
                                      );
                                    }
                                    List<ProjetosRecord>
                                        gridViewProjetosRecordList =
                                        snapshot.data!;
                                    return GridView.builder(
                                      padding: EdgeInsets.zero,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 4,
                                        crossAxisSpacing: 10.0,
                                        mainAxisSpacing: 10.0,
                                        childAspectRatio: 1.0,
                                      ),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount:
                                          gridViewProjetosRecordList.length,
                                      itemBuilder: (context, gridViewIndex) {
                                        final gridViewProjetosRecord =
                                            gridViewProjetosRecordList[
                                                gridViewIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 10.0, 10.0, 10.0),
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 8.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: ProdutosWidget(
                                                key: Key(
                                                    'Keyd7s_${gridViewIndex}_of_${gridViewProjetosRecordList.length}'),
                                                parameter1:
                                                    valueOrDefault<String>(
                                                  gridViewProjetosRecord
                                                      .iMGPrincipal,
                                                  'https://gthmauklpdygyjahreur.supabase.co/storage/v1/object/public/templates/logos/apppizaaria%201200x800.png',
                                                ),
                                                parameter2: formatNumber(
                                                  gridViewProjetosRecord.valor,
                                                  formatType: FormatType.custom,
                                                  currency: 'R\$ ',
                                                  format: '0.00',
                                                  locale: 'pt_BR',
                                                ),
                                                parameter3:
                                                    gridViewProjetosRecord
                                                        .valor,
                                                parameter4:
                                                    gridViewProjetosRecord
                                                        .titulo,
                                                parameter5:
                                                    gridViewProjetosRecord
                                                        .categoria,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 2.0,
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 20.0),
                              child: wrapWithModel(
                                model: _model.navBarModel,
                                updateCallback: () => setState(() {}),
                                child: NavBarWidget(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
