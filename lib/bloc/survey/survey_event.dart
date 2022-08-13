part of 'survey_bloc.dart';

@freezed
class SurveyEvent with _$SurveyEvent {
  const factory SurveyEvent.updateSurvey({
    required int questionIndex,
    required int optionIndex,
    String? other,
  }) = _UpdateSurveyEvent;

  const factory SurveyEvent.resetSurvey() = _ResetSurveyEvent;
}
