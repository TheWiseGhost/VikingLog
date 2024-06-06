import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/app_title/app_title_widget.dart';
import '/components/delete_exercise/delete_exercise_widget.dart';
import '/components/edit_exercise/edit_exercise_widget.dart';
import '/components/finish_exercise/finish_exercise_widget.dart';
import '/components/input_set/input_set_widget.dart';
import '/components/navbar/navbar_widget.dart';
import '/components/paid_plan_prompt/paid_plan_prompt_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'in_exercise_page_widget.dart' show InExercisePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InExercisePageModel extends FlutterFlowModel<InExercisePageWidget> {
  ///  Local state fields for this page.

  List<int> exerciseIndexes = [];
  void addToExerciseIndexes(int item) => exerciseIndexes.add(item);
  void removeFromExerciseIndexes(int item) => exerciseIndexes.remove(item);
  void removeAtIndexFromExerciseIndexes(int index) =>
      exerciseIndexes.removeAt(index);
  void insertAtIndexInExerciseIndexes(int index, int item) =>
      exerciseIndexes.insert(index, item);
  void updateExerciseIndexesAtIndex(int index, Function(int) updateFn) =>
      exerciseIndexes[index] = updateFn(exerciseIndexes[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AppTitle component.
  late AppTitleModel appTitleModel;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    appTitleModel = createModel(context, () => AppTitleModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    appTitleModel.dispose();
    navbarModel.dispose();
  }
}
