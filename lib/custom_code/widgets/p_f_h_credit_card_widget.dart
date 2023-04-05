// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';

const Map<CardType, String> CardTypeIconAsset = <CardType, String>{
  CardType.visa: 'icons/visa.png',
  CardType.americanExpress: 'icons/amex.png',
  CardType.mastercard: 'icons/mastercard.png',
  CardType.unionpay: 'icons/unionpay.png',
  CardType.discover: 'icons/discover.png',
  CardType.elo: 'icons/elo.png',
  CardType.hipercard: 'icons/hipercard.png',
};

class PFHCreditCardWidget extends StatefulWidget {
  const PFHCreditCardWidget({
    Key? key,
    this.width,
    this.height,
    required this.cardNumber,
    required this.cardHolderName,
    required this.cvvCode,
    required this.expiryDate,
    required this.onCreditCardWidgetChange,
    required this.showBackView,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String cardNumber;
  final String cardHolderName;
  final String cvvCode;
  final String expiryDate;
  final void Function(CreditCardBrand) onCreditCardWidgetChange;
  final bool showBackView;

  @override
  _PFHCreditCardWidgetState createState() => _PFHCreditCardWidgetState();
}

class _PFHCreditCardWidgetState extends State<PFHCreditCardWidget> {
  @override
  Widget build(BuildContext context) {
    return CreditCardWidget(
      width: widget.width,
      height: widget.height,
      cardNumber: widget.cardNumber,
      cardHolderName: widget.cardHolderName,
      cvvCode: widget.cvvCode,
      expiryDate: widget.expiryDate,
      onCreditCardWidgetChange: widget.onCreditCardWidgetChange,
      showBackView: widget.showBackView,
    );
  }
}
