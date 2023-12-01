import '/componts/app_bar/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'polticade_privacidade_model.dart';
export 'polticade_privacidade_model.dart';

class PolticadePrivacidadeWidget extends StatefulWidget {
  const PolticadePrivacidadeWidget({Key? key}) : super(key: key);

  @override
  _PolticadePrivacidadeWidgetState createState() =>
      _PolticadePrivacidadeWidgetState();
}

class _PolticadePrivacidadeWidgetState
    extends State<PolticadePrivacidadeWidget> {
  late PolticadePrivacidadeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PolticadePrivacidadeModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'PolticadePrivacidade'});
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
        title: 'PolticadePrivacidade',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                200.0, 10.0, 200.0, 50.0),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    50.0, 20.0, 50.0, 20.0),
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
                          ),
                        ],
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
