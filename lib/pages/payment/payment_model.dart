import '/components/horizontal_line_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PaymentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for HorizontalLine component.
  late HorizontalLineModel horizontalLineModel1;
  // Model for HorizontalLine component.
  late HorizontalLineModel horizontalLineModel2;
  // State field(s) for TextField_Email widget.
  TextEditingController? textFieldEmailController;
  String? Function(BuildContext, String?)? textFieldEmailControllerValidator;
  String? _textFieldEmailControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(
            '\\b(?:\\d[ -]*?){13,16}\\b(?:4[0-9]{12}(?:[0-9]{3})?          # Visa |  (?:5[1-5][0-9]{2}                # MasterCard     | 222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720)[0-9]{12} |  3[47][0-9]{13}                   # American Express |  3(?:0[0-5]|[68][0-9])[0-9]{11}   # Diners Club |  6(?:011|5[0-9]{2})[0-9]{12}      # Discover |  (?:2131|1800|35\\d{3})\\d{11}      # JCB)\\b(?:\\d[ -]*?){13,16}\\b')
        .hasMatch(val)) {
      return 'Email address not valid';
    }
    return null;
  }

  // State field(s) for TextField_CreditCard widget.
  TextEditingController? textFieldCreditCardController;
  final textFieldCreditCardMask =
      MaskTextInputFormatter(mask: '#### #### #### ####');
  String? Function(BuildContext, String?)?
      textFieldCreditCardControllerValidator;
  String? _textFieldCreditCardControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Credit card number is  required';
    }

    if (!RegExp('^(?:\\d{4}\\s){3}\\d{3}(?:(\\d*)|(\\s))?\$').hasMatch(val)) {
      return 'Invalid credit card number';
    }
    return null;
  }

  // State field(s) for TextField_Expiry widget.
  TextEditingController? textFieldExpiryController;
  final textFieldExpiryMask = MaskTextInputFormatter(mask: '## / ##');
  String? Function(BuildContext, String?)? textFieldExpiryControllerValidator;
  // State field(s) for TextField_CVC widget.
  TextEditingController? textFieldCVCController;
  String? Function(BuildContext, String?)? textFieldCVCControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownController;
  // State field(s) for TextField_PostalCode_CA widget.
  TextEditingController? textFieldPostalCodeCAController;
  final textFieldPostalCodeCAMask = MaskTextInputFormatter(mask: 'A#A #A#');
  String? Function(BuildContext, String?)?
      textFieldPostalCodeCAControllerValidator;
  // State field(s) for TextField_PostalCode_US widget.
  TextEditingController? textFieldPostalCodeUSController;
  final textFieldPostalCodeUSMask = MaskTextInputFormatter(mask: '#####-####');
  String? Function(BuildContext, String?)?
      textFieldPostalCodeUSControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    horizontalLineModel1 = createModel(context, () => HorizontalLineModel());
    horizontalLineModel2 = createModel(context, () => HorizontalLineModel());
    textFieldEmailControllerValidator = _textFieldEmailControllerValidator;
    textFieldCreditCardControllerValidator =
        _textFieldCreditCardControllerValidator;
  }

  void dispose() {
    horizontalLineModel1.dispose();
    horizontalLineModel2.dispose();
    textFieldEmailController?.dispose();
    textFieldCreditCardController?.dispose();
    textFieldExpiryController?.dispose();
    textFieldCVCController?.dispose();
    textFieldPostalCodeCAController?.dispose();
    textFieldPostalCodeUSController?.dispose();
  }

  /// Additional helper methods are added here.
}
