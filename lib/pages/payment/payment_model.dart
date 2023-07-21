import '/components/heading2/heading2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Heading2 component.
  late Heading2Model heading2Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    heading2Model = createModel(context, () => Heading2Model());
  }

  void dispose() {
    unfocusNode.dispose();
    heading2Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
