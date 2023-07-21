import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'text_list_empty_model.dart';
export 'text_list_empty_model.dart';

class TextListEmptyWidget extends StatefulWidget {
  const TextListEmptyWidget({
    Key? key,
    String? listEmptyMessage,
  })  : this.listEmptyMessage = listEmptyMessage ?? 'No Items',
        super(key: key);

  final String listEmptyMessage;

  @override
  _TextListEmptyWidgetState createState() => _TextListEmptyWidgetState();
}

class _TextListEmptyWidgetState extends State<TextListEmptyWidget> {
  late TextListEmptyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TextListEmptyModel());

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

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Text(
        widget.listEmptyMessage,
        style: FlutterFlowTheme.of(context).titleMedium,
      ),
    );
  }
}
