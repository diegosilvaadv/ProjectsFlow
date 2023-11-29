import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/componts/pag_card_com_sucess/pag_card_com_sucess_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'pag_cartao_model.dart';
export 'pag_cartao_model.dart';

class PagCartaoWidget extends StatefulWidget {
  const PagCartaoWidget({
    super.key,
    required this.detalhesProdutos,
  });

  final ProjetosRecord? detalhesProdutos;

  @override
  _PagCartaoWidgetState createState() => _PagCartaoWidgetState();
}

class _PagCartaoWidgetState extends State<PagCartaoWidget> {
  late PagCartaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PagCartaoModel());

    _model.expandableController = ExpandableController(initialExpanded: false);
    _model.nomeController ??= TextEditingController();
    _model.nomeFocusNode ??= FocusNode();

    _model.cpfController ??= TextEditingController();
    _model.cpfFocusNode ??= FocusNode();

    _model.numberCartaoController ??= TextEditingController();
    _model.numberCartaoFocusNode ??= FocusNode();

    _model.mesCardController ??= TextEditingController();
    _model.mesCardFocusNode ??= FocusNode();

    _model.anoCardController ??= TextEditingController();
    _model.anoCardFocusNode ??= FocusNode();

    _model.cvvCardController ??= TextEditingController();
    _model.cvvCardFocusNode ??= FocusNode();

    _model.cepController ??= TextEditingController();
    _model.cepFocusNode ??= FocusNode();

    _model.numeroController ??= TextEditingController();
    _model.numeroFocusNode ??= FocusNode();

    _model.complementoController ??= TextEditingController();
    _model.complementoFocusNode ??= FocusNode();

    _model.celularController ??= TextEditingController();
    _model.celularFocusNode ??= FocusNode();

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
      child: StreamBuilder<List<UserPagRecord>>(
        stream: queryUserPagRecord(
          queryBuilder: (userPagRecord) => userPagRecord.where(
            'Userid',
            isEqualTo: currentUserReference,
          ),
          singleRecord: true,
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitPulse(
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 50.0,
                ),
              ),
            );
          }
          List<UserPagRecord> columnUserPagRecordList = snapshot.data!;
          // Return an empty Container when the item does not exist.
          if (snapshot.data!.isEmpty) {
            return Container();
          }
          final columnUserPagRecord = columnUserPagRecordList.isNotEmpty
              ? columnUserPagRecordList.first
              : null;
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.7,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 10.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: 20.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    fillColor: const Color(0xFFE13C27),
                                    icon: const Icon(
                                      Icons.close,
                                      color: Colors.white,
                                      size: 24.0,
                                    ),
                                    showLoadingIndicator: true,
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'PAG_CARTAO_COMP_close_ICN_ON_TAP');
                                      logFirebaseEvent(
                                          'IconButton_bottom_sheet');
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Cartão de Crédito',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                      fontSize: 34.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                          if (columnUserPagRecord?.userid ==
                              currentUserReference)
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          200.0, 0.0, 200.0, 0.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 5.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 10.0, 10.0),
                                            child: Container(
                                              width: double.infinity,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              child: ExpandableNotifier(
                                                controller:
                                                    _model.expandableController,
                                                child: ExpandablePanel(
                                                  header: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 10.0),
                                                    child: Text(
                                                      'Selecione um cartão já salvo!',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .displaySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 30.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                    ),
                                                  ),
                                                  collapsed: Visibility(
                                                    visible: FFAppState()
                                                            .UsarCartaoSalvo !=
                                                        '0',
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Cartão com final: ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  fontSize:
                                                                      20.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          columnUserPagRecord!
                                                              .ultimos4dig,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 20.0,
                                                              ),
                                                        ),
                                                        Text(
                                                          ' Selecionado!',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  expanded: StreamBuilder<
                                                      List<UserPagRecord>>(
                                                    stream: queryUserPagRecord(
                                                      queryBuilder:
                                                          (userPagRecord) =>
                                                              userPagRecord
                                                                  .where(
                                                        'Userid',
                                                        isEqualTo:
                                                            currentUserReference,
                                                      ),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child: SpinKitPulse(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 50.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<UserPagRecord>
                                                          listViewUserPagRecordList =
                                                          snapshot.data!;
                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            listViewUserPagRecordList
                                                                .length,
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewUserPagRecord =
                                                              listViewUserPagRecordList[
                                                                  listViewIndex];
                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        10.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Cartão com final: ',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  fontSize: 20.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          listViewUserPagRecord
                                                                              .ultimos4dig,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontSize: 20.0,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              20.0,
                                                                              0.0),
                                                                          child:
                                                                              FFButtonWidget(
                                                                            onPressed:
                                                                                () {
                                                                              print('Button pressed ...');
                                                                            },
                                                                            text:
                                                                                'Selecionar',
                                                                            options:
                                                                                FFButtonOptions(
                                                                              height: 35.0,
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: Colors.white,
                                                                                  ),
                                                                              elevation: 3.0,
                                                                              borderSide: const BorderSide(
                                                                                color: Colors.transparent,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              10.0,
                                                                              0.0),
                                                                          child:
                                                                              FFButtonWidget(
                                                                            onPressed:
                                                                                () {
                                                                              print('Button pressed ...');
                                                                            },
                                                                            text:
                                                                                'Excluir',
                                                                            options:
                                                                                FFButtonOptions(
                                                                              height: 35.0,
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: Colors.white,
                                                                                  ),
                                                                              elevation: 3.0,
                                                                              borderSide: const BorderSide(
                                                                                color: Colors.transparent,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Divider(
                                                                thickness: 1.0,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                  theme: ExpandableThemeData(
                                                    tapHeaderToExpand: true,
                                                    tapBodyToExpand: false,
                                                    tapBodyToCollapse: false,
                                                    headerAlignment:
                                                        ExpandablePanelHeaderAlignment
                                                            .center,
                                                    hasIcon: true,
                                                    iconColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          if (FFAppState().UsarCartaoSalvo != '0')
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'PAG_CARTAO_ADICIONAR_NOVO_CARTÃO_DE_CRÉD');
                                      logFirebaseEvent(
                                          'Button_update_app_state');
                                      setState(() {
                                        FFAppState().UsarCartaoSalvo = '0';
                                      });
                                    },
                                    text: 'Adicionar Novo Cartão de Crédito',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 20.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          if (FFAppState().UsarCartaoSalvo == '0')
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Container(
                                      width: 549.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 20.0, 20.0, 20.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'Nome Impresso no Cartão',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              fontSize: 16.0,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Form(
                                                  key: _model.formKey5,
                                                  autovalidateMode:
                                                      AutovalidateMode.disabled,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 6.0,
                                                                8.0, 0.0),
                                                    child: TextFormField(
                                                      controller:
                                                          _model.nomeController,
                                                      focusNode:
                                                          _model.nomeFocusNode,
                                                      autofillHints: const [
                                                        AutofillHints.name
                                                      ],
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText: 'João Silva',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  fontSize:
                                                                      20.0,
                                                                ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  fontSize:
                                                                      20.0,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        prefixIcon: const Icon(
                                                          Icons.person_sharp,
                                                        ),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 20.0,
                                                              ),
                                                      keyboardType:
                                                          TextInputType.name,
                                                      validator: _model
                                                          .nomeControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 15.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'CPF',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 16.0,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Form(
                                                    key: _model.formKey1,
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .disabled,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  6.0,
                                                                  8.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .cpfController,
                                                        focusNode:
                                                            _model.cpfFocusNode,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText:
                                                              '000.000.000-00',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        20.0,
                                                                  ),
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        20.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          prefixIcon: const Icon(
                                                            Icons
                                                                .assignment_ind_rounded,
                                                          ),
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              fontSize: 20.0,
                                                            ),
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        validator: _model
                                                            .cpfControllerValidator
                                                            .asValidator(
                                                                context),
                                                        inputFormatters: [
                                                          _model.cpfMask
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 15.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Número do Cartão',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 16.0,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Form(
                                                    key: _model.formKey8,
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .disabled,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  6.0,
                                                                  8.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .numberCartaoController,
                                                        focusNode: _model
                                                            .numberCartaoFocusNode,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText:
                                                              '4111111111111111',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        20.0,
                                                                  ),
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        20.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          prefixIcon: const Icon(
                                                            Icons.credit_card,
                                                          ),
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              fontSize: 20.0,
                                                            ),
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        validator: _model
                                                            .numberCartaoControllerValidator
                                                            .asValidator(
                                                                context),
                                                        inputFormatters: [
                                                          _model
                                                              .numberCartaoMask
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Informações do Cartão',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 16.0,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Form(
                                                          key: _model.formKey6,
                                                          autovalidateMode:
                                                              AutovalidateMode
                                                                  .disabled,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        4.0,
                                                                        8.0,
                                                                        0.0),
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .mesCardController,
                                                              focusNode: _model
                                                                  .mesCardFocusNode,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                labelText: '12',
                                                                labelStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      fontSize:
                                                                          20.0,
                                                                    ),
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      fontSize:
                                                                          20.0,
                                                                    ),
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                errorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                filled: true,
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                prefixIcon:
                                                                    const Icon(
                                                                  Icons
                                                                      .calendar_month,
                                                                ),
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        20.0,
                                                                  ),
                                                              keyboardType:
                                                                  TextInputType
                                                                      .number,
                                                              validator: _model
                                                                  .mesCardControllerValidator
                                                                  .asValidator(
                                                                      context),
                                                              inputFormatters: [
                                                                _model
                                                                    .mesCardMask
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Form(
                                                          key: _model.formKey2,
                                                          autovalidateMode:
                                                              AutovalidateMode
                                                                  .disabled,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        4.0,
                                                                        8.0,
                                                                        0.0),
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .anoCardController,
                                                              focusNode: _model
                                                                  .anoCardFocusNode,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                labelText:
                                                                    '2023',
                                                                labelStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      fontSize:
                                                                          20.0,
                                                                    ),
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      fontSize:
                                                                          20.0,
                                                                    ),
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                errorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                filled: true,
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                prefixIcon:
                                                                    const Icon(
                                                                  Icons
                                                                      .calendar_month,
                                                                ),
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        20.0,
                                                                  ),
                                                              keyboardType:
                                                                  TextInputType
                                                                      .number,
                                                              validator: _model
                                                                  .anoCardControllerValidator
                                                                  .asValidator(
                                                                      context),
                                                              inputFormatters: [
                                                                _model
                                                                    .anoCardMask
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Form(
                                                          key: _model.formKey7,
                                                          autovalidateMode:
                                                              AutovalidateMode
                                                                  .disabled,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        4.0,
                                                                        8.0,
                                                                        0.0),
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .cvvCardController,
                                                              focusNode: _model
                                                                  .cvvCardFocusNode,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                labelText:
                                                                    '123',
                                                                labelStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      fontSize:
                                                                          20.0,
                                                                    ),
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      fontSize:
                                                                          20.0,
                                                                    ),
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                errorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                filled: true,
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                prefixIcon:
                                                                    const Icon(
                                                                  Icons
                                                                      .security_sharp,
                                                                ),
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        20.0,
                                                                  ),
                                                              keyboardType:
                                                                  TextInputType
                                                                      .number,
                                                              validator: _model
                                                                  .cvvCardControllerValidator
                                                                  .asValidator(
                                                                      context),
                                                              inputFormatters: [
                                                                _model
                                                                    .cvvCardMask
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(10.0,
                                                                10.0, 0.0, 4.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Informações de Endereço',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 16.0,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Form(
                                                            key:
                                                                _model.formKey9,
                                                            autovalidateMode:
                                                                AutovalidateMode
                                                                    .disabled,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          4.0,
                                                                          8.0,
                                                                          0.0),
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .cepController,
                                                                focusNode: _model
                                                                    .cepFocusNode,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText:
                                                                      'CEP',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium,
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            20.0,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  prefixIcon:
                                                                      const Icon(
                                                                    Icons
                                                                        .add_home,
                                                                  ),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      fontSize:
                                                                          20.0,
                                                                    ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                validator: _model
                                                                    .cepControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                                inputFormatters: [
                                                                  _model.cepMask
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Form(
                                                            key:
                                                                _model.formKey4,
                                                            autovalidateMode:
                                                                AutovalidateMode
                                                                    .disabled,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          4.0,
                                                                          8.0,
                                                                          0.0),
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .numeroController,
                                                                focusNode: _model
                                                                    .numeroFocusNode,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText:
                                                                      'Número',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium,
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            20.0,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  prefixIcon:
                                                                      const Icon(
                                                                    Icons
                                                                        .add_home,
                                                                  ),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      fontSize:
                                                                          20.0,
                                                                    ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                validator: _model
                                                                    .numeroControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Form(
                                                          key: _model.formKey3,
                                                          autovalidateMode:
                                                              AutovalidateMode
                                                                  .disabled,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        4.0,
                                                                        8.0,
                                                                        0.0),
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .complementoController,
                                                              focusNode: _model
                                                                  .complementoFocusNode,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                labelText:
                                                                    'Complemento',
                                                                labelStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium,
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      fontSize:
                                                                          20.0,
                                                                    ),
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                errorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                filled: true,
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                prefixIcon:
                                                                    const Icon(
                                                                  Icons
                                                                      .add_home,
                                                                ),
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        20.0,
                                                                  ),
                                                              keyboardType:
                                                                  TextInputType
                                                                      .number,
                                                              validator: _model
                                                                  .complementoControllerValidator
                                                                  .asValidator(
                                                                      context),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 15.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Número do Celular',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 16.0,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Form(
                                                          key: _model.formKey10,
                                                          autovalidateMode:
                                                              AutovalidateMode
                                                                  .disabled,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        4.0,
                                                                        8.0,
                                                                        0.0),
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .celularController,
                                                              focusNode: _model
                                                                  .celularFocusNode,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                labelText:
                                                                    '(11) 91234-5678',
                                                                labelStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium,
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      fontSize:
                                                                          20.0,
                                                                    ),
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                errorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                filled: true,
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                prefixIcon:
                                                                    const Icon(
                                                                  Icons
                                                                      .add_call,
                                                                ),
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        20.0,
                                                                  ),
                                                              keyboardType:
                                                                  TextInputType
                                                                      .number,
                                                              validator: _model
                                                                  .celularControllerValidator
                                                                  .asValidator(
                                                                      context),
                                                              inputFormatters: [
                                                                _model
                                                                    .celularMask
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
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
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 15.0, 20.0, 20.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'PAG_CARTAO_REALIZAR_PAGAMENTO_BTN_ON_TAP');
                                    var shouldSetState = false;
                                    logFirebaseEvent('Button_backend_call');
                                    _model.resultadoTokenCriado =
                                        await AuthenticateCobreFacilCall.call(
                                      appId: '65675f5e658e0',
                                      secret:
                                          '44e75a39d59a5ebfa2f95b175c33fe629eba5ed4',
                                    );
                                    shouldSetState = true;
                                    if ((_model
                                            .resultadoTokenCriado?.succeeded ??
                                        true)) {
                                      logFirebaseEvent('Button_wait__delay');
                                      await Future.delayed(
                                          const Duration(milliseconds: 1000));
                                      if (FFAppState().UsarCartaoSalvo == '0') {
                                        logFirebaseEvent('Button_backend_call');
                                        _model.resultadoCep =
                                            await BuscarcepCall.call(
                                          cep: _model.cepController.text,
                                        );
                                        shouldSetState = true;
                                        if ((_model.resultadoCep?.succeeded ??
                                            true)) {
                                          logFirebaseEvent(
                                              'Button_backend_call');
                                          _model.resultadoCriarCliente =
                                              await CriarClienteCobreFacilCall
                                                  .call(
                                            token: AuthenticateCobreFacilCall
                                                .token(
                                              (_model.resultadoTokenCriado
                                                      ?.jsonBody ??
                                                  ''),
                                            ).toString(),
                                            cpf: functions.removercaract(
                                                _model.cpfController.text),
                                            nomeCliente:
                                                _model.nomeController.text,
                                            celular: functions.removercaract(
                                                _model.celularController.text),
                                            email: currentUserEmail,
                                            cep: _model.cepController.text,
                                            nomeRua: BuscarcepCall.endereco(
                                              (_model.resultadoCep?.jsonBody ??
                                                  ''),
                                            ).toString(),
                                            numeroRua:
                                                _model.numeroController.text,
                                            complemento: _model
                                                .complementoController.text,
                                            bairro: BuscarcepCall.bairro(
                                              (_model.resultadoCep?.jsonBody ??
                                                  ''),
                                            ).toString(),
                                            cidade: BuscarcepCall.cidade(
                                              (_model.resultadoCep?.jsonBody ??
                                                  ''),
                                            ).toString(),
                                            estado: BuscarcepCall.estado(
                                              (_model.resultadoCep?.jsonBody ??
                                                  ''),
                                            ).toString(),
                                          );
                                          shouldSetState = true;
                                          if ((_model.resultadoCriarCliente
                                                  ?.succeeded ??
                                              true)) {
                                            logFirebaseEvent(
                                                'Button_backend_call');
                                            _model.resultadoCartaoCriado =
                                                await CriarCartaoCobreFacilCall
                                                    .call(
                                              token: AuthenticateCobreFacilCall
                                                  .token(
                                                (_model.resultadoTokenCriado
                                                        ?.jsonBody ??
                                                    ''),
                                              ).toString(),
                                              userId: CriarClienteCobreFacilCall
                                                  .userId(
                                                (_model.resultadoCriarCliente
                                                        ?.jsonBody ??
                                                    ''),
                                              ).toString(),
                                              nomeCliente:
                                                  _model.nomeController.text,
                                              numeroCard:
                                                  functions.removercaract(_model
                                                      .numberCartaoController
                                                      .text),
                                              mes:
                                                  _model.mesCardController.text,
                                              ano:
                                                  _model.anoCardController.text,
                                              codSecurity:
                                                  _model.cvvCardController.text,
                                            );
                                            shouldSetState = true;
                                            if ((_model.resultadoCartaoCriado
                                                    ?.succeeded ??
                                                true)) {
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              await columnUserPagRecord!
                                                  .reference
                                                  .update(
                                                      createUserPagRecordData(
                                                status: false,
                                              ));
                                              logFirebaseEvent(
                                                  'Button_wait__delay');
                                              await Future.delayed(
                                                  const Duration(
                                                      milliseconds: 1000));
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              await UserPagRecord.collection
                                                  .doc()
                                                  .set(createUserPagRecordData(
                                                    userIDCobreFacil:
                                                        columnUserPagRecord
                                                            .userIDCobreFacil,
                                                    userid: columnUserPagRecord
                                                        .userid,
                                                    idCartao:
                                                        CriarCartaoCobreFacilCall
                                                            .customerID(
                                                      (_model.resultadoCartaoCriado
                                                              ?.jsonBody ??
                                                          ''),
                                                    ).toString(),
                                                    status: true,
                                                    email: currentUserEmail,
                                                    ultimos4dig:
                                                        CriarCartaoCobreFacilCall
                                                            .ultimos4dig(
                                                      (_model.resultadoCartaoCriado
                                                              ?.jsonBody ??
                                                          ''),
                                                    ).toString(),
                                                    creatData:
                                                        getCurrentTimestamp,
                                                  ));
                                              logFirebaseEvent(
                                                  'Button_wait__delay');
                                              await Future.delayed(
                                                  const Duration(
                                                      milliseconds: 1000));
                                              logFirebaseEvent(
                                                  'Button_backend_call');
                                              _model.resultadoDaCobranca =
                                                  await AutorizarCobrancaViaCartaoCobreFacilCall
                                                      .call(
                                                token:
                                                    AuthenticateCobreFacilCall
                                                        .token(
                                                  (_model.resultadoTokenCriado
                                                          ?.jsonBody ??
                                                      ''),
                                                ).toString(),
                                                userID:
                                                    CriarClienteCobreFacilCall
                                                        .userId(
                                                  (_model.resultadoCriarCliente
                                                          ?.jsonBody ??
                                                      ''),
                                                ).toString(),
                                                creditCardId:
                                                    CriarCartaoCobreFacilCall
                                                        .customerID(
                                                  (_model.resultadoCartaoCriado
                                                          ?.jsonBody ??
                                                      ''),
                                                ).toString(),
                                                nomeProduto: widget
                                                    .detalhesProdutos?.titulo,
                                                quanty: 1.0,
                                                preco: functions
                                                    .doubleToInteger(widget
                                                        .detalhesProdutos!
                                                        .valor),
                                                sessionId:
                                                    random_data.randomString(
                                                  10,
                                                  12,
                                                  false,
                                                  false,
                                                  true,
                                                ),
                                              );
                                              shouldSetState = true;
                                              if ((_model.resultadoDaCobranca
                                                      ?.succeeded ??
                                                  true)) {
                                                logFirebaseEvent(
                                                    'Button_wait__delay');
                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 5000));
                                                logFirebaseEvent(
                                                    'Button_backend_call');
                                                _model.consultarAprovacao3 =
                                                    await DetalhesCobrancaViaCartaoCobreFacilCall
                                                        .call(
                                                  token:
                                                      AuthenticateCobreFacilCall
                                                          .token(
                                                    (_model.resultadoTokenCriado
                                                            ?.jsonBody ??
                                                        ''),
                                                  ).toString(),
                                                  iDCobranca:
                                                      AutorizarCobrancaViaCartaoCobreFacilCall
                                                          .transacaoID(
                                                    (_model.resultadoDaCobranca
                                                            ?.jsonBody ??
                                                        ''),
                                                  ).toString(),
                                                );
                                                shouldSetState = true;
                                                if (DetalhesCobrancaViaCartaoCobreFacilCall
                                                        .statusPag(
                                                      (_model.consultarAprovacao3
                                                              ?.jsonBody ??
                                                          ''),
                                                    ).toString() !=
                                                    'declined') {
                                                  logFirebaseEvent(
                                                      'Button_bottom_sheet');
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        const Color(0xA1000000),
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return WebViewAware(
                                                          child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            PagCardComSucessWidget(
                                                          cartaoFinal:
                                                              AutorizarCobrancaViaCartaoCobreFacilCall
                                                                  .ultimos4dig(
                                                            (_model.resultadoDaCobranca
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ).toString(),
                                                          transacionID:
                                                              AutorizarCobrancaViaCartaoCobreFacilCall
                                                                  .transacaoID(
                                                            (_model.resultadoDaCobranca
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ).toString(),
                                                          detalhesProdutos: widget
                                                              .detalhesProdutos,
                                                        ),
                                                      ));
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                } else {
                                                  logFirebaseEvent(
                                                      'Button_alert_dialog');
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return WebViewAware(
                                                          child: AlertDialog(
                                                        title: const Text(
                                                            'Cartão Recusado!'),
                                                        content: const Text(
                                                            'Tente um outro cartão de Crédito.'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: const Text(
                                                                'Tentar Novamente'),
                                                          ),
                                                        ],
                                                      ));
                                                    },
                                                  );
                                                }

                                                if (shouldSetState) {
                                                  setState(() {});
                                                }
                                                return;
                                              } else {
                                                logFirebaseEvent(
                                                    'Button_alert_dialog');
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return WebViewAware(
                                                        child: AlertDialog(
                                                      title: const Text(
                                                          'ERRO AO EFETUAR A COMPRA COM O CARTÃO INFORMADO!'),
                                                      content: Text(
                                                          AutorizarCobrancaViaCartaoCobreFacilCall
                                                              .erroCobraca(
                                                        (_model.resultadoDaCobranca
                                                                ?.jsonBody ??
                                                            ''),
                                                      ).toString()),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text(
                                                              'Tentar Novamente'),
                                                        ),
                                                      ],
                                                    ));
                                                  },
                                                );
                                                if (shouldSetState) {
                                                  setState(() {});
                                                }
                                                return;
                                              }
                                            } else {
                                              logFirebaseEvent(
                                                  'Button_alert_dialog');
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return WebViewAware(
                                                      child: AlertDialog(
                                                    title: const Text(
                                                        'ERRO AO TENTAR CRIAR CARTÃO!'),
                                                    content: Text(
                                                        CriarCartaoCobreFacilCall
                                                            .erroCriarCartao(
                                                      (_model.resultadoCartaoCriado
                                                              ?.jsonBody ??
                                                          ''),
                                                    ).toString()),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: const Text(
                                                            'Tentar Novamente'),
                                                      ),
                                                    ],
                                                  ));
                                                },
                                              );
                                              if (shouldSetState) {
                                                setState(() {});
                                              }
                                              return;
                                            }
                                          } else {
                                            logFirebaseEvent(
                                                'Button_backend_call');
                                            _model.resultadoCartaoCriado2 =
                                                await CriarCartaoCobreFacilCall
                                                    .call(
                                              token: AuthenticateCobreFacilCall
                                                  .token(
                                                (_model.resultadoTokenCriado
                                                        ?.jsonBody ??
                                                    ''),
                                              ).toString(),
                                              userId: columnUserPagRecord
                                                  ?.userIDCobreFacil,
                                              nomeCliente:
                                                  _model.nomeController.text,
                                              numeroCard:
                                                  functions.removercaract(_model
                                                      .numberCartaoController
                                                      .text),
                                              mes:
                                                  _model.mesCardController.text,
                                              ano:
                                                  _model.anoCardController.text,
                                              codSecurity:
                                                  _model.cvvCardController.text,
                                            );
                                            shouldSetState = true;
                                            if ((_model.resultadoCartaoCriado2
                                                    ?.succeeded ??
                                                true)) {
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              await columnUserPagRecord!
                                                  .reference
                                                  .update(
                                                      createUserPagRecordData(
                                                status: false,
                                              ));
                                              logFirebaseEvent(
                                                  'Button_wait__delay');
                                              await Future.delayed(
                                                  const Duration(
                                                      milliseconds: 1000));
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              await UserPagRecord.collection
                                                  .doc()
                                                  .set(createUserPagRecordData(
                                                    userIDCobreFacil:
                                                        columnUserPagRecord
                                                            .userIDCobreFacil,
                                                    userid: columnUserPagRecord
                                                        .userid,
                                                    idCartao:
                                                        CriarCartaoCobreFacilCall
                                                            .customerID(
                                                      (_model.resultadoCartaoCriado2
                                                              ?.jsonBody ??
                                                          ''),
                                                    ).toString(),
                                                    status: true,
                                                    email: currentUserEmail,
                                                    ultimos4dig:
                                                        CriarCartaoCobreFacilCall
                                                            .ultimos4dig(
                                                      (_model.resultadoCartaoCriado2
                                                              ?.jsonBody ??
                                                          ''),
                                                    ).toString(),
                                                    creatData:
                                                        getCurrentTimestamp,
                                                  ));
                                              logFirebaseEvent(
                                                  'Button_wait__delay');
                                              await Future.delayed(
                                                  const Duration(
                                                      milliseconds: 2000));
                                              logFirebaseEvent(
                                                  'Button_backend_call');
                                              _model.resultadoDaCobranca2 =
                                                  await AutorizarCobrancaViaCartaoCobreFacilCall
                                                      .call(
                                                token:
                                                    AuthenticateCobreFacilCall
                                                        .token(
                                                  (_model.resultadoTokenCriado
                                                          ?.jsonBody ??
                                                      ''),
                                                ).toString(),
                                                userID: columnUserPagRecord
                                                    .userIDCobreFacil,
                                                creditCardId:
                                                    CriarCartaoCobreFacilCall
                                                        .customerID(
                                                  (_model.resultadoCartaoCriado2
                                                          ?.jsonBody ??
                                                      ''),
                                                ).toString(),
                                                nomeProduto: widget
                                                    .detalhesProdutos?.titulo,
                                                quanty: 1.0,
                                                preco: functions
                                                    .doubleToInteger(widget
                                                        .detalhesProdutos!
                                                        .valor),
                                                sessionId:
                                                    random_data.randomString(
                                                  10,
                                                  12,
                                                  false,
                                                  false,
                                                  true,
                                                ),
                                              );
                                              shouldSetState = true;
                                              if ((_model.resultadoDaCobranca2
                                                      ?.succeeded ??
                                                  true)) {
                                                logFirebaseEvent(
                                                    'Button_wait__delay');
                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 5000));
                                                logFirebaseEvent(
                                                    'Button_backend_call');
                                                _model.consultarAprovacao2 =
                                                    await DetalhesCobrancaViaCartaoCobreFacilCall
                                                        .call(
                                                  token:
                                                      AuthenticateCobreFacilCall
                                                          .token(
                                                    (_model.resultadoTokenCriado
                                                            ?.jsonBody ??
                                                        ''),
                                                  ).toString(),
                                                  iDCobranca:
                                                      AutorizarCobrancaViaCartaoCobreFacilCall
                                                          .transacaoID(
                                                    (_model.resultadoDaCobranca2
                                                            ?.jsonBody ??
                                                        ''),
                                                  ).toString(),
                                                );
                                                shouldSetState = true;
                                                if (DetalhesCobrancaViaCartaoCobreFacilCall
                                                        .statusPag(
                                                      (_model.consultarAprovacao2
                                                              ?.jsonBody ??
                                                          ''),
                                                    ).toString() !=
                                                    'declined') {
                                                  logFirebaseEvent(
                                                      'Button_bottom_sheet');
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        const Color(0xA1000000),
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return WebViewAware(
                                                          child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            PagCardComSucessWidget(
                                                          cartaoFinal:
                                                              AutorizarCobrancaViaCartaoCobreFacilCall
                                                                  .ultimos4dig(
                                                            (_model.resultadoDaCobranca2
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ).toString(),
                                                          transacionID:
                                                              AutorizarCobrancaViaCartaoCobreFacilCall
                                                                  .transacaoID(
                                                            (_model.resultadoDaCobranca2
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ).toString(),
                                                          detalhesProdutos: widget
                                                              .detalhesProdutos,
                                                        ),
                                                      ));
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                } else {
                                                  logFirebaseEvent(
                                                      'Button_alert_dialog');
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return WebViewAware(
                                                          child: AlertDialog(
                                                        title: const Text(
                                                            'Cartão Recusado!'),
                                                        content: const Text(
                                                            'Tente um outro cartão de Crédito.'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: const Text(
                                                                'Tentar Novamente'),
                                                          ),
                                                        ],
                                                      ));
                                                    },
                                                  );
                                                }

                                                if (shouldSetState) {
                                                  setState(() {});
                                                }
                                                return;
                                              } else {
                                                logFirebaseEvent(
                                                    'Button_alert_dialog');
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return WebViewAware(
                                                        child: AlertDialog(
                                                      title: const Text(
                                                          'ERRO AO EFETUAR A COMPRA COM O CARTÃO INFORMADO!'),
                                                      content: Text(
                                                          AutorizarCobrancaViaCartaoCobreFacilCall
                                                              .erroCobraca(
                                                        (_model.resultadoDaCobranca2
                                                                ?.jsonBody ??
                                                            ''),
                                                      ).toString()),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text(
                                                              'Tentar Novamente'),
                                                        ),
                                                      ],
                                                    ));
                                                  },
                                                );
                                                if (shouldSetState) {
                                                  setState(() {});
                                                }
                                                return;
                                              }
                                            } else {
                                              logFirebaseEvent(
                                                  'Button_alert_dialog');
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return WebViewAware(
                                                      child: AlertDialog(
                                                    title: const Text(
                                                        'ERRO AO TENTAR ADICIONAR CARTÃO!'),
                                                    content: Text(
                                                        CriarCartaoCobreFacilCall
                                                            .erroCriarCartao(
                                                      (_model.resultadoCartaoCriado2
                                                              ?.jsonBody ??
                                                          ''),
                                                    ).toString()),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: const Text(
                                                            'Tentar Novamente'),
                                                      ),
                                                    ],
                                                  ));
                                                },
                                              );
                                              if (shouldSetState) {
                                                setState(() {});
                                              }
                                              return;
                                            }
                                          }
                                        } else {
                                          logFirebaseEvent(
                                              'Button_alert_dialog');
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return WebViewAware(
                                                  child: AlertDialog(
                                                title: const Text('CEP INVÁLIDO!'),
                                                content: const Text(
                                                    'Adicione um cep Válido!'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: const Text('Ok'),
                                                  ),
                                                ],
                                              ));
                                            },
                                          );
                                          if (shouldSetState) setState(() {});
                                          return;
                                        }
                                      } else {
                                        logFirebaseEvent('Button_backend_call');
                                        _model.resultadoCartaoSalvo =
                                            await AutorizarCobrancaViaCartaoCobreFacilCall
                                                .call(
                                          token:
                                              AuthenticateCobreFacilCall.token(
                                            (_model.resultadoTokenCriado
                                                    ?.jsonBody ??
                                                ''),
                                          ).toString(),
                                          userID: columnUserPagRecord
                                              ?.userIDCobreFacil,
                                          creditCardId:
                                              FFAppState().UsarCartaoSalvo,
                                          nomeProduto:
                                              widget.detalhesProdutos?.titulo,
                                          quanty: 1.0,
                                          preco: functions.doubleToInteger(
                                              widget.detalhesProdutos!.valor),
                                          sessionId: random_data.randomString(
                                            10,
                                            12,
                                            false,
                                            false,
                                            true,
                                          ),
                                        );
                                        shouldSetState = true;
                                        if ((_model.resultadoCartaoSalvo
                                                ?.succeeded ??
                                            true)) {
                                          logFirebaseEvent(
                                              'Button_wait__delay');
                                          await Future.delayed(const Duration(
                                              milliseconds: 5000));
                                          logFirebaseEvent(
                                              'Button_backend_call');
                                          _model.consultarAprovacao =
                                              await DetalhesCobrancaViaCartaoCobreFacilCall
                                                  .call(
                                            token: AuthenticateCobreFacilCall
                                                .token(
                                              (_model.resultadoTokenCriado
                                                      ?.jsonBody ??
                                                  ''),
                                            ).toString(),
                                            iDCobranca:
                                                AutorizarCobrancaViaCartaoCobreFacilCall
                                                    .transacaoID(
                                              (_model.resultadoCartaoSalvo
                                                      ?.jsonBody ??
                                                  ''),
                                            ).toString(),
                                          );
                                          shouldSetState = true;
                                          if (DetalhesCobrancaViaCartaoCobreFacilCall
                                                  .statusPag(
                                                (_model.consultarAprovacao
                                                        ?.jsonBody ??
                                                    ''),
                                              ).toString() !=
                                              'declined') {
                                            logFirebaseEvent(
                                                'Button_bottom_sheet');
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  const Color(0xA1000000),
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                    child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: PagCardComSucessWidget(
                                                    cartaoFinal:
                                                        AutorizarCobrancaViaCartaoCobreFacilCall
                                                            .ultimos4dig(
                                                      (_model.resultadoCartaoSalvo
                                                              ?.jsonBody ??
                                                          ''),
                                                    ).toString(),
                                                    transacionID:
                                                        AutorizarCobrancaViaCartaoCobreFacilCall
                                                            .transacaoID(
                                                      (_model.resultadoCartaoSalvo
                                                              ?.jsonBody ??
                                                          ''),
                                                    ).toString(),
                                                    detalhesProdutos:
                                                        widget.detalhesProdutos,
                                                  ),
                                                ));
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          } else {
                                            logFirebaseEvent(
                                                'Button_alert_dialog');
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return WebViewAware(
                                                    child: AlertDialog(
                                                  title:
                                                      const Text('Cartão Recusado!'),
                                                  content: const Text(
                                                      'Tente com um outro cartão de Crédito.'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
                                                      child: const Text(
                                                          'Tentar Novamente'),
                                                    ),
                                                  ],
                                                ));
                                              },
                                            );
                                          }

                                          if (shouldSetState) setState(() {});
                                          return;
                                        } else {
                                          logFirebaseEvent(
                                              'Button_alert_dialog');
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return WebViewAware(
                                                  child: AlertDialog(
                                                title: const Text(
                                                    'ERRO AO EFETUAR A COMPRA COM O CARTÃO SALVO!'),
                                                content: Text(
                                                    AutorizarCobrancaViaCartaoCobreFacilCall
                                                        .erroCobraca(
                                                  (_model.resultadoCartaoSalvo
                                                          ?.jsonBody ??
                                                      ''),
                                                ).toString()),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: const Text(
                                                        'Tentar Novamente'),
                                                  ),
                                                ],
                                              ));
                                            },
                                          );
                                          if (shouldSetState) setState(() {});
                                          return;
                                        }
                                      }
                                    } else {
                                      logFirebaseEvent('Button_alert_dialog');
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return WebViewAware(
                                              child: AlertDialog(
                                            title: const Text('ERRO AO CRIAR TOKEN!'),
                                            content: const Text(
                                                'ERRO INTERNO, ENTRE EM CONTATO COM A NOSSA EQUIPE.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: const Text('Ok'),
                                              ),
                                            ],
                                          ));
                                        },
                                      );
                                      if (shouldSetState) setState(() {});
                                      return;
                                    }

                                    if (shouldSetState) setState(() {});
                                  },
                                  text: 'Realizar Pagamento',
                                  options: FFButtonOptions(
                                    height: 50.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 20.0,
                                        ),
                                    elevation: 10.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
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
          );
        },
      ),
    );
  }
}
