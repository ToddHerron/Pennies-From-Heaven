import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'row_logo_and_name_model.dart';
export 'row_logo_and_name_model.dart';

class RowLogoAndNameWidget extends StatefulWidget {
  const RowLogoAndNameWidget({Key? key}) : super(key: key);

  @override
  _RowLogoAndNameWidgetState createState() => _RowLogoAndNameWidgetState();
}

class _RowLogoAndNameWidgetState extends State<RowLogoAndNameWidget> {
  late RowLogoAndNameModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RowLogoAndNameModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              'assets/images/Logo_-_Two_Heart_and_Hand.png',
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
            Text(
              'pennies from heaven',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primary,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
