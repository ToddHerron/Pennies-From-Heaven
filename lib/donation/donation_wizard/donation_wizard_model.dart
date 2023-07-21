import '/components/get_donation_amount/get_donation_amount_widget.dart';
import '/components/heading2/heading2_widget.dart';
import '/components/navi_btn_grey/navi_btn_grey_widget.dart';
import '/components/row_logo_and_name/row_logo_and_name_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DonationWizardModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Row_LogoAndName component.
  late RowLogoAndNameModel rowLogoAndNameModel;
  // State field(s) for PageView_Donation_LoggedOut widget.
  PageController? pageViewDonationLoggedOutController;

  int get pageViewDonationLoggedOutCurrentIndex =>
      pageViewDonationLoggedOutController != null &&
              pageViewDonationLoggedOutController!.hasClients &&
              pageViewDonationLoggedOutController!.page != null
          ? pageViewDonationLoggedOutController!.page!.round()
          : 0;
  // Model for getDonationAmount component.
  late GetDonationAmountModel getDonationAmountModel;
  // Model for NaviBtnGrey component.
  late NaviBtnGreyModel naviBtnGreyModel1;
  // Model for NaviBtnGrey component.
  late NaviBtnGreyModel naviBtnGreyModel2;
  // Model for Heading2 component.
  late Heading2Model heading2Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    rowLogoAndNameModel = createModel(context, () => RowLogoAndNameModel());
    getDonationAmountModel =
        createModel(context, () => GetDonationAmountModel());
    naviBtnGreyModel1 = createModel(context, () => NaviBtnGreyModel());
    naviBtnGreyModel2 = createModel(context, () => NaviBtnGreyModel());
    heading2Model = createModel(context, () => Heading2Model());
  }

  void dispose() {
    unfocusNode.dispose();
    rowLogoAndNameModel.dispose();
    getDonationAmountModel.dispose();
    naviBtnGreyModel1.dispose();
    naviBtnGreyModel2.dispose();
    heading2Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
