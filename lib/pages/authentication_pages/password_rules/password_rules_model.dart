import '/components/row_logo_and_name/row_logo_and_name_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PasswordRulesModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Row_LogoAndName component.
  late RowLogoAndNameModel rowLogoAndNameModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    rowLogoAndNameModel = createModel(context, () => RowLogoAndNameModel());
  }

  void dispose() {
    unfocusNode.dispose();
    rowLogoAndNameModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
