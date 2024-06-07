import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'input_set_model.dart';
export 'input_set_model.dart';

class InputSetWidget extends StatefulWidget {
  const InputSetWidget({
    super.key,
    required this.setIndex,
  });

  final int? setIndex;

  @override
  State<InputSetWidget> createState() => _InputSetWidgetState();
}

class _InputSetWidgetState extends State<InputSetWidget> {
  late InputSetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InputSetModel());

    _model.enterWeightTextController ??= TextEditingController(
        text: FFAppState().weights[widget.setIndex!].toString());
    _model.enterWeightFocusNode ??= FocusNode();

    _model.enterRepsTextController ??= TextEditingController(
        text: FFAppState().reps[widget.setIndex!].toString());
    _model.enterRepsFocusNode ??= FocusNode();

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
      children: [
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Container(
                  width: 40,
                  height: 30,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: AlignmentDirectional(0, -1),
                  child: Container(
                    width: double.infinity,
                    child: TextFormField(
                      controller: _model.enterWeightTextController,
                      focusNode: _model.enterWeightFocusNode,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.enterWeightTextController',
                        Duration(milliseconds: 2000),
                        () async {
                          if (!((FFAppState().weights[widget.setIndex!] == 0) &&
                              (FFAppState().reps[widget.setIndex!] == 0))) {
                            FFAppState().updateWeightsAtIndex(
                              widget.setIndex!,
                              (_) => int.parse(
                                  _model.enterWeightTextController.text),
                            );
                            FFAppState().updateRepsAtIndex(
                              widget.setIndex!,
                              (_) => int.parse(
                                  _model.enterRepsTextController.text),
                            );
                            setState(() {});
                          }
                        },
                      ),
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                          fontSize: 1,
                          height: 0,
                        ),
                        hintText: '0',
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Lato',
                                  letterSpacing: 0,
                                  lineHeight: 0,
                                ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(0, 0, 0, 18),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            letterSpacing: 0,
                            lineHeight: 0,
                          ),
                      textAlign: TextAlign.center,
                      maxLines: null,
                      minLines: 1,
                      validator: _model.enterWeightTextControllerValidator
                          .asValidator(context),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                      ],
                    ),
                  ),
                ),
              ),
              Text(
                'x',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Lato',
                      letterSpacing: 0,
                    ),
              ),
              Container(
                width: 40,
                height: 30,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: AlignmentDirectional(0, -1),
                child: Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: TextFormField(
                    controller: _model.enterRepsTextController,
                    focusNode: _model.enterRepsFocusNode,
                    onChanged: (_) => EasyDebounce.debounce(
                      '_model.enterRepsTextController',
                      Duration(milliseconds: 2000),
                      () async {
                        if (!((FFAppState().weights[widget.setIndex!] == 0) &&
                            (FFAppState().reps[widget.setIndex!] == 0))) {
                          FFAppState().updateWeightsAtIndex(
                            widget.setIndex!,
                            (_) => int.parse(
                                _model.enterWeightTextController.text),
                          );
                          FFAppState().updateRepsAtIndex(
                            widget.setIndex!,
                            (_) =>
                                int.parse(_model.enterRepsTextController.text),
                          );
                          setState(() {});
                        }
                      },
                    ),
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Lato',
                                letterSpacing: 0,
                                lineHeight: 0,
                              ),
                      hintText: '0',
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Lato',
                                letterSpacing: 0,
                                lineHeight: 0,
                              ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(0, 0, 0, 18),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lato',
                          letterSpacing: 0,
                          lineHeight: 0,
                        ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    minLines: 1,
                    validator: _model.enterRepsTextControllerValidator
                        .asValidator(context),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        if ((FFAppState().weights[widget.setIndex!] != 0) ||
            (FFAppState().reps[widget.setIndex!] != 0))
          FlutterFlowIconButton(
            borderColor: Color(0x00F83B46),
            borderRadius: 10,
            borderWidth: 1,
            buttonSize: 30,
            fillColor: FlutterFlowTheme.of(context).success,
            icon: Icon(
              Icons.check_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 15,
            ),
            onPressed: () async {
              FFAppState().updateWeightsAtIndex(
                widget.setIndex!,
                (_) => 0,
              );
              FFAppState().updateRepsAtIndex(
                widget.setIndex!,
                (_) => 0,
              );
              FFAppState().currSetsComplete =
                  FFAppState().currSetsComplete + -1;
              setState(() {});
            },
          ),
        if ((FFAppState().weights[widget.setIndex!] == 0) &&
            (FFAppState().reps[widget.setIndex!] == 0))
          FlutterFlowIconButton(
            borderColor: Color(0x00F83B46),
            borderRadius: 10,
            borderWidth: 1,
            buttonSize: 30,
            fillColor: FlutterFlowTheme.of(context).secondaryText,
            icon: Icon(
              Icons.check_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 15,
            ),
            onPressed: () async {
              FFAppState().updateWeightsAtIndex(
                widget.setIndex!,
                (_) => int.parse(_model.enterWeightTextController.text),
              );
              FFAppState().updateRepsAtIndex(
                widget.setIndex!,
                (_) => int.parse(_model.enterRepsTextController.text),
              );
              setState(() {});
              if (!((FFAppState().weights[widget.setIndex!] == 0) &&
                  (FFAppState().reps[widget.setIndex!] == 0))) {
                FFAppState().currSetsComplete =
                    FFAppState().currSetsComplete + 1;
                setState(() {});
              }
            },
          ),
      ],
    );
  }
}
