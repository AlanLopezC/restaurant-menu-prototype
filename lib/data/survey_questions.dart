class SurveyQuestions {
  SurveyQuestions._();

  static const List<String> questions = [
    "¿Cómo supiste de Pasillo Londres?",
    // Insta, Fb, Influencer, Amigo / Familiar, Otro
    "¿Que te pareció el sabor y presentación de nuestros platillos?",
    "La atención y servicio del mesero fue:",
    "La velocidad del servicio fue:",
    "¿Comería de nuevo aquí?",
    "¿Qué posibilidades hay de que recomiende nuestro restaurante a un amigo?",
  ];

  static const String lastQuestion = "¿Qué te gustaría que se mejorara?";

  static const List<List<String>> options = [
    ["Instagram", "Facebook", "Influencer", "Amigo / Familiar", "Otro"],
    ["Excelente", "Muy bueno", "Bueno", "Regular", "Malo"],
    ["Excelente", "Muy bueno", "Bueno", "Regular", "Malo"],
    ["Excelente", "Muy bueno", "Bueno", "Regular", "Malo"],
    ["Si", "Tal vez", "No"],
    ["5", "4", "3", "2", "1"],
  ];
}
