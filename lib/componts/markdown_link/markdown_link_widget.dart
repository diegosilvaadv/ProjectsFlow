import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'markdown_link_model.dart';
export 'markdown_link_model.dart';

class MarkdownLinkWidget extends StatefulWidget {
  const MarkdownLinkWidget({Key? key}) : super(key: key);

  @override
  _MarkdownLinkWidgetState createState() => _MarkdownLinkWidgetState();
}

class _MarkdownLinkWidgetState extends State<MarkdownLinkWidget> {
  late MarkdownLinkModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MarkdownLinkModel());

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

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        logFirebaseEvent('MARKDOWN_LINK_COMP_Text_fj3buwxx_ON_TAP');
        logFirebaseEvent('Text_launch_u_r_l');
        await launchURL('https://onlinemarkdowneditor.dev/');
      },
      child: Text(
        ' AQUI',
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Readex Pro',
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
            ),
      ),
    );
  }
}
