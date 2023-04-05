import '/components/button_wide_dark_payment_widget.dart';
import '/components/donation_amount_button_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DonationModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<double> donationAmounts = [];
  void addToDonationAmounts(double item) => donationAmounts.add(item);
  void removeFromDonationAmounts(double item) => donationAmounts.remove(item);
  void removeAtIndexFromDonationAmounts(int index) =>
      donationAmounts.removeAt(index);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for DonationAmountButton component.
  late DonationAmountButtonModel donationAmountButtonModel1;
  // Model for DonationAmountButton component.
  late DonationAmountButtonModel donationAmountButtonModel2;
  // Model for DonationAmountButton component.
  late DonationAmountButtonModel donationAmountButtonModel3;
  // Model for DonationAmountButton component.
  late DonationAmountButtonModel donationAmountButtonModel4;
  // Model for DonationAmountButton component.
  late DonationAmountButtonModel donationAmountButtonModel5;
  // Model for ButtonWideDarkPayment component.
  late ButtonWideDarkPaymentModel buttonWideDarkPaymentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    donationAmountButtonModel1 =
        createModel(context, () => DonationAmountButtonModel());
    donationAmountButtonModel2 =
        createModel(context, () => DonationAmountButtonModel());
    donationAmountButtonModel3 =
        createModel(context, () => DonationAmountButtonModel());
    donationAmountButtonModel4 =
        createModel(context, () => DonationAmountButtonModel());
    donationAmountButtonModel5 =
        createModel(context, () => DonationAmountButtonModel());
    buttonWideDarkPaymentModel =
        createModel(context, () => ButtonWideDarkPaymentModel());
  }

  void dispose() {
    textController?.dispose();
    donationAmountButtonModel1.dispose();
    donationAmountButtonModel2.dispose();
    donationAmountButtonModel3.dispose();
    donationAmountButtonModel4.dispose();
    donationAmountButtonModel5.dispose();
    buttonWideDarkPaymentModel.dispose();
  }

  /// Additional helper methods are added here.
}
