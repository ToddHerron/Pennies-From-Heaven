import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'amount_button_model.dart';
export 'amount_button_model.dart';

class AmountButtonWidget extends StatefulWidget {
  const AmountButtonWidget({
    Key? key,
    int? amountIndex,
  })  : this.amountIndex = amountIndex ?? 0,
        super(key: key);

  final int amountIndex;

  @override
  _AmountButtonWidgetState createState() => _AmountButtonWidgetState();
}

class _AmountButtonWidgetState extends State<AmountButtonWidget>
    with TickerProviderStateMixin {
  late AmountButtonModel _model;

  final animationsMap = {
    'buttonOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AmountButtonModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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

    return FFButtonWidget(
      onPressed: () async {
        // Set the donationAmount
        _model.updatePage(() {
          FFAppState().donationAmount =
              FFAppState().donationAmounts[widget.amountIndex];
          FFAppState().isCustomAmount = false;
        });
        // Spin the Button
        if (animationsMap['buttonOnActionTriggerAnimation'] != null) {
          await animationsMap['buttonOnActionTriggerAnimation']!
              .controller
              .forward(from: 0.0);
        }
      },
      text: formatNumber(
        FFAppState().donationAmounts[widget.amountIndex],
        formatType: FormatType.decimal,
        decimalType: DecimalType.periodDecimal,
        currency: '',
      ),
      options: FFButtonOptions(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: !FFAppState().isCustomAmount &&
                (FFAppState().donationAmounts[widget.amountIndex] ==
                    FFAppState().donationAmount)
            ? FlutterFlowTheme.of(context).tertiary
            : Color(0xFFA4BDED),
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 25.0,
            ),
        elevation: 2.0,
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
    ).animateOnActionTrigger(
      animationsMap['buttonOnActionTriggerAnimation']!,
    );
  }
}
