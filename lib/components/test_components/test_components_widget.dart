import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'test_components_model.dart';
export 'test_components_model.dart';

class TestComponentsWidget extends StatefulWidget {
  const TestComponentsWidget({
    Key? key,
    this.onCreditCardChange,
  }) : super(key: key);

  final Future<dynamic> Function()? onCreditCardChange;

  @override
  _TestComponentsWidgetState createState() => _TestComponentsWidgetState();
}

class _TestComponentsWidgetState extends State<TestComponentsWidget> {
  late TestComponentsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestComponentsModel());

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

    return Container();
  }
}
