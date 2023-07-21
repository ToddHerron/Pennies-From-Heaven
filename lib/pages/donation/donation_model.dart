import '/components/get_donation_amount/get_donation_amount_widget.dart';
import '/components/row_logo_and_name/row_logo_and_name_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DonationModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  double? donationAmount = 0.0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Row_LogoAndName component.
  late RowLogoAndNameModel rowLogoAndNameModel;
  // Model for getDonationAmount component.
  late GetDonationAmountModel getDonationAmountModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    rowLogoAndNameModel = createModel(context, () => RowLogoAndNameModel());
    getDonationAmountModel =
        createModel(context, () => GetDonationAmountModel());
  }

  void dispose() {
    unfocusNode.dispose();
    rowLogoAndNameModel.dispose();
    getDonationAmountModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
