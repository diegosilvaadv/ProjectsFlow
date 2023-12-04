import '/backend/backend.dart';
import '/componts/app_bar/app_bar_widget.dart';
import '/componts/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'detalhes_vendas_widget.dart' show DetalhesVendasWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class DetalhesVendasModel extends FlutterFlowModel<DetalhesVendasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AppBar component.
  late AppBarModel appBarModel;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    appBarModel.dispose();
    navBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
