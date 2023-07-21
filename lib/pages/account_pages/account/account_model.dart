import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/heading2/heading2_widget.dart';
import '/components/navi_btn_grey/navi_btn_grey_widget.dart';
import '/components/user_photo/user_photo_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccountModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for UserPhoto component.
  late UserPhotoModel userPhotoModel;
  // Model for Heading2_account.
  late Heading2Model heading2AccountModel1;
  // Model for NaviBtnGrey_notificationSettings.
  late NaviBtnGreyModel naviBtnGreyNotificationSettingsModel1;
  // Model for NaviBtnGrey_paymentOptions.
  late NaviBtnGreyModel naviBtnGreyPaymentOptionsModel;
  // Model for NaviBtnGrey_notificationSettings.
  late NaviBtnGreyModel naviBtnGreyNotificationSettingsModel2;
  // Model for Heading2_account.
  late Heading2Model heading2AccountModel2;
  // Model for NaviBtnGrey_country.
  late NaviBtnGreyModel naviBtnGreyCountryModel;
  // Model for NaviBtnGrey_editProfile.
  late NaviBtnGreyModel naviBtnGreyEditProfileModel;
  // Model for NaviBtnGrey_notificationSettings.
  late NaviBtnGreyModel naviBtnGreyNotificationSettingsModel3;
  // Model for Heading2_general.
  late Heading2Model heading2GeneralModel;
  // Model for NaviBtnGrey_support.
  late NaviBtnGreyModel naviBtnGreySupportModel;
  // Model for NaviBtnGrey_TOS.
  late NaviBtnGreyModel naviBtnGreyTOSModel;
  // Model for NaviBtnGrey_InviteFriends.
  late NaviBtnGreyModel naviBtnGreyInviteFriendsModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    userPhotoModel = createModel(context, () => UserPhotoModel());
    heading2AccountModel1 = createModel(context, () => Heading2Model());
    naviBtnGreyNotificationSettingsModel1 =
        createModel(context, () => NaviBtnGreyModel());
    naviBtnGreyPaymentOptionsModel =
        createModel(context, () => NaviBtnGreyModel());
    naviBtnGreyNotificationSettingsModel2 =
        createModel(context, () => NaviBtnGreyModel());
    heading2AccountModel2 = createModel(context, () => Heading2Model());
    naviBtnGreyCountryModel = createModel(context, () => NaviBtnGreyModel());
    naviBtnGreyEditProfileModel =
        createModel(context, () => NaviBtnGreyModel());
    naviBtnGreyNotificationSettingsModel3 =
        createModel(context, () => NaviBtnGreyModel());
    heading2GeneralModel = createModel(context, () => Heading2Model());
    naviBtnGreySupportModel = createModel(context, () => NaviBtnGreyModel());
    naviBtnGreyTOSModel = createModel(context, () => NaviBtnGreyModel());
    naviBtnGreyInviteFriendsModel =
        createModel(context, () => NaviBtnGreyModel());
  }

  void dispose() {
    unfocusNode.dispose();
    userPhotoModel.dispose();
    heading2AccountModel1.dispose();
    naviBtnGreyNotificationSettingsModel1.dispose();
    naviBtnGreyPaymentOptionsModel.dispose();
    naviBtnGreyNotificationSettingsModel2.dispose();
    heading2AccountModel2.dispose();
    naviBtnGreyCountryModel.dispose();
    naviBtnGreyEditProfileModel.dispose();
    naviBtnGreyNotificationSettingsModel3.dispose();
    heading2GeneralModel.dispose();
    naviBtnGreySupportModel.dispose();
    naviBtnGreyTOSModel.dispose();
    naviBtnGreyInviteFriendsModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
