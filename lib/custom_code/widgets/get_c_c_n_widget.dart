// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// This widget requires the following App State Variables:
//   String CCHolderName ''
//   String CCNumber ''
//   String CCExpiryDate ''
//   String CCSecurityCode ''
//
// and the following callback Actions:
//   refreshPageUI
//   goToNextPage

import 'dart:async';

// 🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦 Custom IMPORTS   🟦🟦🟦🟦🟦🟦🟦🟦🟦

import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// 🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦 Custom CONSTANTS 🟦🟦🟦🟦🟦🟦🟦🟦🟦

enum CreditCardType { Unknown, Visa, Mastercard, Amex, Discover }

// 🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦 Custom WIDGET    🟦🟦🟦🟦🟦🟦🟦🟦🟦

class GetCCNWidget extends StatefulWidget {
  const GetCCNWidget({
    Key? key,
    this.width,
    this.height,
    required saveOnly,
    required this.refreshPageUI,
    required this.goToNextPage,
  }) : super(key: key);

  final double? width;
  final double? height;

  final String cardCVCHintText = '';

  final Future<dynamic> Function() refreshPageUI;
  final Future<dynamic> Function() goToNextPage;

  final bool saveOnly = false;

  @override
  _GetCCNWidgetState createState() => _GetCCNWidgetState();
} //

// 🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦 Custom STATE      🟦🟦🟦🟦🟦🟦🟦🟦🟦

class _GetCCNWidgetState extends State<GetCCNWidget> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _textEditingControllerCCN = TextEditingController();
  CardSystemData? _cardSystemData;

  String _CCHolderName = '';
  String _CCNumber = '';
  String _CCExpiryDate = '';
  String _CCSecurityCode = '';

  bool _CCHolderNameDirty = false;

  static const String _cardHolderNameLabelText = 'Name on Card';
  static const String _cardHolderNameHintText = 'Name on Card';

  static const String _cardNumberLabelText = 'Card Number';
  static const String _cardNumberHintText = '0000 0000 0000 0000';

  static const String _cardExpiryDateLabelText = 'Expiry Date';
  static const String _cardExpiryDateHintText = 'MM/DD';

  static const String _cardCVCLabelText = 'Security Code';

  static const double _formFieldPadding = 20.0;

  CreditCardType getCreditCardType(String cardNumber) {
    if (RegExp(r'4[0-9]{12}(?:[0-9]{3})?').hasMatch(cardNumber)) {
      return CreditCardType.Visa;
    } else if (RegExp(r'^5[1-5][0-9]{14}$').hasMatch(cardNumber)) {
      return CreditCardType.Mastercard;
    } else if (RegExp(r'^3[47][0-9]{13}$').hasMatch(cardNumber)) {
      return CreditCardType.Amex;
    } else if (RegExp(r'^6(?:011|5[0-9]{2})[0-9]{12}$').hasMatch(cardNumber)) {
      return CreditCardType.Discover;
    } else {
      return CreditCardType.Unknown;
    }
  }

  bool _validateCreditCardNumber(String? input) {
    if (input == null) {
      print("PFH: Null input");
      return true;
    }
    // Strip out the blank spaces

    input = input.replaceAll(RegExp(r'\s+'), '');

    // Determine credit card type
    CreditCardType cardType = getCreditCardType(input);
    if (cardType == CreditCardType.Unknown) {
      return false;
    }

    // Get the valid number of digits for the given card type

    int requiredLength = 0;

    switch (cardType) {
      case CreditCardType.Visa:
        requiredLength = 16;
        break;

      case CreditCardType.Mastercard:
        requiredLength = 16;
        break;

      case CreditCardType.Amex:
        requiredLength = 15;
        break;

      case CreditCardType.Discover:
        requiredLength = 16;
        break;

      case CreditCardType.Unknown:
        return false;
    }

    // Credit Card Number = required length?

    if (input.length != requiredLength) {
      return false;
    }

    // Input consists of only digits?

    if (!RegExp(r'^\d+$').hasMatch(input)) {
      return false;
    }

    // Run Luhn checksum algorithm

    int sum = 0;
    bool isSecondDigit = false;
    for (int i = input.length - 1; i >= 0; i--) {
      int digit = int.parse(input[i]);
      if (isSecondDigit) {
        digit *= 2;
        if (digit > 9) {
          digit -= 9;
        }
      }
      sum += digit;
      isSecondDigit = !isSecondDigit;
    }
    return sum % 10 != 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      decoration: BoxDecoration(),
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
// ---------------------------------------------------------------------
// CARD HOLDER NAME
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.characters,
//
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),

                      label: Text(_cardHolderNameLabelText),

                      labelStyle: TextStyle(
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),

                      floatingLabelStyle: TextStyle(
                          color: FlutterFlowTheme.of(context).tertiary),

                      hintText: _cardHolderNameHintText,

                      hintStyle: TextStyle(
                        color: FlutterFlowTheme.of(context).accent3,
                      ),

                      errorStyle: TextStyle(
                        color: FlutterFlowTheme.of(context).error,
                      ), // Theme.of(context).colorScheme.errorContainer,
                    ),
//
                    inputFormatters: [
                      MaskedInputFormatter("########################",
                          allowedCharMatcher: RegExp(r'[a-zA-Z -]+')),
                      UppercaseTextInputFormatter(),
                    ],
                    onChanged: (String? value) {
                      if (value == null) {
                        return;
                      }
                      setState(() {
                        _CCHolderNameDirty = true;
                      });
                      FFAppState().CCHolderName = _CCHolderName;
                      widget.refreshPageUI();
                    },

                    onFieldSubmitted: (String value) {
                      print("PFH: onFieldSubmitted ... The form was submitted");

                      setState(
                        () {
                          _CCHolderNameDirty = true;
                        },
                      );
                    },

                    validator: (String? input) {
                      print("PFH: validator       ... The form was validated");

                      if (input == null) {
                        return null;
                      }
                      ;
                      print("PFH: _CCholderNameDirty = " +
                          _CCHolderNameDirty.toString());
                      print("PFH: _CCholderName      = " + _CCHolderName);
                      if (_CCHolderNameDirty && input.length == 0) {
                        return 'Invalid Cardholder Name';
                      }
                      ;
                      return null;
                    },
                  ),
                ),
              ],
            ),
// ---------------------------------------------------------------------
            SizedBox(height: _formFieldPadding),
// ---------------------------------------------------------------------
// CREDIT CARD NUMBER
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      // Column children
                      TextFormField(
                        controller: _textEditingControllerCCN,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          suffixIcon: CreditCardIconWidget(
                              width: 0.0,
                              height: 0.0,
                              cardSystem: _cardSystemData?.system),
                          border: OutlineInputBorder(),
                          label: Text(_cardNumberLabelText),
                          labelStyle: TextStyle(
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                          floatingLabelStyle: TextStyle(
                              color: FlutterFlowTheme.of(context).tertiary),
                          hintText: _cardNumberHintText,
                          hintStyle: TextStyle(
                            color: FlutterFlowTheme.of(context).accent3,
                          ),
                          errorStyle: TextStyle(
                            color: FlutterFlowTheme.of(context).error,
                          ),
                          suffixIconColor:
                              FlutterFlowTheme.of(context).secondaryText,
                        ),
                        inputFormatters: [
                          CreditCardNumberInputFormatter(
                            onCardSystemSelected:
                                (CardSystemData? cardSystemData) {
                              setState(() {
                                _cardSystemData = cardSystemData;
                              });
                            },
                          ),
                        ],
                        onChanged: (String? value) {
                          setState(() {});

                          if (value == null) {
                            return;
                          }
                          setState(() {
                            _CCNumber = value;
                          });
                          FFAppState().CCNumber = _CCNumber;
                          widget.refreshPageUI();
                        },
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return null;
                          }

                          return _validateCreditCardNumber(value)
                              ? 'Invalid Card Number'
                              : null;
                        },
                      )
                    ], // Column children
                  ),
                ),
              ],
            ),
// ---------------------------------------------------------------------
            SizedBox(height: _formFieldPadding),
// ---------------------------------------------------------------------
//   EXPIRY DATE
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text(_cardExpiryDateLabelText),
                      labelStyle: TextStyle(
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),
                      floatingLabelStyle: TextStyle(
                          color: FlutterFlowTheme.of(context).tertiary),
                      hintText: _cardExpiryDateHintText,
                      hintStyle: TextStyle(
                        color: FlutterFlowTheme.of(context).accent3,
                      ),
                      errorStyle: TextStyle(
                        color: FlutterFlowTheme.of(context).error,
                      ),
                    ),
                    inputFormatters: [
                      CreditCardExpirationDateFormatter(),
                    ],
                    onChanged: (String? value) {
                      setState(() {});

                      if (value == null) {
                        return;
                      }
                      setState(() {
                        _CCExpiryDate = value;
                      });
                      FFAppState().CCExpiryDate = _CCExpiryDate;
                      widget.refreshPageUI();
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length < 5) {
                        return null;
                      }

                      if (value.substring(0, 2) == "00") {
                        return "Invalid month";
                      }

                      final inputDate = value.split('/');
                      if (inputDate.length != 2) {
                        return 'Use MM/YY format';
                      }

                      final inputMonth = int.tryParse(inputDate[0]);
                      final inputYear = int.tryParse(inputDate[1]);

                      if (inputMonth == null || inputYear == null) {
                        return 'Use MM/YY format';
                      }

                      final now = DateTime.now();
                      final currentMonth = now.month;
                      final currentYear = now.year % 100;

                      final currentDate = DateTime(currentYear, currentMonth);
                      final inputDateObj = DateTime(inputYear, inputMonth);

                      final difference = inputDateObj.difference(currentDate);

                      if (difference.isNegative) {
                        return 'Date too early';
                      }

                      // Card issuers don't allow Expiry Dates more than 5 years from now.
                      final maxAllowedDifference =
                          Duration(days: 60 * 30); // 60 months * 30 days
                      if (difference > maxAllowedDifference) {
                        return 'Date more than 5 years out';
                      }
                      return null;
                    },
                  ),
                ),
// ---------------------------------------------------------------------
                SizedBox(width: _formFieldPadding),
// ---------------------------------------------------------------------
//  SECURITY NUMBER
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text(_cardCVCLabelText),
                      labelStyle: TextStyle(
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),
                      floatingLabelStyle: TextStyle(
                          color: FlutterFlowTheme.of(context).tertiary),
                      hintText:
                          _cardSystemData?.system == "Amex" ? '0000' : '000',
                      hintStyle: TextStyle(
                        color: FlutterFlowTheme.of(context).accent3,
                      ),
                      errorStyle: TextStyle(
                        color: FlutterFlowTheme.of(context).error,
                      ),
                    ),
                    inputFormatters: [
                      CreditCardCvcInputFormatter(
                        isAmericanExpress: _cardSystemData?.system == "Amex",
                      ),
                    ],
                    onChanged: (String? value) {
                      setState(() {});

                      if (value == null) {
                        return;
                      }
                      setState(() {
                        _CCSecurityCode = value;
                      });
                      FFAppState().CCSecurityCode = _CCSecurityCode;
                      widget.refreshPageUI();
                    },
                  ), // TextFormField
                ), // Expanded
              ], // Row children
            ),
// ---------------------------------------------------------------------
            SizedBox(height: _formFieldPadding * 2),
// ---------------------------------------------------------------------

// Pay With Credit Card Button
            ElevatedButton(
                child: widget.saveOnly
                    ? const Text(
                        'Save Credit Card Details',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      )
                    : const Text(
                        'Pay with Credit Card',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromHeight(
                    44.0,
                  ),
                  elevation: 0.0,
                ),
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Column(
                          children: [
                            Text('Processing Data'),
                            Text(FFAppState().CCHolderName),
                            Text(FFAppState().CCNumber),
                            Text(FFAppState().CCExpiryDate),
                            Text(FFAppState().CCSecurityCode),
                          ],
                        ),
                      ),
                    );
                    widget.goToNextPage();
                  } else {
                    const SnackBar(
                        content: Text('Please correct payment errors'));
                  }
                }),
// ---------------------------------------------------------------------
            SizedBox(height: _formFieldPadding),
// ---------------------------------------------------------------------
          ],
        ),
      ),
    );
  }
}

// 🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦 Custom EXTENSIONS 🟦🟦🟦🟦🟦🟦🟦🟦🟦

class UppercaseTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
