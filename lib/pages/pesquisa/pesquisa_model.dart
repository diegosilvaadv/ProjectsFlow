import '/backend/backend.dart';
import '/componts/app_bar/app_bar_widget.dart';
import '/componts/nav_bar/nav_bar_widget.dart';
import '/componts/produtos/produtos_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'pesquisa_widget.dart' show PesquisaWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PesquisaModel extends FlutterFlowModel<PesquisaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AppBar component.
  late AppBarModel appBarModel;
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Algolia Search Results from action on Button
  List<ProjetosRecord>? algoliaSearchResults = [];
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
    textFieldFocusNode?.dispose();

    navBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
