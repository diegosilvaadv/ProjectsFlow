import '/components/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'contato_model.dart';
export 'contato_model.dart';

class ContatoWidget extends StatefulWidget {
  const ContatoWidget({Key? key}) : super(key: key);

  @override
  _ContatoWidgetState createState() => _ContatoWidgetState();
}

class _ContatoWidgetState extends State<ContatoWidget> {
  late ContatoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContatoModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'contato'});
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
        title: 'contato',
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
                  Expanded(
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 20.0, 20.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.discord_sharp,
                                    color: Color(0xFF5765F2),
                                    size: 100.0,
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            6.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'DISCORD',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        'Acesse nosso Discord',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'CONTATO_PAGE_ENTRAR_BTN_ON_TAP');
                                        logFirebaseEvent('Button_launch_u_r_l');
                                        await launchURL(
                                            'https://discord.gg/czKA5Cpd');
                                      },
                                      text: 'ENTRAR',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xFF5765F2),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                            ),
                                        elevation: 3.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Opacity(
                                opacity: 0.6,
                                child: Divider(
                                  height: 10.0,
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.youtube,
                                    color: Color(0xFFFD1300),
                                    size: 100.0,
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            6.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'YOUTUBE',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        'Acesse nosso YouTube',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'CONTATO_PAGE_ENTRAR_BTN_ON_TAP');
                                        logFirebaseEvent('Button_launch_u_r_l');
                                        await launchURL(
                                            'https://www.youtube.com/channel/UCale3h1Y7vM8AQ7Yg3wHAww');
                                      },
                                      text: 'ENTRAR',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xFFFD1300),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                            ),
                                        elevation: 3.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Opacity(
                                opacity: 0.6,
                                child: Divider(
                                  height: 10.0,
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 50.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 20.0, 0.0),
                                      child: Container(
                                        width: 680.0,
                                        height: 304.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 8.0, 8.0, 8.0),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Flexible(
                                                      child: Text(
                                                        'Nosso Curso | Criar App de Catalago',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 10.0,
                                                          10.0, 10.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          logFirebaseEvent(
                                                              'CONTATO_PAGE_Image_zfjxr70p_ON_TAP');
                                                          logFirebaseEvent(
                                                              'Image_expand_image');
                                                          await Navigator.push(
                                                            context,
                                                            PageTransition(
                                                              type:
                                                                  PageTransitionType
                                                                      .fade,
                                                              child:
                                                                  FlutterFlowExpandedImageView(
                                                                image:
                                                                    Image.asset(
                                                                  'assets/images/Music_Desktop_Wallpaper_(2).png',
                                                                  fit: BoxFit
                                                                      .contain,
                                                                ),
                                                                allowRotation:
                                                                    false,
                                                                tag:
                                                                    'imageTag1',
                                                                useHeroAnimation:
                                                                    true,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                        child: Hero(
                                                          tag: 'imageTag1',
                                                          transitionOnUserGestures:
                                                              true,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: Image.asset(
                                                              'assets/images/Music_Desktop_Wallpaper_(2).png',
                                                              width: 356.0,
                                                              height: 200.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Desenvolva um aplicativo e já consiga seus primeiros clientes em flutterflow.\n\nAproveite o cumpom de 50% de desconto.',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge,
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      SelectionArea(
                                                                          child:
                                                                              Text(
                                                                    'DESCONTO50OFF',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          fontSize:
                                                                              20.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  )),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'CONTATO_PAGE_Icon_7470ms8e_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Icon_copy_to_clipboard');
                                                                      await Clipboard.setData(
                                                                          ClipboardData(
                                                                              text: 'DESCONTO50OFF'));
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .content_copy,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'CONTATO_PAGE_ACESSAR_BTN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Button_launch_u_r_l');
                                                                  await launchURL(
                                                                      'https://www.udemy.com/course/aprenda-a-criar-um-app-de-catalogo-flutterflow-nocode/?couponCode=DESCONTO50OFF');
                                                                },
                                                                text: 'Acessar',
                                                                options:
                                                                    FFButtonOptions(
                                                                  height: 40.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
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
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 680.0,
                                      height: 304.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 8.0, 8.0, 8.0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Nosso Curso | Criar App Pizzaria',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 10.0, 10.0, 10.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'CONTATO_PAGE_Image_cdj335dq_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Image_expand_image');
                                                        await Navigator.push(
                                                          context,
                                                          PageTransition(
                                                            type:
                                                                PageTransitionType
                                                                    .fade,
                                                            child:
                                                                FlutterFlowExpandedImageView(
                                                              image:
                                                                  Image.asset(
                                                                'assets/images/Music_Desktop_Wallpaper_(4).png',
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                              allowRotation:
                                                                  false,
                                                              tag: 'imageTag2',
                                                              useHeroAnimation:
                                                                  true,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      child: Hero(
                                                        tag: 'imageTag2',
                                                        transitionOnUserGestures:
                                                            true,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.asset(
                                                            'assets/images/Music_Desktop_Wallpaper_(4).png',
                                                            width: 356.0,
                                                            height: 200.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Desenvolva um aplicativo e já consiga seus primeiros clientes em flutterflow.\n\nAproveite o cumpom de 50% de desconto.',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelLarge,
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                                child:
                                                                    SelectionArea(
                                                                        child:
                                                                            Text(
                                                                  'FLUTTERFLOW50OFF',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            20.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                )),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            6.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'CONTATO_PAGE_Icon_ormebr6m_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Icon_copy_to_clipboard');
                                                                    await Clipboard.setData(
                                                                        ClipboardData(
                                                                            text:
                                                                                'FLUTTERFLOW50OFF'));
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .content_copy,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                logFirebaseEvent(
                                                                    'CONTATO_PAGE_ACESSAR_BTN_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'Button_launch_u_r_l');
                                                                await launchURL(
                                                                    'https://www.udemy.com/course/aprenda-a-criar-um-app-de-pizzaria-flutterflow-nocode/?couponCode=FLUTTERFLOW50OFF');
                                                              },
                                                              text: 'Acessar',
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 40.0,
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
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
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'CONTATO_PAGE_Image_abwb0qsk_ON_TAP');
                                          logFirebaseEvent(
                                              'Image_expand_image');
                                          await Navigator.push(
                                            context,
                                            PageTransition(
                                              type: PageTransitionType.fade,
                                              child:
                                                  FlutterFlowExpandedImageView(
                                                image: Image.network(
                                                  functions.imgbase64(
                                                      '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'),
                                                  fit: BoxFit.contain,
                                                ),
                                                allowRotation: false,
                                                tag: functions.imgbase64(
                                                    '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'),
                                                useHeroAnimation: true,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Hero(
                                          tag: functions.imgbase64(
                                              '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'),
                                          transitionOnUserGestures: true,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              functions.imgbase64(
                                                  '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'),
                                              width: 356.0,
                                              height: 200.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
