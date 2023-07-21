import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_photo_model.dart';
export 'user_photo_model.dart';

class UserPhotoWidget extends StatefulWidget {
  const UserPhotoWidget({
    Key? key,
    this.parameter1,
    this.parameter2,
  }) : super(key: key);

  final bool? parameter1;
  final String? parameter2;

  @override
  _UserPhotoWidgetState createState() => _UserPhotoWidgetState();
}

class _UserPhotoWidgetState extends State<UserPhotoWidget> {
  late UserPhotoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserPhotoModel());

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

    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          if (widget.parameter1 ?? true)
            ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.network(
                widget.parameter2!,
                width: 100.0,
                height: MediaQuery.sizeOf(context).height * 100.0,
                fit: BoxFit.cover,
              ),
            ),
          if (widget.parameter1 == false)
            ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset(
                'assets/images/User_Placeholder.jpg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
        ],
      ),
    );
  }
}
