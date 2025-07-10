class JournalEntry {
  final String id;
  final DateTime date;
  final String spreadKey;
  final String spreadType;
  final List<String> cards;
  final String userNote;
  final Map<String, dynamic>? spreadData;
  final String? spreadTitle;
  final String? spreadDescription;
  final String? aiInsight;
  final String? reflectionText; // Ответ пользователя на вопросы саморефлексии
  final bool isReflectionComplete; // Завершена ли саморефлексия

  JournalEntry({
    required this.id,
    required this.date,
    required this.spreadKey,
    required this.spreadType,
    required this.cards,
    required this.userNote,
    this.spreadData,
    this.spreadTitle,
    this.spreadDescription,
    this.aiInsight,
    this.reflectionText,
    this.isReflectionComplete = false,
  });

  // Конструктор из JSON
  factory JournalEntry.fromJson(Map<String, dynamic> json) {
    return JournalEntry(
      id: json['id'] as String,
      date: DateTime.parse(json['date'] as String),
      spreadKey: json['spreadKey'] as String? ?? '',
      spreadType: json['spreadType'] as String,
      cards: List<String>.from(json['cards'] as List),
      userNote: json['userNote'] as String,
      spreadData: json['spreadData'] as Map<String, dynamic>?,
      spreadTitle: json['spreadTitle'] as String?,
      spreadDescription: json['spreadDescription'] as String?,
      aiInsight: json['aiInsight'] as String?,
      reflectionText: json['reflectionText'] as String?,
      isReflectionComplete: json['isReflectionComplete'] as bool? ?? false,
    );
  }

  // Конвертация в JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date': date.toIso8601String(),
      'spreadKey': spreadKey,
      'spreadType': spreadType,
      'cards': cards,
      'userNote': userNote,
      'spreadData': spreadData,
      'spreadTitle': spreadTitle,
      'spreadDescription': spreadDescription,
      'aiInsight': aiInsight,
      'reflectionText': reflectionText,
      'isReflectionComplete': isReflectionComplete,
    };
  }

  // Копирование с изменениями
  JournalEntry copyWith({
    String? id,
    DateTime? date,
    String? spreadKey,
    String? spreadType,
    List<String>? cards,
    String? userNote,
    Map<String, dynamic>? spreadData,
    String? spreadTitle,
    String? spreadDescription,
    String? aiInsight,
    String? reflectionText,
    bool? isReflectionComplete,
  }) {
    return JournalEntry(
      id: id ?? this.id,
      date: date ?? this.date,
      spreadKey: spreadKey ?? this.spreadKey,
      spreadType: spreadType ?? this.spreadType,
      cards: cards ?? this.cards,
      userNote: userNote ?? this.userNote,
      spreadData: spreadData ?? this.spreadData,
      spreadTitle: spreadTitle ?? this.spreadTitle,
      spreadDescription: spreadDescription ?? this.spreadDescription,
      aiInsight: aiInsight ?? this.aiInsight,
      reflectionText: reflectionText ?? this.reflectionText,
      isReflectionComplete: isReflectionComplete ?? this.isReflectionComplete,
    );
  }

  // Получить краткое описание
  String get shortDescription {
    final cardCount = cards.length;
    final hasNote = userNote.isNotEmpty;
    final hasInsight = aiInsight != null && aiInsight!.isNotEmpty;
    
    String description = '$spreadType • $cardCount карт';
    if (hasNote) description += ' • Заметка';
    if (hasInsight) description += ' • AI анализ';
    
    return description;
  }

  // Проверить, есть ли заметка
  bool get hasNote => userNote.isNotEmpty;
  
  // Проверить, есть ли AI анализ
  bool get hasAiInsight => aiInsight != null && aiInsight!.isNotEmpty;

  // Проверить, есть ли ответ на вопросы саморефлексии
  bool get hasReflection => reflectionText != null && reflectionText!.isNotEmpty;
} 