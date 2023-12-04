import '/componts/app_bar/app_bar_widget.dart';
import '/componts/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'termos_de_servicos_model.dart';
export 'termos_de_servicos_model.dart';

class TermosDeServicosWidget extends StatefulWidget {
  const TermosDeServicosWidget({Key? key}) : super(key: key);

  @override
  _TermosDeServicosWidgetState createState() => _TermosDeServicosWidgetState();
}

class _TermosDeServicosWidgetState extends State<TermosDeServicosWidget> {
  late TermosDeServicosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermosDeServicosModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'TermosDeServicos'});
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
        title: 'TermosDeServicos',
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
                                              'TERMOS_DE_SERVICOS_home_rounded_ICN_ON_T');
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
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        child: Text(
                                          'Termos de Serviço',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
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
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 20.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            50.0, 20.0, 50.0, 20.0),
                                        child: MarkdownBody(
                                          data:
                                              '''# **Termos de Serviço do Projects Flow**
---
###
## 1. **Introdução:**
### Bem-vindo ao "Projects Flow", um marketplace dedicado à venda e compra de projetos em FlutterFlow, telas de aplicativos e funções específicas para front-end e back-end.
###
## 2. **Elegibilidade:**
### Para vender projetos no "Projects Flow", é necessário ter pelo menos 18 anos de idade.
###
## 3. **Cadastro e Conta do Usuário:**
### Ao se cadastrar, coletamos informações como nome, e-mail e foto de perfil. Para pagamentos, solicitamos CPF, celular, endereço de cobrança e informações do cartão, sendo este último armazenado apenas no servidor seguro do Mercado Pago.
###
## 4. **Conduta do Usuário:**
### É proibido o uso de linguagem ofensiva nos chats de feedback. O não cumprimento pode resultar na suspensão da conta.
###
## 5. **Propriedade Intelectual:**
### A revenda ou compartilhamento de projetos adquiridos no site é estritamente proibido, sujeito a penalidades se detectado.
###
## 6. **Conteúdo do Usuário:**
Os usuários são livres para publicar conteúdo sem restrições de idade.
###
## 7. **Pagamentos e Faturamento:**
### Após vender projetos, os usuários podem sacar qualquer valor, sujeito a uma taxa fixa de 12%. Compradores só podem solicitar reembolso se não acessarem o conteúdo.
###
## 8. **Política de Privacidade:**
### Consulte nossa Política de Privacidade para obter informações sobre como os dados pessoais são coletados, usados e protegidos.
###
## 9. **Alterações nos Termos:**
### Os Termos podem ser atualizados mensalmente, sendo avisado ao usuário através de notificação ao entrar no site.
###
## 10. **Rescisão do Serviço:**
### Contas serão suspensas se os usuários não cumprirem os Termos de Serviço, a Política de Segurança ou a Conduta do Usuário.
###
## 11. **Limitação de Responsabilidade:**
### O "Projects Flow" se responsabiliza apenas pelo processo de transações financeiras usando o Mercado Pago. Disputas relacionadas a transações devem ser dirigidas ao Mercado Pago.
###
## 12. **Lei Aplicável e Jurisdição:**
### Estes Termos são regidos pelas leis do Brasil. Disputas serão resolvidas exclusivamente nos tribunais brasileiros.
###
## 13. **Disposições Gerais:**

### 13.1 Comunicação:
 A comunicação ocorrerá por meio de avisos no site, e-mails ou mensagens dentro da plataforma.
### 13.2 Cessão: Os usuários não podem transferir seus direitos sem consentimento por escrito.
### 13.3 Indenização: Usuários concordam em isentar o "Projects Flow" de responsabilidades.
### 13.4 Force Majeure: O "Projects Flow" não é responsável por eventos além de seu controle razoável.
### 13.5 Integralidade do Acordo: Estes Termos substituem acordos anteriores.
### 13.6 Severabilidade: Se alguma cláusula for inválida, as demais permanecerão em vigor.
### 13.7 Interpretação: Estes Termos serão interpretados de boa fé.
###
###
## **Ao utilizar o "Projects Flow", você concorda com estes Termos de Serviço.**
## **Caso tenha dúvidas, entre em contato conosco pelos canais de suporte fornecidos no site.**
###
###''',
                                          selectable: false,
                                        ),
                                      ),
                                    ),
                                  ],
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
