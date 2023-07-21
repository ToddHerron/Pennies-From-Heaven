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

class AddCharityModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField_charityLegalName widget.
  TextEditingController? textFieldCharityLegalNameController;
  String? Function(BuildContext, String?)?
      textFieldCharityLegalNameControllerValidator;
  // State field(s) for TextField_charityInformalName widget.
  TextEditingController? textFieldCharityInformalNameController;
  String? Function(BuildContext, String?)?
      textFieldCharityInformalNameControllerValidator;
  // State field(s) for TextField_address widget.
  TextEditingController? textFieldAddressController;
  String? Function(BuildContext, String?)? textFieldAddressControllerValidator;
  // State field(s) for TextField_unit widget.
  TextEditingController? textFieldUnitController;
  String? Function(BuildContext, String?)? textFieldUnitControllerValidator;
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
  final textFieldPostalZipCodeMask = MaskTextInputFormatter(mask: 'A#A #A#');
  String? Function(BuildContext, String?)?
      textFieldPostalZipCodeControllerValidator;
  // State field(s) for TextField_charitableRegistrationNumber widget.
  TextEditingController? textFieldCharitableRegistrationNumberController;
  final textFieldCharitableRegistrationNumberMask =
      MaskTextInputFormatter(mask: '### ### ### RR ####');
  String? Function(BuildContext, String?)?
      textFieldCharitableRegistrationNumberControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button_save widget.
  CharitiesRecord? createCharityRecordResult;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textFieldCharityLegalNameController?.dispose();
    textFieldCharityInformalNameController?.dispose();
    textFieldAddressController?.dispose();
    textFieldUnitController?.dispose();
    textFieldCityController?.dispose();
    textFieldProvinceStateController?.dispose();
    textFieldCountryController?.dispose();
    textFieldPostalZipCodeController?.dispose();
    textFieldCharitableRegistrationNumberController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
