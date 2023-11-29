import '/components/app_bar_cell_widget.dart';
import '/components/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AppBar component.
  late AppBarModel appBarModel;
  // Model for AppBarCell component.
  late AppBarCellModel appBarCellModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    appBarCellModel = createModel(context, () => AppBarCellModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    appBarModel.dispose();
    appBarCellModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
