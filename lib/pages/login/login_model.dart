import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  // State field(s) for emailcreat widget.
  FocusNode? emailcreatFocusNode;
  TextEditingController? emailcreatController;
  String? Function(BuildContext, String?)? emailcreatControllerValidator;
  // State field(s) for passwordcreat widget.
  FocusNode? passwordcreatFocusNode;
  TextEditingController? passwordcreatController;
  late bool passwordcreatVisibility;
  String? Function(BuildContext, String?)? passwordcreatControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordcreatVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();

    nomeFocusNode?.dispose();
    nomeController?.dispose();

    emailcreatFocusNode?.dispose();
    emailcreatController?.dispose();

    passwordcreatFocusNode?.dispose();
    passwordcreatController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
