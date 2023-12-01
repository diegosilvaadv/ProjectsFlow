import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'aceitar_termos_model.dart';
export 'aceitar_termos_model.dart';

class AceitarTermosWidget extends StatefulWidget {
  const AceitarTermosWidget({Key? key}) : super(key: key);

  @override
  _AceitarTermosWidgetState createState() => _AceitarTermosWidgetState();
}

class _AceitarTermosWidgetState extends State<AceitarTermosWidget> {
  late AceitarTermosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AceitarTermosModel());

    _model.expandableController1 = ExpandableController(initialExpanded: false);
    _model.expandableController2 = ExpandableController(initialExpanded: false);
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
        width: MediaQuery.sizeOf(context).width * 0.8,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Align(
          alignment: AlignmentDirectional(0.00, 0.00),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.7,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 20.0, 20.0, 20.0),
                            child: Container(
                              width: double.infinity,
                              color: Color(0x00FFFFFF),
                              child: ExpandableNotifier(
                                controller: _model.expandableController1,
                                child: ExpandablePanel(
                                  header: Text(
                                    'Termos de Serviço',
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                  ),
                                  collapsed: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: Text(
                                      'Antes de continuar Leia nossos Termos de Serviço.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 20.0,
                                          ),
                                    ),
                                  ),
                                  expanded: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 20.0),
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
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    iconSize: 35.0,
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.7,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 20.0, 20.0, 20.0),
                            child: Container(
                              width: double.infinity,
                              color: Color(0x00FFFFFF),
                              child: ExpandableNotifier(
                                controller: _model.expandableController2,
                                child: ExpandablePanel(
                                  header: Text(
                                    'Política de Privacidade',
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                  ),
                                  collapsed: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: Text(
                                      'Antes de continuar Leia nossa Política de Privacidade.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 20.0,
                                          ),
                                    ),
                                  ),
                                  expanded: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 20.0),
                                            child: MarkdownBody(
                                              data:
                                                  '''# **Política de Privacidade do Projects Flow**
---
###
## **1. Coleta de Informações:**
### Ao utilizar o "Projects Flow", coletamos informações pessoais limitadas, como nome, e-mail, foto de perfil, CPF, celular e endereço, necessárias para o cadastro e transações no site. As informações do cartão são armazenadas exclusivamente nos servidores seguros do Mercado Pago.
###
## **2. Uso de Informações:**
### As informações coletadas são utilizadas para gerenciar contas de usuário, processar transações, fornecer suporte ao cliente e melhorar a experiência do usuário no "Projects Flow". Não compartilhamos informações pessoais com terceiros, exceto conforme necessário para processar transações ou conforme exigido por lei.
###
## **3. Proteção de Dados:**
### Utilizamos tecnologias e práticas de segurança avançadas, como o banco de dados do Firebase, para proteger as informações dos usuários contra acesso não autorizado, vazamentos ou modificações.
###
## **4. Política de Cookies:**
### Utilizamos cookies para melhorar a experiência do usuário, personalizar conteúdos e anúncios, fornecer recursos de mídia social e analisar o tráfego do site. Os usuários podem controlar o uso de cookies nas configurações do navegador.
###
## **5. Informações de Pagamento:**
### As informações de pagamento, incluindo dados do cartão, são processadas pelo Mercado Pago. O "Projects Flow" não armazena informações de pagamento, garantindo a segurança desses dados.
###
## **6. Comunicações:**
### Podemos enviar comunicações importantes relacionadas à conta, transações ou mudanças nos Termos de Serviço. Os usuários podem optar por não receber comunicações não essenciais.
###
## **7. Acesso e Atualização de Dados:**
### Os usuários têm o direito de acessar, corrigir ou excluir suas informações pessoais. Para fazer isso, entre em contato conosco através dos canais de suporte no site.
###
## **8. Menores de Idade:**
### O "Projects Flow" não coleta intencionalmente informações de menores de 18 anos. Se tomarmos conhecimento de que um usuário é menor de idade, tomaremos medidas para remover suas informações.
###
## **9. Alterações na Política de Privacidade:**
### Podemos atualizar nossa Política de Privacidade periodicamente. As alterações serão refletidas nesta página, e os usuários serão notificados por meio de avisos no site.
###
## **10. Aceitação da Política:**
### Ao utilizar o "Projects Flow", você concorda com esta Política de Privacidade. Se não concordar com os termos desta política, recomendamos que não continue usando o serviço.
###
###
### **Para esclarecimentos adicionais sobre nossa Política de Privacidade,** 
### **entre em contato conosco pelos canais de suporte disponíveis no site.**
''',
                                              selectable: false,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: false,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    iconSize: 35.0,
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 50.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Form(
                          key: _model.formKey,
                          autovalidateMode: AutovalidateMode.always,
                          child: ToggleIcon(
                            onPressed: () async {
                              setState(() => FFAppState().aceitarTermos =
                                  !FFAppState().aceitarTermos);
                            },
                            value: FFAppState().aceitarTermos,
                            onIcon: Icon(
                              Icons.check_box,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 30.0,
                            ),
                            offIcon: Icon(
                              Icons.check_box_outline_blank,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 30.0,
                            ),
                          ),
                        ),
                        Text(
                          'Aceitar Termos de Serviço e Política de Privacidade.',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 25.0,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(50.0, 20.0, 50.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'ACEITAR_TERMOS_COMP_CONTINUAR_BTN_ON_TAP');
                            if (FFAppState().aceitarTermos) {
                              logFirebaseEvent('Button_backend_call');

                              await currentUserReference!
                                  .update(createUsersRecordData(
                                aceitarTermos: true,
                              ));
                              logFirebaseEvent('Button_navigate_to');

                              context.goNamed(
                                'HomePage',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 1000),
                                  ),
                                },
                              );

                              return;
                            } else {
                              logFirebaseEvent('Button_alert_dialog');
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return WebViewAware(
                                      child: AlertDialog(
                                    title:
                                        Text('Confirme os Termos e Política'),
                                    content: Text(
                                        'Você precisa aceitar nossos termos de serviço e política de privacidade para continuar.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  ));
                                },
                              );
                              return;
                            }
                          },
                          text: 'Continuar',
                          options: FFButtonOptions(
                            height: 45.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
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
      ),
    );
  }
}
