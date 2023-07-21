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

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreditCardIconWidget extends StatefulWidget {
  const CreditCardIconWidget({
    Key? key,
    this.width,
    this.height,
    this.cardSystem,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? cardSystem;

  @override
  _CreditCardIconWidgetState createState() => _CreditCardIconWidgetState();
}

class _CreditCardIconWidgetState extends State<CreditCardIconWidget> {
  late Widget _iconWidget;
  @override
  Widget build(BuildContext context) {
    switch (widget.cardSystem) {
      case null:
        _iconWidget = FaIcon(null);
        break;

      case "Amex":
        _iconWidget = FaIcon(FontAwesomeIcons.ccAmex);
        break;

      case "Visa":
        // Card Prefix(es): 4
        _iconWidget = FaIcon(FontAwesomeIcons.ccVisa);
        break;

      case "Mastercard":
        // Card Prefix(es): 5 222 2720
        _iconWidget = FaIcon(FontAwesomeIcons.ccMastercard);
        break;

      case "DinersClub":
        // Card Prefix(es): 14 36 54 30
        _iconWidget = FaIcon(FontAwesomeIcons.ccDinersClub);
        break;

      case "JCB":
        // Card Prefix(es): 35
        _iconWidget = FaIcon(FontAwesomeIcons.ccJcb);
        break;

      case "Discover":
        // Card Prefix(es): 60
        _iconWidget = FaIcon(FontAwesomeIcons.ccDiscover);
        break;

/*        
      case "Maestro": 
        // Card Prefix(es): 67
        _iconWidget =  NO FONT AWESOME ICON
        break;

      case "MIR": 
        // Card Prefix(es): 2200 2204
        _iconWidget = NO FONT AWESOME ICON
        break;

      case "UnionPay": 
        // Card Prefix(es): 62
        _iconWidget = NO FONT AWESOME ICON
        break;
*/
      default:
        _iconWidget = FaIcon(FontAwesomeIcons.creditCard);
    }
    return Align(
        alignment: Alignment(-0.5, 0.0),
        widthFactor: 1.2,
        heightFactor: 1.2,
        child: _iconWidget);
  }
}
