import '/components/amount_button_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GetDonationAmountModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for amountButton component.
  late AmountButtonModel amountButtonModel1;
  // Model for amountButton component.
  late AmountButtonModel amountButtonModel2;
  // Model for amountButton component.
  late AmountButtonModel amountButtonModel3;
  // Model for amountButton component.
  late AmountButtonModel amountButtonModel4;
  // Model for amountButton component.
  late AmountButtonModel amountButtonModel5;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    amountButtonModel1 = createModel(context, () => AmountButtonModel());
    amountButtonModel2 = createModel(context, () => AmountButtonModel());
    amountButtonModel3 = createModel(context, () => AmountButtonModel());
    amountButtonModel4 = createModel(context, () => AmountButtonModel());
    amountButtonModel5 = createModel(context, () => AmountButtonModel());
  }

  void dispose() {
    textController?.dispose();
    amountButtonModel1.dispose();
    amountButtonModel2.dispose();
    amountButtonModel3.dispose();
    amountButtonModel4.dispose();
    amountButtonModel5.dispose();
  }

  /// Additional helper methods are added here.

}
