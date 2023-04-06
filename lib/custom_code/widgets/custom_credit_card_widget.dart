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
import 'package:flutter_credit_card/constants.dart';
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

class CustomCreditCardWidget extends StatefulWidget {
  const CustomCreditCardWidget({
    Key? key,
    this.width,
    this.height,
    required this.cardNumber,
    required this.expiryDate,
    required this.cardHolderName,
    required this.cvvCode,
    required this.showBackView,
    this.bankName,
    this.animationDuration = const Duration(milliseconds: 500),
    this.cardHeight,
    this.cardWidth,
    this.textStyle,
    this.cardBgColor = const Color(0xff1b447b),
    this.obscureCardNumber = true,
    this.obscureCardCvv = true,
    this.labelCardHolder = 'CARD HOLDER',
    this.labelExpiredDate = 'MM/YY',
    //   this.labelValidThru = 'VALID\nTHRU',
    this.cardType,
    this.isHolderNameVisible = false,
    this.backgroundImage,
    this.backgroundNetworkImage,
    this.glassmorphismConfig,
    this.isChipVisible = true,
    this.isSwipeGestureEnabled = true,
    this.customCardTypeIcons = const <CustomCardTypeIcon>[],
    required this.onCreditCardWidgetChange,
    this.padding = AppConstants.creditCardPadding,
    this.chipColor,
    this.frontCardBorder,
    this.backCardBorder,
    this.obscureInitialCardNumber = false,
  }) : super(key: key);

  final double? width;
  final double? height;

  /// A string indicating number on the card.
  final String cardNumber;

  /// A string indicating expiry date for the card.
  final String expiryDate;

  /// A string indicating name of the card holder.
  final String cardHolderName;

  /// A String indicating cvv code.
  final String cvvCode;

  /// Shows back side of the card at initial level when setting it to true./// This is helpful when focusing on cvv.
  final bool showBackView;

  /// A string indicating name of the bank.
  final String? bankName;

  /// Duration for flip animation. Defaults to 500 milliseconds.
  final Duration animationDuration;

  /// Sets height of the front and back side of the card.
  final double? cardHeight;

  /// Sets width of the front and back side of the card.
  final double? cardWidth;

  /// Applies text style to cardNumber, expiryDate, cardHolderName and cvvCode.
  final TextStyle? textStyle;

  /// Applies background color for card UI.
  final Color cardBgColor;

  /// If this flag is enabled then card number is replaced with obscuring
  /// characters to hide the content. Initial 4 and last 4 character
  /// doesn't get obscured. Defaults to true.
  final bool obscureCardNumber;

  /// If this flag is enabled then cvv is replaced with obscuring characters
  /// to hide the content. Defaults to true.
  final bool obscureCardCvv;

  /// Default label for card holder name. This is shown when user hasn't
  /// entered any text for card holder name.
  final String labelCardHolder;

  /// Default label for expiry date. This is shown when user hasn't entered any
  /// text for expiry date.
  final String labelExpiredDate;

  /// Default label for valid thru. This is shown when user hasn't entered any
  /// text for valid thru.
  // final String labelValidThru;

  /// Sets type of the card. An small image is shown based on selected type
  /// of the card at bottom right corner. If this is set to null then image
  /// shown automatically based on credit card number.
  final CardType? cardType;

  /// Enable/disable card holder name. Defaults to false.
  final bool isHolderNameVisible;

  /// Shows image as background of the card widget. This should be available
  /// locally in your assets folder.
  final String? backgroundImage;

  /// Shows image as background of the card widget from the network.
  final String? backgroundNetworkImage;

  /// Used to provide glassmorphism effect to credit card widget.
  final Glassmorphism? glassmorphismConfig;

  /// Enable/disable showcasing EMV chip UI. Defaults to true.
  final bool isChipVisible;

  /// Enable/disable gestures on credit card widget. If enabled then flip
  /// animation is started when swiped or tapped. Defaults to true.
  final bool isSwipeGestureEnabled;

  /// Replaces credit card image with provided widget.
  final List<CustomCardTypeIcon> customCardTypeIcons;

  /// Provides a callback any time there is a change in credit card brand.
  final void Function(CreditCardBrand) onCreditCardWidgetChange;

  /// Provides equal padding inside the credit card widget in all directions.
  /// Defaults to 16.
  final double padding;

  /// Provides color to EMV chip on the card.
  final Color? chipColor;

  /// Provides border in front of credit card widget.
  final BoxBorder? frontCardBorder;

  /// Provides border at back of credit card widget.
  final BoxBorder? backCardBorder;

  /// Also obscures initial 4 card numbers with obscuring characters. This
  /// flag requires [obscureCardNumber] to be true. This flag defaults to false.
  final bool obscureInitialCardNumber;

  @override
  _CustomCreditCardWidgetState createState() => _CustomCreditCardWidgetState();
}

class _CustomCreditCardWidgetState extends State<CustomCreditCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: CreditCardWidget(
        cardNumber: widget.cardNumber,
        expiryDate: widget.expiryDate,
        cardHolderName: widget.cardHolderName,
        cvvCode: widget.cvvCode,
        showBackView: widget.showBackView,
        bankName: widget.bankName,
        animationDuration: widget.animationDuration,
        height: widget.cardHeight,
        width: widget.cardWidth,
        textStyle: widget.textStyle,
        cardBgColor: widget.cardBgColor,
        obscureCardNumber: widget.obscureCardNumber,
        obscureCardCvv: widget.obscureCardCvv,
        labelCardHolder: widget.labelCardHolder,
        labelExpiredDate: widget.labelExpiredDate,
        //       labelValidThru: widget.labelValidThru,
        cardType: widget.cardType,
        isHolderNameVisible: widget.isHolderNameVisible,
        backgroundImage: widget.backgroundImage,
        backgroundNetworkImage: widget.backgroundNetworkImage,
        glassmorphismConfig: widget.glassmorphismConfig,
        isChipVisible: widget.isChipVisible,
        isSwipeGestureEnabled: widget.isSwipeGestureEnabled,
        customCardTypeIcons: widget.customCardTypeIcons,
        onCreditCardWidgetChange: widget.onCreditCardWidgetChange,
        padding: widget.padding,
        chipColor: widget.chipColor,
        frontCardBorder: widget.frontCardBorder,
        backCardBorder: widget.backCardBorder,
        obscureInitialCardNumber: widget.obscureInitialCardNumber,
      ),
    );
  }
}
