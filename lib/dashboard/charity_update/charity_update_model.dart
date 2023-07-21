import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CharityUpdateModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool isEditMode = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField_charityLegaName widget.
  TextEditingController? textFieldCharityLegaNameController;
  String? Function(BuildContext, String?)?
      textFieldCharityLegaNameControllerValidator;
  // State field(s) for TextField_charityInformalName widget.
  TextEditingController? textFieldCharityInformalNameController;
  String? Function(BuildContext, String?)?
      textFieldCharityInformalNameControllerValidator;
  // State field(s) for TextField_unit widget.
  TextEditingController? textFieldUnitController1;
  String? Function(BuildContext, String?)? textFieldUnitController1Validator;
  // State field(s) for TextField_unit widget.
  TextEditingController? textFieldUnitController2;
  String? Function(BuildContext, String?)? textFieldUnitController2Validator;
  // State field(s) for TextField_city widget.
  TextEditingController? textFieldCityController;
  String? Function(BuildContext, String?)? textFieldCityControllerValidator;
  // State field(s) for TextField_provinceState widget.
  TextEditingController? textFieldProvinceStateController;
  String? Function(BuildContext, String?)?
      textFieldProvinceStateControllerValidator;
  // State field(s) for TextField_country widget.
  TextEditingController? textFieldCountryController;
  String? Function(BuildContext, String?)? textFieldCountryControllerValidator;
  // State field(s) for TextField_postalZipCode widget.
  TextEditingController? textFieldPostalZipCodeController;
  String? Function(BuildContext, String?)?
      textFieldPostalZipCodeControllerValidator;
  // State field(s) for TextField_charityRegistrationNumber widget.
  TextEditingController? textFieldCharityRegistrationNumberController;
  final textFieldCharityRegistrationNumberMask =
      MaskTextInputFormatter(mask: '### ### ### RR ####');
  String? Function(BuildContext, String?)?
      textFieldCharityRegistrationNumberControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textFieldCharityLegaNameController?.dispose();
    textFieldCharityInformalNameController?.dispose();
    textFieldUnitController1?.dispose();
    textFieldUnitController2?.dispose();
    textFieldCityController?.dispose();
    textFieldProvinceStateController?.dispose();
    textFieldCountryController?.dispose();
    textFieldPostalZipCodeController?.dispose();
    textFieldCharityRegistrationNumberController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
