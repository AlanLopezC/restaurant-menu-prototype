import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pasillo_londres/data/survey_questions.dart';

part 'survey_bloc.freezed.dart';
part 'survey_event.dart';
part 'survey_state.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
class SurveyBloc extends Bloc<SurveyEvent, SurveyState> {
  SurveyBloc() : super(SurveyState.initial());

  @override
  Stream<SurveyState> mapEventToState(
    SurveyEvent event,
  ) =>
      event.map(
        updateSurvey: _mapUpdateSurveyToState,
        resetSurvey: _mapResetSurveyToState,
      );

  Stream<SurveyState> _mapUpdateSurveyToState(_UpdateSurveyEvent event) async* {
    try {
      final s = state.survey.toList()
        ..[event.questionIndex] = event.optionIndex;

      yield state.copyWith(
        survey: s,
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Stream<SurveyState> _mapResetSurveyToState(_ResetSurveyEvent event) async* {
    try {
      yield SurveyState.initial();
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
