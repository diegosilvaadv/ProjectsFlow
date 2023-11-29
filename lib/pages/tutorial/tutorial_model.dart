import '/components/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tutorial_widget.dart' show TutorialWidget;
import 'package:flutter/material.dart';

class TutorialModel extends FlutterFlowModel<TutorialWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AppBar component.
  late AppBarModel appBarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    appBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
