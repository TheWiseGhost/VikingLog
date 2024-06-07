import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'input_set_widget.dart' show InputSetWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InputSetModel extends FlutterFlowModel<InputSetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for EnterWeight widget.
  FocusNode? enterWeightFocusNode;
  TextEditingController? enterWeightTextController;
  String? Function(BuildContext, String?)? enterWeightTextControllerValidator;
  // State field(s) for EnterReps widget.
  FocusNode? enterRepsFocusNode;
  TextEditingController? enterRepsTextController;
  String? Function(BuildContext, String?)? enterRepsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    enterWeightFocusNode?.dispose();
    enterWeightTextController?.dispose();

    enterRepsFocusNode?.dispose();
    enterRepsTextController?.dispose();
  }
}
