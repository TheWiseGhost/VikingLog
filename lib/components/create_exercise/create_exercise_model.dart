import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'create_exercise_widget.dart' show CreateExerciseWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class CreateExerciseModel extends FlutterFlowModel<CreateExerciseWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for exerciseName widget.
  FocusNode? exerciseNameFocusNode;
  TextEditingController? exerciseNameTextController;
  String? Function(BuildContext, String?)? exerciseNameTextControllerValidator;
  String? _exerciseNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 1) {
      return 'Workout Title cannot be blank';
    }

    return null;
  }

  // State field(s) for numSets widget.
  FocusNode? numSetsFocusNode;
  TextEditingController? numSetsTextController;
  String? Function(BuildContext, String?)? numSetsTextControllerValidator;
  String? _numSetsTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 1) {
      return 'Number of Sets must be provided';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ExercisesRow>? row;

  @override
  void initState(BuildContext context) {
    exerciseNameTextControllerValidator = _exerciseNameTextControllerValidator;
    numSetsTextControllerValidator = _numSetsTextControllerValidator;
  }

  @override
  void dispose() {
    exerciseNameFocusNode?.dispose();
    exerciseNameTextController?.dispose();

    numSetsFocusNode?.dispose();
    numSetsTextController?.dispose();
  }
}
