import 'question.dart';
import 'dart:math';

List<WidgetQuestion> getRandomQuestions(
    List<WidgetQuestion> questions, int count) {
  final random = Random();
  List<int> indices = [];
  while (indices.length < count) {
    int randIndex = random.nextInt(questions.length);
    if (!indices.contains(randIndex)) {
      indices.add(randIndex);
    }
  }
  return indices.map((index) => questions[index]).toList();
}

final List<WidgetQuestion> questions = getRandomQuestions(allQuestions, 4);

final List<WidgetQuestion> allQuestions = [
  WidgetQuestion(
    text: "¿Qué platillo típico es famoso en Real del Monte?",
    options: [
      const WidgetOption(text: "Pastes", isCorrect: true),
      const WidgetOption(text: "Pozole", isCorrect: false),
      const WidgetOption(text: "Tacos", isCorrect: false),
      const WidgetOption(text: "Enchiladas", isCorrect: false),
    ],
    path: "assets/paste.png",
    id: 0,
    correctAnswer: const WidgetOption(text: "Pastes", isCorrect: true),
  ),
  WidgetQuestion(
    text:
        "¿Qué actividad es popular en Real del Monte debido a su historia minera?",
    options: [
      const WidgetOption(text: "Pesca", isCorrect: false),
      const WidgetOption(text: "Tours de minas", isCorrect: true),
      const WidgetOption(text: "Paracaidismo", isCorrect: false),
      const WidgetOption(text: "Escalada", isCorrect: false),
    ],
    path: "assets/paste.png",
    id: 1,
    correctAnswer: const WidgetOption(text: "Tours de minas", isCorrect: true),
  ),
  WidgetQuestion(
    text:
        "¿Qué comunidad extranjera influyó significativamente en Real del Monte en el siglo XIX?",
    options: [
      const WidgetOption(text: "Británica", isCorrect: true),
      const WidgetOption(text: "Española", isCorrect: false),
      const WidgetOption(text: "Francesa", isCorrect: false),
      const WidgetOption(text: "Alemana", isCorrect: false),
    ],
    path: "assets/brit.png",
    id: 2,
    correctAnswer: const WidgetOption(text: "Británica", isCorrect: true),
  ),
  WidgetQuestion(
    text:
        "¿Qué deporte introdujeron los británicos en México por primera vez en Real del Monte?",
    options: [
      const WidgetOption(text: "Fútbol", isCorrect: true),
      const WidgetOption(text: "Críquet", isCorrect: false),
      const WidgetOption(text: "Rugby", isCorrect: false),
      const WidgetOption(text: "Golf", isCorrect: false),
    ],
    path: "assets/fut.png",
    id: 3,
    correctAnswer: const WidgetOption(text: "Fútbol", isCorrect: true),
  ),
  WidgetQuestion(
    text:
        "¿Cuál es el nombre del panteón famoso por su arquitectura y residentes británicos en Real del Monte?",
    options: [
      const WidgetOption(text: "Panteón Inglés", isCorrect: true),
      const WidgetOption(text: "Panteón Municipal", isCorrect: false),
      const WidgetOption(text: "Panteón de Dolores", isCorrect: false),
      const WidgetOption(text: "Panteón Francés", isCorrect: false),
    ],
    path: "assets/paste.png",
    id: 4,
    correctAnswer: const WidgetOption(text: "Panteón Inglés", isCorrect: true),
  ),
  WidgetQuestion(
    text: "¿Qué evento anual celebra la herencia británica en Real del Monte?",
    options: [
      const WidgetOption(text: "Festival del Paste", isCorrect: true),
      const WidgetOption(text: "Festival de la Plata", isCorrect: false),
      const WidgetOption(text: "Carnaval", isCorrect: false),
      const WidgetOption(text: "Festival del Mole", isCorrect: false),
    ],
    path: "assets/paste.png",
    id: 5,
    correctAnswer:
        const WidgetOption(text: "Festival del Paste", isCorrect: true),
  ),
  WidgetQuestion(
    text:
        "¿Qué mineral se explotó principalmente en las minas de Real del Monte?",
    options: [
      const WidgetOption(text: "Plata", isCorrect: true),
      const WidgetOption(text: "Oro", isCorrect: false),
      const WidgetOption(text: "Cobre", isCorrect: false),
      const WidgetOption(text: "Plomo", isCorrect: false),
    ],
    path: "assets/plata.png",
    id: 6,
    correctAnswer: const WidgetOption(text: "Plata", isCorrect: true),
  ),
  WidgetQuestion(
    text:
        "¿Cuál es una de las principales atracciones naturales cercanas a Real del Monte?",
    options: [
      const WidgetOption(text: "Grutas de Tolantongo", isCorrect: false),
      const WidgetOption(text: "El Chico National Park", isCorrect: true),
      const WidgetOption(text: "Huasteca Potosina", isCorrect: false),
      const WidgetOption(text: "Cascadas de Tulimán", isCorrect: false),
    ],
    path: "assets/chico.png",
    id: 7,
    correctAnswer:
        const WidgetOption(text: "El Chico National Park", isCorrect: true),
  ),
  WidgetQuestion(
    text: "¿Qué tipo de clima predomina en Real del Monte?",
    options: [
      const WidgetOption(text: "Tropical", isCorrect: false),
      const WidgetOption(text: "Desértico", isCorrect: false),
      const WidgetOption(text: "Templado", isCorrect: true),
      const WidgetOption(text: "Frío", isCorrect: false),
    ],
    path: "assets/template.png",
    id: 8,
    correctAnswer: const WidgetOption(text: "Templado", isCorrect: true),
  ),
  WidgetQuestion(
    text:
        "¿Qué tradicional bebida se puede disfrutar en los cafés de Real del Monte?",
    options: [
      const WidgetOption(text: "Tequila", isCorrect: false),
      const WidgetOption(text: "Pulque", isCorrect: true),
      const WidgetOption(text: "Café de olla", isCorrect: false),
      const WidgetOption(text: "Mezcal", isCorrect: false),
    ],
    path: "assets/pulque.png",
    id: 9,
    correctAnswer: const WidgetOption(text: "Pulque", isCorrect: true),
  ),
];
