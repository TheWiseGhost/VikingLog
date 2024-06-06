import '/backend/supabase/supabase.dart';
import '/components/app_title/app_title_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'history_page_widget.dart' show HistoryPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HistoryPageModel extends FlutterFlowModel<HistoryPageWidget> {
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
  // State field(s) for Exercise widget.
  int? exerciseValue;
  FormFieldController<int>? exerciseValueController;

  @override
  void initState(BuildContext context) {
    appTitleModel = createModel(context, () => AppTitleModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    appTitleModel.dispose();
  }
}
