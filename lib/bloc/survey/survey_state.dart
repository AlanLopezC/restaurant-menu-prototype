part of 'survey_bloc.dart';

@freezed
class SurveyState with _$SurveyState {
  factory SurveyState({
    required List<int> survey,
    required String lastQuestion,
    required String cellphone,
    required bool completed,
  }) = _SurveyState;

  factory SurveyState.initial() => SurveyState(
        survey: List.generate(SurveyQuestions.questions.length, (_) => -1),
        lastQuestion: "",
        cellphone: "",
        completed: false,
      );
}
