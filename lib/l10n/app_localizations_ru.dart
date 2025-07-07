// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get main_title => 'Гадай и изучай Таро';

  @override
  String get your_name => 'Ваше имя';

  @override
  String get personalization_hint =>
      'Задавай вопросы AI Тарологу и получай персонализированные расклады';

  @override
  String get start_button => 'НАЧАТЬ';

  @override
  String get language => 'Язык';

  @override
  String get continueBtn => 'Продолжить';

  @override
  String get card_of_the_day => 'Карта дня';

  @override
  String get description => 'Описание';

  @override
  String get spreads => 'Расклады';

  @override
  String get quick_spread => 'Быстрый расклад';

  @override
  String get classic_spreads => 'Классические расклады';

  @override
  String get thematic_spreads => 'Тематические расклады';

  @override
  String get card_combination => 'Сочетание карт';

  @override
  String get card_meanings => 'Значения карт';

  @override
  String get training => 'Обучение';

  @override
  String get welcome => 'Добро пожаловать';

  @override
  String get today => 'Сегодня';

  @override
  String get view => 'Смотреть';

  @override
  String get select_card => 'Выберите карту';

  @override
  String get please_select_cards =>
      'Пожалуйста, выберите разные карты во всех полях.';

  @override
  String get good_day =>
      'Хорошего дня,\nВыберите карты, чтобы узнать их сочетание и значение';

  @override
  String get language_hint => 'Для полной персонализации раскладов';

  @override
  String get quickReading => 'Быстрый расклад';

  @override
  String get comingSoon => 'Скоро будет доступно';

  @override
  String get onboarding_notifications_title =>
      '🔔 Хотите не пропускать «Карту дня» и новые расклады?';

  @override
  String get onboarding_notifications_subtitle =>
      'Пожалуйста согласитесь на отправку уведомлений (без спама).';

  @override
  String get onboarding_notifications_allow => 'СОГЛАСИТЬСЯ';

  @override
  String get onboarding_notifications_decline => 'ОТКАЗАТЬСЯ';

  @override
  String get suggested_questions_chat_1 =>
      'Расскажите мне о моей любовной жизни';

  @override
  String get suggested_questions_chat_2 => 'Что произойдет в моей карьере?';

  @override
  String get suggested_questions_chat_3 => 'Как я могу улучшить себя?';

  @override
  String get suggested_questions_chat_4 =>
      'Какие возможности ждут меня в будущем?';

  @override
  String get onboarding_final_title => 'Все готово!';

  @override
  String get onboarding_final_subtitle =>
      'Для поддержания работы проекта мы показываем рекламу. НО если не хотите, Вы можете подписаться';

  @override
  String get onboarding_final_benefits =>
      'Без рекламы\nРасклады без ограничений\nОбучение без ограничений';

  @override
  String get onboarding_final_yearly => 'Ежегодно';

  @override
  String get onboarding_final_badge => 'Выгода 50%';

  @override
  String get onboarding_final_yearly_price => '249/год';

  @override
  String get onboarding_final_yearly_month => '24/мес';

  @override
  String get onboarding_final_trial => '7 дней бесплатно';

  @override
  String get onboarding_final_trial_price => 'потом 9/мес';

  @override
  String get onboarding_final_trial_month => 'Ежемесячно';

  @override
  String get onboarding_final_note =>
      'Подписка не обязательна и продлевается автоматически. Можете отменить в любое время';

  @override
  String get onboarding_final_choose_yearly => 'Выбрать ежегодно';

  @override
  String get onboarding_final_choose_trial => 'Выбрать 7 дней бесплатно';

  @override
  String get onboarding_final_or => 'ИЛИ';

  @override
  String get onboarding_final_continue_ads => 'ПРОДОЛЖИТЬ С РЕКЛАМОЙ';

  @override
  String get main_screen_greeting => 'Приветствую';

  @override
  String main_screen_date_today(Object date) {
    return 'Сегодня, $date';
  }

  @override
  String get main_screen_card_of_day_title => 'Ваша карта дня';

  @override
  String main_screen_card_of_day_description(Object cardName) {
    return 'Карта дня: $cardName';
  }

  @override
  String get main_screen_card_of_day_description_empty => 'Карта дня:';

  @override
  String get main_screen_card_of_day_status_viewed => 'Открыта';

  @override
  String get main_screen_card_of_day_status_view => 'Посмотреть';

  @override
  String get main_screen_section_spreads => 'Расклады';

  @override
  String get main_screen_section_training => 'Обучение';

  @override
  String get main_screen_section_entertainment => 'Развлечение';

  @override
  String get main_screen_quick_spread_title => 'Быстрый расклад';

  @override
  String get main_screen_quick_spread_description =>
      'за пару касаний получите чёткий ответ на свой вопрос одной картой';

  @override
  String get main_screen_thematic_spreads_title => 'Тематические расклады';

  @override
  String get main_screen_thematic_spreads_description =>
      'готовые схемы для важных сфер: любовь, карьера, здоровье, путешествия';

  @override
  String get main_screen_card_combination_title => 'Сочетание карт';

  @override
  String get main_screen_fun_spread_title => 'Шуточный расклад';

  @override
  String get main_screen_fun_spread_description =>
      'поднимите настроение, сделайте шуточный расклад и поделитесь в соц сетях';

  @override
  String get main_screen_love_badge => 'ЛЮБОВЬ';

  @override
  String get card_combination_screen_title => 'Сочетание карт';

  @override
  String get card_combination_screen_greeting =>
      'Добрый день, выберите карты, чтобы узнать сочетание и значение';

  @override
  String get card_combination_screen_card_hint => 'Карта';

  @override
  String get card_combination_screen_get_combination_button =>
      'Узнать сочетание';

  @override
  String get card_combination_screen_new_spread_button =>
      'Сделать новый расклад';

  @override
  String get card_combination_screen_fill_all_fields_error =>
      'Пожалуйста, заполните все полей карт.';

  @override
  String get card_combination_screen_invalid_cards_error =>
      'Пожалуйста, выберите карты только из предложенного списка. Неверные карты:';

  @override
  String get card_combination_screen_duplicate_cards_error =>
      'Пожалуйста, выберите разные карты во всех полях.';

  @override
  String get card_combination_screen_general_error =>
      'Ошибка: не удалось получить ответ. Попробуйте еще раз.';

  @override
  String get card_combination_screen_disclaimer =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String card_combination_screen_prompt(Object cards, Object lang) {
    return 'Проанализируй сочетание карт Таро: $cards. Дай глубокий мистический анализ их взаимодействия и общий совет. Ответ полностью на языке $lang. Без приветствий и заключений.';
  }

  @override
  String get quick_reading_screen_title => 'Быстрый расклад';

  @override
  String get quick_reading_screen_select_card => 'Выберите карту';

  @override
  String get quick_reading_screen_get_answer_button => 'Узнать ответ';

  @override
  String get quick_reading_screen_what_is_quick_spread =>
      'Что такое быстрый расклад?';

  @override
  String get quick_reading_screen_quick_spread_explanation =>
      'Быстрый расклад — это экспресс расклад (ответ: ДА или НЕТ) который помогает мгновенно получить ясный ответ на конкретный вопрос или общую атмосферу дня. Идеально, когда нужно быстрое вдохновение или совет «здесь и сейчас».';

  @override
  String get quick_reading_screen_understand_button => 'Понятно';

  @override
  String get quick_reading_result_screen_generating_response =>
      'Генерация ответа...';

  @override
  String quick_reading_result_screen_error_generating(Object error) {
    return 'Ошибка при генерации ответа: $error';
  }

  @override
  String quick_reading_result_screen_error_generating_response(Object e) {
    return 'Ошибка при генерации ответа: $e';
  }

  @override
  String get quick_reading_result_screen_what_is_quick_spread =>
      'Что такое быстрый расклад?';

  @override
  String get quick_reading_result_screen_quick_spread_explanation =>
      'Быстрый расклад — это экспресс расклад (ответ: ДА или НЕТ) который помогает мгновенно получить ясный ответ на конкретный вопрос или общую атмосферу дня. Идеально, когда нужно быстрое вдохновение или совет «здесь и сейчас».';

  @override
  String get quick_reading_result_screen_understand_button => 'Понятно';

  @override
  String get quick_reading_result_screen_quick_spread_title =>
      'Быстрый расклад';

  @override
  String get quick_reading_result_screen_new_spread_button => 'Новый расклад';

  @override
  String get quick_reading_result_screen_disclaimer =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String quick_reading_result_screen_prompt(Object cardName, Object userName) {
    return 'Ты опытный таролог. Пользователь $userName вытянул карту — $cardName. Сначала напиши с новой строки фразу: Ответ карт: и далее одним словом ответ «Да» или «Нет». Потом добавь связное толкование 120–150 слов: 7–8 предложений о том, почему энергия $cardName ведёт к такому ответу и что это значит лично для $userName. Упомяни имя $userName минимум два раза, вставь 1–2 тематических эмодзи, избегай символов *, # и любой разметки; пиши простым разговорным тоном.';
  }

  @override
  String get career_finance_spread_screen_request_accepted =>
      'Ваш запрос принят. Пожалуйста, откройте карты';

  @override
  String get career_finance_spread_screen_error_getting_value =>
      'Ошибка при получении значения расклада. Попробуйте ещё раз.';

  @override
  String get career_finance_spread_screen_what_is_career_finance =>
      'Что такое расклад Карьера и финансы?';

  @override
  String get career_finance_spread_screen_career_finance_explanation =>
      'Этот расклад помогает проанализировать профессиональную и финансовую сферу. Вы узнаете о возможностях, препятствиях и перспективах роста.';

  @override
  String get career_finance_spread_screen_understand_button => 'Понятно';

  @override
  String get career_finance_spread_screen_learn_meaning_button =>
      'Узнать значение';

  @override
  String get career_finance_spread_screen_career_finance_title =>
      'Карьера и финансы';

  @override
  String get career_finance_spread_screen_new_spread_button =>
      'Сделать новый расклад';

  @override
  String get career_finance_spread_screen_disclaimer =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String get career_finance_spread_screen_enter_question_hint =>
      'Введите ваш вопрос...';

  @override
  String get pros_cons_spread_screen_what_is_pros_cons =>
      'Что такое расклад \"За и Против\"?';

  @override
  String get pros_cons_spread_screen_pros_cons_title =>
      'Расклад \"За и Против\"';

  @override
  String get pros_cons_spread_screen_enter_question_hint =>
      'Введите ваш вопрос...';

  @override
  String
  get self_development_balance_spread_screen_self_development_explanation =>
      'Расклад \"Саморазвитие и баланс\" состоит из 7 карт, расположенных в форме круга. Каждая карта символизирует определённый аспект вашего духовного роста и внутренней гармонии.';

  @override
  String get card_meanings_screen_major_arcana => 'Главные арканы';

  @override
  String get card_meanings_screen_wands => 'Жезлы';

  @override
  String get card_meanings_screen_cups => 'Кубки';

  @override
  String get card_meanings_screen_swords => 'Мечи';

  @override
  String get card_meanings_screen_pentacles => 'Пентакли';

  @override
  String get card_meanings_screen_title => 'Значение карт';

  @override
  String get love_spread_screen_new_spread_button => 'Сделать новый расклад';

  @override
  String get love_spread_screen_enter_question_hint => 'Введите ваш вопрос...';

  @override
  String purchase_love_screen_test_stub(Object plan) {
    return 'Тестовая заглушка: выбран тариф \"$plan\"';
  }

  @override
  String get purchase_love_screen_love_tariff_title => 'Тариф ЛЮБОВЬ';

  @override
  String get ad_promo_block_tariff => 'ТАРИФ';

  @override
  String get ad_promo_block_love => 'ЛЮБОВЬ';

  @override
  String get ad_promo_block_promotion_70 => 'АКЦИЯ -50%';

  @override
  String get ad_promo_block_no_ads => '• без рекламы';

  @override
  String get ad_promo_block_no_limits => '• без ограничений';

  @override
  String three_cards_screen_title(Object cards) {
    return '3 карты в раскладе';
  }

  @override
  String get three_cards_screen_initial_message =>
      'Добрый день, пожалуйста, напишите ваш запрос ниже:';

  @override
  String get three_cards_screen_request_accepted =>
      'Ваш запрос принят. Пожалуйста, откройте карты';

  @override
  String get three_cards_screen_suggested_questions_1 =>
      'Какая основная проблема у меня сейчас?';

  @override
  String get three_cards_screen_suggested_questions_2 =>
      'На чем мне стоит сосредоточиться в ближайшем будущем?';

  @override
  String get three_cards_screen_suggested_questions_3 => 'Что скрыто от меня?';

  @override
  String get three_cards_screen_see_meaning_button => 'Узнать значение';

  @override
  String get three_cards_screen_new_spread_button => 'Новый расклад';

  @override
  String get three_cards_screen_enter_question_hint => 'Введите ваш запрос...';

  @override
  String get three_cards_screen_what_is_three_cards =>
      'Что такое расклад на 3 карты?';

  @override
  String get three_cards_screen_three_cards_explanation =>
      'Классический расклад, который показывает прошлое, настоящее и будущее вашей ситуации. Первая карта — прошлое, вторая — настоящее, третья — будущее.';

  @override
  String get three_cards_screen_understand_button => 'Понятно';

  @override
  String get three_cards_screen_error_getting_value =>
      'Ошибка при получении значения расклада. Попробуйте ещё раз.';

  @override
  String get three_cards_screen_disclaimer =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String get five_cards_screen_title => '5 карт в раскладе';

  @override
  String get five_cards_screen_initial_message =>
      'Добрый день, пожалуйста, напишите ваш запрос ниже:';

  @override
  String get five_cards_screen_request_accepted =>
      'Ваш запрос принят. Пожалуйста, откройте карты';

  @override
  String get five_cards_screen_suggested_questions_1 =>
      'Какой путь мне выбрать?';

  @override
  String get five_cards_screen_suggested_questions_2 =>
      'Что мешает мне достичь цели?';

  @override
  String get five_cards_screen_suggested_questions_3 =>
      'Какие возможности у меня есть?';

  @override
  String get five_cards_screen_see_meaning_button => 'Узнать значение';

  @override
  String get five_cards_screen_new_spread_button => 'Сделать новый расклад';

  @override
  String get five_cards_screen_enter_question_hint => 'Введите ваш запрос...';

  @override
  String get five_cards_screen_what_is_five_cards =>
      'Что такое расклад на 5 карт?';

  @override
  String get five_cards_screen_five_cards_explanation =>
      'Расклад на 5 карт это компактная схема, которая раскрывает пять ключевых аспектов ситуации: прошлое, настоящее, скрытые влияния, помощника/препятствие и вероятный итог.';

  @override
  String get five_cards_screen_understand_button => 'Понятно';

  @override
  String get five_cards_screen_error_getting_value =>
      'Ошибка при получении значения расклада. Попробуйте ещё раз.';

  @override
  String get five_cards_screen_disclaimer =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String get celtic_cross_screen_title => 'Кельтский крест';

  @override
  String get celtic_cross_screen_initial_message =>
      'Добрый день, пожалуйста, напишите ваш запрос ниже:';

  @override
  String get celtic_cross_screen_suggested_questions_1 =>
      'Какая основная проблема у меня сейчас?';

  @override
  String get celtic_cross_screen_suggested_questions_2 =>
      'На чем мне стоит сосредоточиться в ближайшем будущем?';

  @override
  String get celtic_cross_screen_suggested_questions_3 => 'Что скрыто от меня?';

  @override
  String get celtic_cross_screen_see_meaning_button => 'Узнать значение';

  @override
  String get celtic_cross_screen_new_spread_button => 'Сделать новый расклад';

  @override
  String get celtic_cross_screen_enter_question_hint => 'Введите ваш запрос...';

  @override
  String get celtic_cross_screen_what_is_celtic_cross_dialog =>
      'Что такое Кельтский крест?';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_dialog =>
      '«Кельтский крест» — это 10-карточный расклад, который подробно разбирает ситуацию со всех сторон: текущие обстоятельства, препятствия, внутренние и внешние влияния, а также ближайшую динамику и конечный исход. Карты выкладываются по порядку:\n\n1 - Ситуация — суть вопроса здесь-и-сейчас.\n2 - Вызов — то, что помогает или мешает продвинуться.\n3 - Подсознательное (корень) — скрытые мотивы и глубинные силы.\n4 - Недавнее прошлое — события, приведшие к текущему положению.\n5 - Сознательное (цель) — то, на чём сейчас сосредоточено внимание кверента.\n6 - Ближнее будущее — вероятное развитие в ближайшие недели.\n7 - «Я сам» — внутреннее состояние, ресурсы, отношение к вопросу.\n8 - Окружение — влияния людей и обстоятельств вокруг.\n9 - Надежды / страхи — ожидания, сомнения, сильные эмоции.\n10 - Итог — возможный исход, если тенденции сохранятся.\n\nЭтот расклад позволяет увидеть «большую картину»: где вы стоите, что мешает или помогает, какие скрытые импульсы работают за кулисами и куда всё движется дальше.\n\nСхема расклада представлена на изображении ниже.\n\n';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_image =>
      'assets/images/kelt.png';

  @override
  String get celtic_cross_screen_understand_button => 'Понятно';

  @override
  String celtic_cross_screen_please_open_cards(Object cards) {
    return 'Ваш запрос принят. Пожалуйста, откройте карты';
  }

  @override
  String celtic_cross_screen_request_accepted(Object cards) {
    return 'Запрос принят, пожалуйста, откройте карты';
  }

  @override
  String get the_user => 'пользователь';

  @override
  String get good_day_please_write_your_question_below =>
      'Добрый день, пожалуйста напишите Ваш запрос ниже';

  @override
  String get errorGettingSpreadMeaning =>
      'Ошибка при получении значения расклада. Попробуйте ещё раз.';

  @override
  String get errorGettingSpreadMeaningPleaseTryAgain =>
      'Ошибка при получении значения расклада. Попробуйте ещё раз.';

  @override
  String get seeMeaning => 'Узнать значение';

  @override
  String get newSpread => 'Сделать новый расклад';

  @override
  String get enterYourQuestion => 'Введите ваш вопрос...';

  @override
  String get enterQuestion => 'Введите ваш вопрос...';

  @override
  String makeTarotReadingFor(Object lang) {
    return 'Сделай для ';
  }

  @override
  String get theUser => 'пользователя';

  @override
  String onTheseThreeCards(Object userName) {
    return ' расклад на эти три карты: ';
  }

  @override
  String makeSelfDevelopmentAndBalanceTarotReadingFor(Object cards) {
    return 'Сделай для $cards расклад Саморазвитие и баланс';
  }

  @override
  String get getAnswer => 'Узнать ответ';

  @override
  String get aboutTheSpread => 'О раскладе';

  @override
  String get aboutSpreadDescription =>
      'Этот расклад помогает проанализировать ваш духовный рост и внутреннюю гармонию.';

  @override
  String get gotIt => 'Понятно';

  @override
  String get selfDevelopmentAndBalance => 'Саморазвитие и баланс';

  @override
  String get appUsageDisclaimer =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String get careerFinance => 'Карьера и финансы';

  @override
  String get fun_spread_screen_with_swear_words_title => 'С матом (18+)';

  @override
  String get fun_spread_screen_with_swear_words_subtitle =>
      'Для тех, кто любит острые ощущения';

  @override
  String get fun_spread_screen_without_swear_words_title => 'Без мата';

  @override
  String get fun_spread_screen_without_swear_words_subtitle =>
      'Веселый расклад без матершинных слов';

  @override
  String get fun_spread_screen_generating => 'Генерируем ваш расклад...';

  @override
  String get card_name_the_fool => 'Шут';

  @override
  String get card_name_the_magician => 'Маг';

  @override
  String get card_name_the_high_priestess => 'Верховная Жрица';

  @override
  String get card_name_the_empress => 'Императрица';

  @override
  String get card_name_the_emperor => 'Император';

  @override
  String get card_name_the_hierophant => 'Иерофант';

  @override
  String get card_name_the_lovers => 'Влюбленные';

  @override
  String get card_name_the_chariot => 'Колесница';

  @override
  String get card_name_strength => 'Сила';

  @override
  String get card_name_the_hermit => 'Отшельник';

  @override
  String get ok_button => 'OK';

  @override
  String get cancel_button => 'Отмена';

  @override
  String get analyzing_cards => 'Делаю разбор карт...';

  @override
  String get yes_button => 'Да';

  @override
  String get no_button => 'Нет';

  @override
  String get loading => 'Загрузка...';

  @override
  String get error => 'Ошибка';

  @override
  String get success => 'Успешно';

  @override
  String get failed => 'Не удалось';

  @override
  String get language_russian => 'Русский';

  @override
  String get language_english_us => 'English (US)';

  @override
  String get language_english_gb => 'English (GB)';

  @override
  String get card_name_wheel_of_fortune => 'Колесо Фортуны';

  @override
  String get card_name_justice => 'Справедливость';

  @override
  String get card_name_the_hanged_man => 'Повешенный';

  @override
  String get card_name_death => 'Смерть';

  @override
  String get card_name_temperance => 'Умеренность';

  @override
  String get card_name_the_devil => 'Дьявол';

  @override
  String get card_name_the_tower => 'Башня';

  @override
  String get card_name_the_star => 'Звезда';

  @override
  String get card_name_the_moon => 'Луна';

  @override
  String get card_name_the_sun => 'Солнце';

  @override
  String get card_name_judgement => 'Суд';

  @override
  String get card_name_the_world => 'Мир';

  @override
  String get card_name_ace_of_wands => 'Туз Жезлов';

  @override
  String get card_name_two_of_wands => 'Двойка Жезлов';

  @override
  String get card_name_three_of_wands => 'Тройка Жезлов';

  @override
  String get card_name_four_of_wands => 'Четверка Жезлов';

  @override
  String get card_name_five_of_wands => 'Пятерка Жезлов';

  @override
  String get card_name_six_of_wands => 'Шестерка Жезлов';

  @override
  String get card_name_seven_of_wands => 'Семерка Жезлов';

  @override
  String get card_name_eight_of_wands => 'Восьмерка Жезлов';

  @override
  String get card_name_nine_of_wands => 'Девятка Жезлов';

  @override
  String get card_name_ten_of_wands => 'Десятка Жезлов';

  @override
  String get card_name_page_of_wands => 'Паж Жезлов';

  @override
  String get card_name_knight_of_wands => 'Рыцарь Жезлов';

  @override
  String get card_name_queen_of_wands => 'Королева Жезлов';

  @override
  String get card_name_king_of_wands => 'Король Жезлов';

  @override
  String get card_name_ace_of_cups => 'Туз Кубков';

  @override
  String get card_name_two_of_cups => 'Двойка Кубков';

  @override
  String get card_name_three_of_cups => 'Тройка Кубков';

  @override
  String get card_name_four_of_cups => 'Четверка Кубков';

  @override
  String get card_name_five_of_cups => 'Пятерка Кубков';

  @override
  String get card_name_six_of_cups => 'Шестерка Кубков';

  @override
  String get card_name_seven_of_cups => 'Семерка Кубков';

  @override
  String get card_name_eight_of_cups => 'Восьмерка Кубков';

  @override
  String get card_name_nine_of_cups => 'Девятка Кубков';

  @override
  String get card_name_ten_of_cups => 'Десятка Кубков';

  @override
  String get card_name_page_of_cups => 'Паж Кубков';

  @override
  String get card_name_knight_of_cups => 'Рыцарь Кубков';

  @override
  String get card_name_queen_of_cups => 'Королева Кубков';

  @override
  String get card_name_king_of_cups => 'Король Кубков';

  @override
  String get card_name_ace_of_swords => 'Туз Мечей';

  @override
  String get card_name_two_of_swords => 'Двойка Мечей';

  @override
  String get card_name_three_of_swords => 'Тройка Мечей';

  @override
  String get card_name_four_of_swords => 'Четверка Мечей';

  @override
  String get card_name_five_of_swords => 'Пятерка Мечей';

  @override
  String get card_name_six_of_swords => 'Шестерка Мечей';

  @override
  String get card_name_seven_of_swords => 'Семерка Мечей';

  @override
  String get card_name_eight_of_swords => 'Восьмерка Мечей';

  @override
  String get card_name_nine_of_swords => 'Девятка Мечей';

  @override
  String get card_name_ten_of_swords => 'Десятка Мечей';

  @override
  String get card_name_page_of_swords => 'Паж Мечей';

  @override
  String get card_name_knight_of_swords => 'Рыцарь Мечей';

  @override
  String get card_name_queen_of_swords => 'Королева Мечей';

  @override
  String get card_name_king_of_swords => 'Король Мечей';

  @override
  String get card_name_ace_of_pentacles => 'Туз Пентаклей';

  @override
  String get card_name_two_of_pentacles => 'Двойка Пентаклей';

  @override
  String get card_name_three_of_pentacles => 'Тройка Пентаклей';

  @override
  String get card_name_four_of_pentacles => 'Четверка Пентаклей';

  @override
  String get card_name_five_of_pentacles => 'Пятерка Пентаклей';

  @override
  String get card_name_six_of_pentacles => 'Шестерка Пентаклей';

  @override
  String get card_name_seven_of_pentacles => 'Семерка Пентаклей';

  @override
  String get card_name_eight_of_pentacles => 'Восьмерка Пентаклей';

  @override
  String get card_name_nine_of_pentacles => 'Девятка Пентаклей';

  @override
  String get card_name_ten_of_pentacles => 'Десятка Пентаклей';

  @override
  String get card_name_page_of_pentacles => 'Паж Пентаклей';

  @override
  String get card_name_knight_of_pentacles => 'Рыцарь Пентаклей';

  @override
  String get card_name_queen_of_pentacles => 'Королева Пентаклей';

  @override
  String get card_name_king_of_pentacles => 'Король Пентаклей';

  @override
  String get quick_reading_screen_suggested_questions_1 =>
      'Стоит ли мне это делать?';

  @override
  String get quick_reading_screen_suggested_questions_2 =>
      'Правильный ли это путь?';

  @override
  String get quick_reading_screen_suggested_questions_3 =>
      'Что мне нужно знать?';

  @override
  String get monthly_forecast_spread_screen_see_meaning_button =>
      'Узнать значение';

  @override
  String get monthly_forecast_spread_screen_new_spread_button =>
      'Сделать новый расклад';

  @override
  String get monthly_forecast_spread_screen_enter_question_hint =>
      'Введите ваш запрос...';

  @override
  String get monthly_forecast_spread_screen_what_is_monthly_forecast =>
      'Что такое месячный прогноз?';

  @override
  String get monthly_forecast_spread_screen_monthly_forecast_explanation =>
      'Месячный прогноз показывает основные события и тенденции на ближайший месяц. Помогает подготовиться к изменениям и использовать возможности.';

  @override
  String get monthly_forecast_spread_screen_understand_button => 'Понятно';

  @override
  String get monthly_forecast_spread_screen_error_getting_value =>
      'Ошибка при получении значения расклада. Попробуйте ещё раз.';

  @override
  String get monthly_forecast_spread_screen_disclaimer =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String self_development_balance_spread_screen_prompt(
    Object cards,
    Object userName,
  ) {
    return 'Сделай для $userName расклад на саморазвитие и баланс по этим трем картам: $cards';
  }

  @override
  String get error_getting_answer_try_again =>
      'Ошибка: не удалось получить ответ. Попробуйте еще раз.';

  @override
  String get card_detail_screen_title => 'Детали карты';

  @override
  String get card_detail_screen_general_meaning => 'Общее значение';

  @override
  String get card_detail_screen_reversed_meaning => 'Перевернутое значение';

  @override
  String get card_detail_screen_symbolism => 'Символизм';

  @override
  String get card_detail_screen_error_loading_text => 'Ошибка загрузки текста';

  @override
  String card_detail_screen_general_meaning_prompt(
    Object cardName,
    Object lang,
  ) {
    return 'Опиши общее значение карты Таро \"$cardName\" на языке $lang. Включи историю, символику и основные значения.';
  }

  @override
  String card_detail_screen_reversed_meaning_prompt(
    Object cardName,
    Object lang,
  ) {
    return 'Опиши перевернутое значение карты Таро \"$cardName\" на языке $lang. Включи противоположные значения и предупреждения.';
  }

  @override
  String card_detail_screen_symbolism_prompt(Object cardName, Object lang) {
    return 'Опиши символизм карты Таро \"$cardName\" на языке $lang. Включи детали изображения, цвета и их значения.';
  }

  @override
  String card_detail_screen_description(Object cardName) {
    return 'Описание карты $cardName';
  }

  @override
  String get card_detail_screen_see_other_card_meaning =>
      'Посмотреть значение другой карты';

  @override
  String get card_detail_screen_or => 'или';

  @override
  String get card_detail_screen_loading_language => 'Загрузка языка...';

  @override
  String get card_detail_screen_see_card_meaning => 'Посмотреть значение карты';

  @override
  String get card_detail_screen_original_waite_text =>
      'Оригинальный текст Уэйта';

  @override
  String get card_detail_screen_no_original_text => 'Нет оригинального текста';

  @override
  String card_of_the_day_screen_translate_card_name_prompt(
    Object cardName,
    Object languageCode,
  ) {
    return 'Переведи название карты Таро \"$cardName\" на $languageCode. Ответ должен содержать только переведенное название, без дополнительного текста или знаков препинания.';
  }

  @override
  String card_of_the_day_screen_generate_description_prompt(
    Object cardName,
    Object name,
  ) {
    return 'Ты профессиональный таролог. Напиши вдохновляющее сообщение «Карта дня» на языке этого запроса для пользователя $name. Соблюдай структуру и объём.\n\n🌟 $name, твоя карта дня — $cardName!\n\n🔑 Ключевые слова: <укажи 3–5 коротких keywords>\n\n🃏 Значение (≈45–50 слов): опиши основную энергию карты и как она проявится сегодня у $name.\n\n💡 Совет (≈35–40 слов): предложи конкретное действие или настрой, который поможет $name использовать эту энергию.\n\n✨ Аффирмация (1 строка): позитивное утверждение, начинающееся с «Я…».\n\nТребования: общая длина 120–150 слов, тёплый эзотерический тон, 3–4 тематических эмодзи, никаких списков в HTML/Markdown; абзацы разделяй двойным переносом строки (\\n\\n).';
  }

  @override
  String get card_of_the_day_screen_title => 'Карта дня';

  @override
  String get card_of_the_day_screen_error_loading_card =>
      'Ошибка загрузки карты';

  @override
  String career_finance_spread_screen_prompt(Object cards, Object userName) {
    return 'Сделай для $userName расклад на карьеру и финансы по этим трем картам: $cards';
  }

  @override
  String get contact_us_title => 'Напишите нам';

  @override
  String get contact_us_email_hint => 'Ваш e-mail';

  @override
  String get contact_us_email_empty => 'Введите e-mail';

  @override
  String get contact_us_email_invalid => 'Некорректный e-mail';

  @override
  String get contact_us_message_hint => 'Ваше сообщение';

  @override
  String get contact_us_message_empty => 'Введите сообщение';

  @override
  String get contact_us_send_button => 'Отправить';

  @override
  String get five_cards_spread_screen_what_is_five_cards_dialog =>
      'Что такое расклад на 5 карт?';

  @override
  String get five_cards_spread_screen_five_cards_explanation_dialog =>
      'Этот расклад раскрывает весь путь вашего вопроса:\nКарта 1 - Прошлое показывает исходные обстоятельства,\nКарта 2 - Настоящее — текущую энергию,\nКарта 3 - Скрытое выявляет скрытые влияния,\nКарта 4 - Совет подсказывает оптимальное действие,\nКарта 5 - Итог предсказывает вероятный результат.';

  @override
  String get five_cards_spread_screen_understand_button => 'Понятно';

  @override
  String get language_selection_screen_title => 'Язык';

  @override
  String get love_spread_screen_what_is_love_spread =>
      'Что такое любовный расклад?';

  @override
  String get love_spread_screen_love_spread_explanation =>
      'Любовный триплет — это три карты, выложенные слева направо:\nКарта 1 - Ты — показывает чувства, мотивацию и позицию самого кверента.\nКарта 2 - Партнёр — раскрывает эмоции, планы и готовность второй стороны.\nКарта 3 - Динамика / потенциал — описывает, как две энергии взаимодействуют сейчас и к чему способны привести отношения в ближайшей перспективе.';

  @override
  String get love_spread_screen_understand_button => 'Понятно';

  @override
  String get main_screen_your_plan_trial => 'Ваш план: Пробный (с рекламой)';

  @override
  String get main_screen_no_ads => '• без рекламы';

  @override
  String get main_screen_no_limits => '• без ограничений';

  @override
  String get main_screen_shop_soon => 'Магазин (soon)';

  @override
  String get main_screen_notification_settings => 'Настройки уведомлений';

  @override
  String get main_screen_language_selection => 'Выбор языка';

  @override
  String get main_screen_rate_app => 'Оцените приложение';

  @override
  String get main_screen_contact_us => 'Связаться с нами';

  @override
  String get main_screen_classic_spreads_title => 'Классические расклады';

  @override
  String get main_screen_classic_spreads_description =>
      'расклады на 2 / 3 / 5 карт и полный развёрнутый Кельтский крест';

  @override
  String get main_screen_card_meanings_title => 'Значение карт';

  @override
  String get main_screen_card_meanings_description =>
      'полный справочник прямых и перевёрнутых значений всех старших и младших арканов';

  @override
  String get main_screen_card_combination_description =>
      '\"калькулятор таро\" выберите карты и получите глубокий анализ связей';

  @override
  String get notification_settings_screen_title => 'Настройки уведомлений';

  @override
  String get notification_settings_screen_frequency_question =>
      'Как часто вы хотите получать уведомление о карте дня?';

  @override
  String get notification_settings_screen_every_day => 'Каждый день';

  @override
  String get notification_settings_screen_every_three_days => 'Раз в три дня';

  @override
  String get notification_settings_screen_every_week => 'Раз в неделю';

  @override
  String get notification_settings_screen_time_question =>
      'В какое время суток?';

  @override
  String get notification_settings_screen_morning => 'Утром';

  @override
  String get notification_settings_screen_day => 'Днем';

  @override
  String get notification_settings_screen_evening => 'Вечером';

  @override
  String get notification_settings_screen_save_button => 'Сохранить';

  @override
  String get onboarding_final_screen_yearly_price => '249/год';

  @override
  String get onboarding_final_screen_yearly_month_price => '24/мес';

  @override
  String get onboarding_final_screen_monthly_price => '9/мес';

  @override
  String get onboarding_final_screen_monthly_month_price => '9/мес';

  @override
  String get onboarding_final_screen_yearly_plan => 'Ежегодно';

  @override
  String get onboarding_final_screen_free_trial => '7 дней бесплатно';

  @override
  String get onboarding_final_screen_purchase_title => 'Покупка';

  @override
  String onboarding_final_screen_test_stub_message(Object plan) {
    return 'Тестовая заглушка: выбран тариф \"$plan\"';
  }

  @override
  String get onboarding_final_screen_ok_button => 'OK';

  @override
  String get purchase_love_screen_yearly_price => '249/год';

  @override
  String get purchase_love_screen_yearly_month_price => '24/мес';

  @override
  String get purchase_love_screen_monthly_price => '9/мес';

  @override
  String get purchase_love_screen_monthly_month_price => '9/мес';

  @override
  String get purchase_love_screen_title => 'Покупка';

  @override
  String get purchase_love_screen_ok_button => 'OK';

  @override
  String quick_reading_screen_error_no_image_file_found(Object cardName) {
    return 'ОШИБКА: Файл изображения не найден для карты: $cardName';
  }

  @override
  String get please_fill_all_fields => 'Пожалуйста, заполните все полей карт.';

  @override
  String get please_select_cards_only_from_suggested_list =>
      'Пожалуйста, выберите карты только из предложенного списка. Неверные карты:';

  @override
  String get please_select_different_cards_in_all_fields =>
      'Пожалуйста, выберите разные карты во всех полях.';

  @override
  String get card => 'Карта';

  @override
  String get get_combination => 'Узнать сочетание';

  @override
  String get new_spread => 'Сделать новый расклад';

  @override
  String get app_uses_ai_for_entertainment_purposes =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String get career_finance_spread_screen_what_is_career_finance_spread =>
      'Что такое расклад Карьера и финансы?';

  @override
  String celtic_cross_screen_prompt(
    Object challengeCard,
    Object consciousCard,
    Object environmentCard,
    Object hiddenCard,
    Object hopesCard,
    Object outcomeCard,
    Object pastCard,
    Object presentCard,
    Object selfCard,
    Object situationCard,
    Object subconsciousCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'Ты опытный таролог. Пользователь $userName спрашивает: \"$userQuestion\". Ответь раскладом \"Кельтский крест\" (классическая схема Уэйта). Карты переданы так: ситуация - $situationCard; вызов - $challengeCard; подсознательное - $subconsciousCard; недавнее прошлое - $pastCard; сознательное - $consciousCard; ближайшее будущее - $hiddenCard; внутреннее Я - $selfCard; окружение - $environmentCard; надежды или страхи - $hopesCard; итог - $outcomeCard. Упоминай имя $userName минимум шесть раз и обязательно связывай каждую карту с вопросом. Соблюдай структуру:\n\n1) Приветствие по имени $userName.\n\n2) Заголовок: Расклад: ситуация ($situationCard) / вызов ($challengeCard) / подсознательное ($subconsciousCard) / недавнее прошлое ($pastCard) / сознательное ($consciousCard) / ближайшее будущее ($hiddenCard) / внутреннее Я ($selfCard) / окружение ($environmentCard) / надежды/страхи ($hopesCard) / итог ($outcomeCard).\n\n3) Ситуация — $situationCard (45-55 слов): три ключевых слова, символика карты и текущее положение дел по вопросу $userQuestion для $userName.\n\n4) Вызов — $challengeCard (45-55 слов): главное препятствие или помощь для $userName.\n\n5) Подсознательное — $subconsciousCard (45-55 слов): скрытые мотивы или энергии, влияющие на $userName.\n\n6) Недавнее прошлое — $pastCard (45-55 слов): события, приведшие $userName к нынешней ситуации.\n\n7) Сознательное — $consciousCard (45-55 слов): цели, ожидания или то, что $userName осознаёт.\n\n8) Ближнее будущее — $hiddenCard (45-55 слов): вероятное развитие в ближайшие недели.\n\n9) Внутреннее Я — $selfCard (45-55 слов): состояние, ресурсы $userName.\n\n10) Окружение — $environmentCard (45-55 слов): влияние людей и обстоятельств.\n\n11) Надежды / страхи — $hopesCard (45-55 слов): ожидания или опасения $userName.\n\n12) Итог — $outcomeCard (45-55 слов): вероятный результат при учёте совета расклада.\n\n13) Заключение: дружеская поддержка и позитивная аффирмация (30-35 слов) для $userName.\n\nТребования: общий объём 400-500 слов, живой разговорный тон, 4-6 эзотерических эмодзи; каждый блок отделяй двойным переводом строки (\n\n); не используй символы *, # или другую разметку; пиши только простым текстом.';
  }

  @override
  String get celtic_cross_screen_unable_to_load_card =>
      'Не удалось загрузить карту';

  @override
  String get celticCrossTitle => 'Кельтский крест';

  @override
  String get chat_with_tarot_reader_screen_request_received =>
      'Ваш запрос принят. Пожалуйста, откройте карты';

  @override
  String chat_with_tarot_reader_screen_prompt(
    Object hiddenCard,
    Object pastCard,
    Object presentCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'Ты опытный таролог. Пользователь $userName спрашивает: \"$userQuestion\". Ответь через расклад \"Прошлое - Настоящее - Будущее\". Карты переданы так: прошлое - $pastCard; настоящее - $presentCard; будущее - $hiddenCard. Упоминай имя $userName не менее четырёх раз и обязательно связывай значения карт с вопросом. Соблюдай структуру:\n\n1) Приветствие по имени $userName.\n\n2) Заголовок: Расклад: Прошлое ($pastCard) - Настоящее ($presentCard) - Будущее ($hiddenCard).\n\n3) Блок ПРОШЛОЕ — $pastCard (40-50 слов): три ключевых слова, символика карты и объяснение, как прошлые факты влияют на исход вопроса $userQuestion для $userName.\n\n4) Блок НАСТОЯЩЕЕ — $presentCard (40-50 слов): ключевые слова, символика карты и текущие факторы, влияющие на ответ на вопрос $userQuestion.\n\n5) Блок БУДУЩЕЕ — $hiddenCard (40-50 слов): ключевые слова, символика карты и вероятный сценарий развития ситуации по вопросу $userName.\n\n6) Итог: короткий совет, позитивная аффирмация (20-30 слов) и чёткое обобщение шансов.\n\nТребования: общий объём 180-220 слов, тёплый эзотерический тон, 3-5 тематических эмодзи; каждый блок отделяй двойным переводом строки (\n\n); запрещено использовать символы *, # или другие знаки форматирования; пиши только простым текстом.';
  }

  @override
  String get see_meaning_button => 'Узнать значение';

  @override
  String three_cards_title(Object cards) {
    return '3 карты в раскладе';
  }

  @override
  String get new_spread_button => 'Сделать новый расклад';

  @override
  String get disclaimer_text =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String get enter_your_question => 'Введите ваш вопрос...';

  @override
  String get classic_spreads_screen_title => 'Классические расклады';

  @override
  String get classic_spreads_screen_three_cards_title => '3 карты';

  @override
  String get classic_spreads_screen_three_cards_description =>
      'Прошлое, настоящее, будущее';

  @override
  String get classic_spreads_screen_five_cards_title => '5 карт';

  @override
  String get classic_spreads_screen_five_cards_description =>
      'Глубокий анализ ситуации';

  @override
  String get classic_spreads_screen_celtic_cross_title => 'Кельтский крест';

  @override
  String get classic_spreads_screen_celtic_cross_description =>
      'Полный расклад на 10 карт';

  @override
  String five_cards_screen_prompt(
    Object adviceCard,
    Object hiddenCard,
    Object outcomeCard,
    Object pastCard,
    Object presentCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'Ты опытный таролог. Пользователь $userName спрашивает: \"$userQuestion\". Ответь через расклад \"5 карт\". Карты даны по порядку: прошлое - $pastCard; настоящее - $presentCard; будущее - $hiddenCard; причина - $adviceCard; возможный итог - $outcomeCard. Объясни значение каждой карты и их общий смысл.';
  }

  @override
  String get fiveCardsInSpread => '5 карт в раскладе';

  @override
  String get makeNewSpread => 'Сделать новый расклад';

  @override
  String
  get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMake =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String get requestReceivedPleaseOpenCards =>
      'Ваш запрос принят. Пожалуйста, откройте карты';

  @override
  String love_spread_prompt(
    Object dynamicCard,
    Object partnerCard,
    Object userName,
    Object userQuestion,
    Object youCard,
  ) {
    return 'Ты опытный таролог. Пользователь $userName спрашивает: «$userQuestion». Ответь с помощью любовного расклада из трёх карт. Карты даны так: чувства $userName — $youCard; чувства партнёра — $partnerCard; динамика или потенциал отношений — $dynamicCard. Упоминай имя $userName минимум три раза и связывай каждую карту с вопросом. Соблюдай структуру:\n\n1) Приветствие по имени $userName.\n\n2) Заголовок: Расклад: $youCard | $partnerCard | $dynamicCard.\n\n3) $youCard — 40–50 слов: опиши, что карта говорит о чувствах и ожиданиях $userName.\n\n4) $partnerCard — 40–50 слов: раскрой эмоции и намерения партнёра относительно вопроса $userName.\n\n5) $dynamicCard — 40–50 слов: покажи, как эти две энергии взаимодействуют и к чему могут привести отношения.\n\n6) Заключение: тёплый совет и позитивная аффирмация (20–25 слов) для $userName.\n\nТребования: общий объём 150–180 слов, дружеский романтичный тон, 2–4 тематических эмодзи; абзацы отделяй двойным переводом строки (\\n\\n); избегай символов *, # и любой разметки.';
  }

  @override
  String get loveSpread => 'Любовный расклад';

  @override
  String
  get applicationUsesAIExclusivelyForEntertainmentWeDoNotTakeResponsibilityForDecisionsYouHaveMadeIfNeededPleaseConsultSpecialist =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String main_screen_greeting_with_name(Object name) {
    return 'Приветствую, $name';
  }

  @override
  String get main_screen_monday => 'Понедельник';

  @override
  String get main_screen_tuesday => 'Вторник';

  @override
  String get main_screen_wednesday => 'Среда';

  @override
  String get main_screen_thursday => 'Четверг';

  @override
  String get main_screen_friday => 'Пятница';

  @override
  String get main_screen_saturday => 'Суббота';

  @override
  String get main_screen_sunday => 'Воскресенье';

  @override
  String get main_screen_your_card_of_the_day => 'Ваша карта дня';

  @override
  String main_screen_card_of_the_day_with_name(Object cardName) {
    return 'Карта дня: $cardName';
  }

  @override
  String get main_screen_card_of_the_day => 'Карта дня:';

  @override
  String get main_screen_viewed => 'Открыта';

  @override
  String get main_screen_not_viewed => 'Посмотреть';

  @override
  String get main_screen_spreads => 'Расклады';

  @override
  String get main_screen_training => 'Обучение';

  @override
  String get main_screen_entertainment => 'Развлечение';

  @override
  String get main_screen_glad_to_see_you_here => 'Рад видеть вас здесь!';

  @override
  String get main_screen_quick_reading_title => 'Быстрый расклад';

  @override
  String get main_screen_quick_reading_description =>
      'за пару касаний получите чёткий ответ на свой вопрос одной картой';

  @override
  String get monthly_forecast_spread_screen_request_accepted =>
      'Ваш запрос принят. Пожалуйста, откройте карты';

  @override
  String monthly_forecast_spread_screen_prompt(Object cards, Object userName) {
    return 'Сделай для $userName месячный прогноз по этим картам: $cards';
  }

  @override
  String get aboutSpread => 'О раскладе';

  @override
  String get monthlyForecast => 'Месячный прогноз';

  @override
  String
  get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNecessaryPleaseConsultSpecialist =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String purchase_love_screen_test_message(Object planName) {
    return 'Тестовая заглушка: выбран тариф \"$planName\"';
  }

  @override
  String get quick_reading_screen_what_is_quick_reading =>
      'Что такое быстрый расклад?';

  @override
  String get quick_reading_screen_quick_reading_explanation =>
      'Быстрый расклад — это экспресс расклад (ответ: ДА или НЕТ) который помогает мгновенно получить ясный ответ на конкретный вопрос или общую атмосферу дня. Идеально, когда нужно быстрое вдохновение или совет «здесь и сейчас».';

  @override
  String get self_development_balance_spread_screen_request_accepted =>
      'Ваш запрос принят. Пожалуйста, откройте карты';

  @override
  String get self_development_balance_spread_screen_error_getting_value =>
      'Ошибка при получении значения расклада. Попробуйте ещё раз.';

  @override
  String
  get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNeededConsultSpecialist =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String get thematic_spreads_screen_title => 'Тематические расклады';

  @override
  String get thematic_spreads_screen_love_spread_title => 'Любовный расклад';

  @override
  String get thematic_spreads_screen_love_spread_description =>
      'Анализ отношений и чувств';

  @override
  String get thematic_spreads_screen_career_finance_title =>
      'Карьера и финансы';

  @override
  String get thematic_spreads_screen_career_finance_description =>
      'Профессиональный и финансовый анализ';

  @override
  String get thematic_spreads_screen_pros_cons_title => 'За и Против';

  @override
  String get thematic_spreads_screen_pros_cons_description =>
      'Анализ плюсов и минусов';

  @override
  String get thematic_spreads_screen_monthly_forecast_title =>
      'Месячный прогноз';

  @override
  String get thematic_spreads_screen_monthly_forecast_description =>
      'Прогноз по месяцам';

  @override
  String get thematic_spreads_screen_self_development_title =>
      'Саморазвитие и баланс';

  @override
  String get thematic_spreads_screen_self_development_description =>
      'Духовный рост и гармония';

  @override
  String get requestReceived => 'Ваш запрос принят. Пожалуйста, откройте карты';

  @override
  String pros_cons_spread_prompt(Object cards, Object userName) {
    return 'Сделай для $userName расклад За и Против по этим картам: $cards';
  }

  @override
  String get pros_cons_spread_screen_what_is_pros_cons_spread =>
      'Что такое расклад \"За и Против\"?';

  @override
  String get pros_cons_spread_screen_pros_cons_spread_explanation =>
      'Расклад \"За и Против\" помогает проанализировать плюсы и минусы ситуации, чтобы принять взвешенное решение.';

  @override
  String get pros_cons_spread_screen_understand_button => 'Понятно';

  @override
  String get prosConsSpreadTitle => 'Расклад \"За и Против\"';

  @override
  String get spreadDisclaimer =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String get fun_spread_screen_generation_error =>
      'Ошибка при генерации расклада. Попробуйте еще раз.';

  @override
  String get fun_spread_screen_share_error =>
      'Ошибка при сохранении изображения.';

  @override
  String get fun_spread_screen_about_fun_spread =>
      'Что такое забавный расклад?';

  @override
  String get fun_spread_screen_fun_spread_explanation =>
      'Забавный расклад - это особый способ гадания на картах таро, который сочетает в себе глубину традиционных раскладов с легким и позитивным подходом. Он поможет вам взглянуть на ситуацию с новой стороны и найти радость в повседневной жизни.';

  @override
  String get fun_spread_screen_understand_button => 'Понятно';

  @override
  String get fun_spread_screen_title => 'Забавный расклад';

  @override
  String get fun_spread_screen_generate_button => 'Создать расклад';

  @override
  String get fun_spread_screen_share_button => 'Поделиться';

  @override
  String get fun_spread_screen_new_button => 'Новый расклад';

  @override
  String get fun_spread_screen_share_text =>
      'Посмотрите, какой забавный расклад таро я получил в приложении Tarot AI!';

  @override
  String get ad_promo_tariff => 'ТАРИФ';

  @override
  String get ad_promo_love => 'ЛЮБОВЬ';

  @override
  String get ad_promo_discount => 'АКЦИЯ -50%';

  @override
  String get ad_promo_no_ads => '• без рекламы';

  @override
  String get ad_promo_no_limits => '• без ограничений';

  @override
  String get no_internet_error =>
      'Наше приложение работает только с интернетом. Пожалуйста, включите Wi-Fi или мобильный интернет.';

  @override
  String fun_spread_screen_mate_prompt_3cards(Object userName) {
    return 'Сделай очень смешной, дерзкий и матершинный расклад таро на 3 карты для $userName . Для каждой карты придумай смешное название и напиши отдельный абзац: Первая карта: <название> — <короткое смешное описание>, Вторая карта: <название> — <короткое смешное описание>, Третья карта: <название> — <короткое смешное описание>. Используй нецензурную лексику, чтобы добавить юмора, но не оскорбляй. Весь текст не длиннее 7 предложений.';
  }

  @override
  String fun_spread_screen_no_mate_prompt_3cards(Object userName) {
    return 'Создай забавный расклад таро для $userName на 3 карты. Для каждой карты придумай смешное название и напиши отдельный абзац: Первая карта: <название> — <короткое смешное описание>, Вторая карта: <название> — <короткое смешное описание>, Третья карта: <название> — <короткое смешное описание>. Расклад должен быть веселым, но с глубоким смыслом. Только 3 карты. Весь текст не длиннее 7 предложений.';
  }

  @override
  String get fun_spread_screen_title_top => 'ТАРО расклад';

  @override
  String fun_spread_screen_title_for_name(Object name) {
    return 'для $name';
  }

  @override
  String get contact_us_screen_message_sent =>
      'Ваше сообщение получено, спасибо!';

  @override
  String get contact_us_screen_message_error => 'Ошибка отправки сообщения';

  @override
  String get love_spread_screen_initial_message =>
      'Добрый день, пожалуйста, напишите ваш вопрос ниже:';

  @override
  String get main_screen_tariff => 'ТАРИФ';

  @override
  String get main_screen_promo_50 => 'АКЦИЯ -50%';

  @override
  String get main_screen_rate_hint =>
      'Если окно оценки не появилось, вы можете оставить отзыв в Google Play.';

  @override
  String get main_screen_rate_error =>
      'Не удалось открыть Google Play. Попробуйте позже.';

  @override
  String get love_spread_screen_suggested_questions_1 =>
      'Какие чувства у меня к этому человеку?';

  @override
  String get love_spread_screen_suggested_questions_2 =>
      'Что мешает нашим отношениям?';

  @override
  String get love_spread_screen_suggested_questions_3 =>
      'Какое будущее ждет наши отношения?';

  @override
  String get career_finance_spread_screen_suggested_questions_1 =>
      'Какие возможности ждут меня в карьере?';

  @override
  String get career_finance_spread_screen_suggested_questions_2 =>
      'Как улучшить мое финансовое положение?';

  @override
  String get career_finance_spread_screen_suggested_questions_3 =>
      'Стоит ли менять работу?';

  @override
  String get pros_cons_spread_screen_suggested_questions_1 =>
      'Стоит ли мне принимать это решение?';

  @override
  String get pros_cons_spread_screen_suggested_questions_2 =>
      'Какие плюсы и минусы у этого выбора?';

  @override
  String get pros_cons_spread_screen_suggested_questions_3 =>
      'Что важнее в данной ситуации?';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_1 =>
      'Что ждет меня в этом месяце?';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_2 =>
      'Какие события произойдут в ближайшее время?';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_3 =>
      'На чем стоит сосредоточиться в этом месяце?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_1 =>
      'Как мне развиваться духовно?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_2 =>
      'Что мешает моему внутреннему балансу?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_3 =>
      'Как найти гармонию в жизни?';

  @override
  String career_three_card_prompt(
    Object adviceCard,
    Object challengeCard,
    Object situationCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'Ты опытный таролог-коуч. Пользователь $userName спрашивает: «$userQuestion». Сделай расклад из трёх карт на карьеру и финансы. Карты переданы так: 1) ситуация — $situationCard; 2) преграда или ключевая возможность — $challengeCard; 3) совет и потенциал — $adviceCard. Определи пол пользователя по имени $userName и обращайся с правильными окончаниями и местоимениями. Говори с $userName дружелюбно и по делу: покажи, где он стоит, что блокирует рост (или какой шанс важно заметить) и какой практический шаг выведет к желаемому доходу. Упоминай имя $userName минимум три раза. Соблюдай структуру:\n\n1) Приветствие — 1 предложение.\n\n2) Заголовок: Расклад: $situationCard | $challengeCard | $adviceCard.\n\n3) $situationCard — 45–55 слов: опиши текущее положение $userName (работа, бизнес или общий финансовый фон) и символику карты.\n\n4) $challengeCard — 45–55 слов: раскрой главный барьер или неочевидную возможность; укажи, как она отражается в карте и в вопросе $userName.\n\n5) $adviceCard — 45–55 слов: предложи конкретное действие (например, пересмотреть бюджет, запросить повышение, изучить новую компетенцию) и опиши возможный результат.\n\n6) Финал — 20–25 слов: дружеский вывод, позитивная аффирмация и 2 деловых эмодзи.\n\nТребования: общий объём 160–185 слов, ясный деловой тон без жаргона, 2–3 эмодзи; абзацы разделяй двойным \\n\\n; не используй *, # и прочую разметку.';
  }

  @override
  String pros_cons_three_card_prompt(
    Object adviceCard,
    Object conCard,
    Object proCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'Ты опытный таролог. Пользователь $userName спрашивает: «$userQuestion». Сделай расклад «За и Против» из трёх карт. Карты переданы так: плюсы — $proCard; минусы — $conCard; совет/итог — $adviceCard. Определи пол пользователя по имени $userName и обращайся с правильными окончаниями и местоимениями. Упоминай имя $userName не менее трёх раз и связывай каждую карту с вопросом. Соблюдай структуру:\n\n1) Приветствие по имени $userName.\n\n2) Заголовок: Расклад: $proCard | $conCard | $adviceCard.\n\n3) Плюсы: $proCard — 45–55 слов. Раскрой главные выгоды или положительные ресурсы, которые эта карта приносит в ситуацию $userName.\n\n4) Минусы: $conCard — 45–55 слов. Опиши риски, скрытые затраты или слабые места решения для $userName.\n\n5) Совет: $adviceCard — 45–55 слов. Взвесь плюсы и минусы, предложи одно конкретное действие (глагол + объект) и скажи, как это изменит исход для $userName.\n\n6) Итог — одним словом «Да» или «Нет», затем 1 предложение-обоснование и ободряющая аффирмация (20–25 слов) с 1–2 эмодзи.\n\nТребования: общий объём 150–180 слов, дружеский разговорный тон; каждый блок отделяй двойным переводом строки (\\n\\n); без символов *, # или другой разметки.';
  }

  @override
  String monthly_wheel_prompt(
    Object card1,
    Object card10,
    Object card11,
    Object card12,
    Object card2,
    Object card3,
    Object card4,
    Object card5,
    Object card6,
    Object card7,
    Object card8,
    Object card9,
    Object month,
    Object userName,
    Object userQuestion,
  ) {
    return 'Ты профессиональный таролог. Пользователь $userName спрашивает: «$userQuestion». Составь расклад «Колесо месяца» на $month. Карты идут по порядку: 1 — $card1, 2 — $card2, 3 — $card3, 4 — $card4, 5 — $card5, 6 — $card6, 7 — $card7, 8 — $card8, 9 — $card9, 10 — $card10, 11 — $card11, 12 — $card12. Определи пол $userName по имени и используй правильные окончания и местоимения. Упоминай имя не меньше пяти раз, но **не вставляй его после каждой даты** — вспоминай лишь внутри текста советов. **ЗАПРЕЩЕНО писать имя пользователя после диапазона дат. После дат указывай только месяц.** Используй календарную сетку дат: 1–3, 4–6, 7–9, 10–12, 13–15, 16–18, 19–21, 22–24, 25–26, 27–28, 29–30, 31 (если в месяце 30 дней — 12-я карта тоже относится к 30-му числу). Формат:\n\n1) Приветствие по имени $userName (1–2 предложения).\n\n2) Напиши \'Твой запрос:\' и затем вопрос пользователя $userQuestion.\n\n3) Краткое вступление о цели расклада (1 предложение).\n\n4–15) Для каждой карты используй строку вида «1–3 $month — $card1» (без имени): затем 2–3 предложения о ключевой энергии периода и практическом совете, органично упоминая $userName. НЕ повторяй вопрос пользователя в каждом абзаце. Весь расклад должен органично отвечать на вопрос $userQuestion, но не цитировать его постоянно. Используй вопрос \'На чем стоит сосредоточиться в эти дни?\' только в некоторых абзацах, где это уместно.\n\n16) Итог: общий совет на месяц (около 40 слов) и вдохновляющая аффирмация с 2–3 эмодзи.\n\nТребования: суммарно 360–400 слов; дружеский, мотивирующий тон; блоки разделяй двойным \\n\\n; никаких символов *, #, списков или технических пометок.';
  }

  @override
  String self_growth_balance_prompt(
    Object adviceCard,
    Object bodyCard,
    Object challengeCard,
    Object coreCard,
    Object emotionCard,
    Object mindCard,
    Object strengthCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'Ты опытный таролог-коуч. Пользователь $userName спрашивает: «$userQuestion». Сделай расклад «Саморазвитие и баланс» из семи карт. Карты даны так: ядро — $coreCard; разум — $mindCard; эмоции — $emotionCard; тело — $bodyCard; ресурс — $strengthCard; блок — $challengeCard; совет — $adviceCard. Определи пол пользователя по имени $userName и обращайся с правильными окончаниями и местоимениями. Говори живо и поддерживающе, упоминай имя $userName не меньше четырёх раз и обязательно связывай каждую карту с вопросом. Соблюдай структуру и формат:\n\n1) Приветствие по имени $userName.\n\n2) Заголовок: Расклад: $coreCard | $mindCard | $emotionCard | $bodyCard | $strengthCard | $challengeCard | $adviceCard.\n\n3) $coreCard — опиши главный фокус саморазвития $userName.\n\n4) $mindCard — расскажи, как настроить мышление и чему учиться.\n\n5) $emotionCard — раскрой эмоциональный ресурс и мотивацию.\n\n6) $bodyCard — подскажи, как заботиться о теле и энергии.\n\n7) $strengthCard — покажи внутренний дар или внешнюю поддержку.\n\n8) $challengeCard — обозначь ключевой дисбаланс и его причины.\n\n9) $adviceCard — предложи конкретное действие, объединяющее все аспекты.\n\n10) Финал: вдохновляющая аффирмация и тёплое напутствие с 2–3 эмодзи.\n\nТребования: каждый пункт 2–3 предложения; между пунктами ставь двойной перевод строки (\\n\\n); не используй символы *, # или другую разметку.';
  }

  @override
  String get main_screen_suggest_spread =>
      'Какой расклад добавить? Напишите нам';

  @override
  String get main_screen_disclaimer =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String get month_january => 'января';

  @override
  String get month_february => 'февраля';

  @override
  String get month_march => 'марта';

  @override
  String get month_april => 'апреля';

  @override
  String get month_may => 'мая';

  @override
  String get month_june => 'июня';

  @override
  String get month_july => 'июля';

  @override
  String get month_august => 'августа';

  @override
  String get month_september => 'сентября';

  @override
  String get month_october => 'октября';

  @override
  String get month_november => 'ноября';

  @override
  String get month_december => 'декабря';

  @override
  String get fun_share_button => 'Поделиться';

  @override
  String get fun_new_spread_button => 'Новый расклад';
}

/// The translations for Russian, as used in Russian Federation (`ru_RU`).
class AppLocalizationsRuRu extends AppLocalizationsRu {
  AppLocalizationsRuRu() : super('ru_RU');

  @override
  String get main_title => 'Гадай и изучай Таро';

  @override
  String get your_name => 'Ваше имя';

  @override
  String get personalization_hint =>
      'Задавай вопросы AI Тарологу и получай персонализированные расклады';

  @override
  String get start_button => 'НАЧАТЬ';

  @override
  String get language => 'Язык';

  @override
  String get continueBtn => 'Продолжить';

  @override
  String get card_of_the_day => 'Карта дня';

  @override
  String get description => 'Описание';

  @override
  String get spreads => 'Расклады';

  @override
  String get quick_spread => 'Быстрый расклад';

  @override
  String get classic_spreads => 'Классические расклады';

  @override
  String get thematic_spreads => 'Тематические расклады';

  @override
  String get card_combination => 'Сочетание карт';

  @override
  String get card_meanings => 'Значения карт';

  @override
  String get training => 'Обучение';

  @override
  String get welcome => 'Добро пожаловать';

  @override
  String get today => 'Сегодня';

  @override
  String get view => 'Смотреть';

  @override
  String get select_card => 'Выберите карту';

  @override
  String get please_select_cards =>
      'Пожалуйста, выберите разные карты во всех полях.';

  @override
  String get good_day =>
      'Хорошего дня,\nВыберите карты, чтобы узнать их сочетание и значение';

  @override
  String get language_hint => 'Для полной персонализации раскладов';

  @override
  String get quickReading => 'Быстрый расклад';

  @override
  String get comingSoon => 'Скоро будет доступно';

  @override
  String get onboarding_notifications_title =>
      '🔔 Хотите не пропускать «Карту дня» и новые расклады?';

  @override
  String get onboarding_notifications_subtitle =>
      'Пожалуйста согласитесь на отправку уведомлений (без спама).';

  @override
  String get onboarding_notifications_allow => 'СОГЛАСИТЬСЯ';

  @override
  String get onboarding_notifications_decline => 'ОТКАЗАТЬСЯ';

  @override
  String get suggested_questions_chat_1 =>
      'Расскажите мне о моей любовной жизни';

  @override
  String get suggested_questions_chat_2 => 'Что произойдет в моей карьере?';

  @override
  String get suggested_questions_chat_3 => 'Как я могу улучшить себя?';

  @override
  String get suggested_questions_chat_4 =>
      'Какие возможности ждут меня в будущем?';

  @override
  String get onboarding_final_title => 'Все готово!';

  @override
  String get onboarding_final_subtitle =>
      'Для поддержания работы проекта мы показываем рекламу. НО если не хотите, Вы можете подписаться';

  @override
  String get onboarding_final_benefits =>
      'Без рекламы\nРасклады без ограничений\nОбучение без ограничений';

  @override
  String get onboarding_final_yearly => 'Ежегодно';

  @override
  String get onboarding_final_badge => 'Выгода 50%';

  @override
  String get onboarding_final_yearly_price => '249/год';

  @override
  String get onboarding_final_yearly_month => '24/мес';

  @override
  String get onboarding_final_trial => '7 дней бесплатно';

  @override
  String get onboarding_final_trial_price => 'потом 9/мес';

  @override
  String get onboarding_final_trial_month => 'Ежемесячно';

  @override
  String get onboarding_final_note =>
      'Подписка не обязательна и продлевается автоматически. Можете отменить в любое время';

  @override
  String get onboarding_final_choose_yearly => 'Выбрать ежегодно';

  @override
  String get onboarding_final_choose_trial => 'Выбрать 7 дней бесплатно';

  @override
  String get onboarding_final_or => 'ИЛИ';

  @override
  String get onboarding_final_continue_ads => 'ПРОДОЛЖИТЬ С РЕКЛАМОЙ';

  @override
  String get main_screen_greeting => 'Приветствую';

  @override
  String main_screen_date_today(Object date) {
    return 'Сегодня, $date';
  }

  @override
  String get main_screen_card_of_day_title => 'Ваша карта дня';

  @override
  String main_screen_card_of_day_description(Object cardName) {
    return 'Карта дня: $cardName';
  }

  @override
  String get main_screen_card_of_day_description_empty => 'Карта дня:';

  @override
  String get main_screen_card_of_day_status_viewed => 'Открыта';

  @override
  String get main_screen_card_of_day_status_view => 'Посмотреть';

  @override
  String get main_screen_section_spreads => 'Расклады';

  @override
  String get main_screen_section_training => 'Обучение';

  @override
  String get main_screen_section_entertainment => 'Развлечение';

  @override
  String get main_screen_quick_spread_title => 'Быстрый расклад';

  @override
  String get main_screen_quick_spread_description =>
      'за пару касаний получите чёткий ответ на свой вопрос одной картой';

  @override
  String get main_screen_thematic_spreads_title => 'Тематические расклады';

  @override
  String get main_screen_thematic_spreads_description =>
      'готовые схемы для важных сфер: любовь, карьера, здоровье, путешествия';

  @override
  String get main_screen_card_combination_title => 'Сочетание карт';

  @override
  String get main_screen_fun_spread_title => 'Шуточный расклад';

  @override
  String get main_screen_fun_spread_description =>
      'поднимите настроение, сделайте шуточный расклад и поделитесь в соц сетях';

  @override
  String get main_screen_love_badge => 'ЛЮБОВЬ';

  @override
  String get card_combination_screen_title => 'Сочетание карт';

  @override
  String get card_combination_screen_greeting =>
      'Добрый день, выберите карты, чтобы узнать сочетание и значение';

  @override
  String get card_combination_screen_card_hint => 'Карта';

  @override
  String get card_combination_screen_get_combination_button =>
      'Узнать сочетание';

  @override
  String get card_combination_screen_new_spread_button =>
      'Сделать новый расклад';

  @override
  String get card_combination_screen_fill_all_fields_error =>
      'Пожалуйста, заполните все полей карт.';

  @override
  String get card_combination_screen_invalid_cards_error =>
      'Пожалуйста, выберите карты только из предложенного списка. Неверные карты:';

  @override
  String get card_combination_screen_duplicate_cards_error =>
      'Пожалуйста, выберите разные карты во всех полях.';

  @override
  String get card_combination_screen_general_error =>
      'Ошибка: не удалось получить ответ. Попробуйте еще раз.';

  @override
  String get card_combination_screen_disclaimer =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String card_combination_screen_prompt(Object cards, Object lang) {
    return 'Проанализируй сочетание карт Таро: $cards. Дай глубокий мистический анализ их взаимодействия и общий совет. Ответ полностью на языке $lang. Без приветствий и заключений.';
  }

  @override
  String get quick_reading_screen_title => 'Быстрый расклад';

  @override
  String get quick_reading_screen_select_card => 'Выберите карту';

  @override
  String get quick_reading_screen_get_answer_button => 'Узнать ответ';

  @override
  String get quick_reading_screen_what_is_quick_spread =>
      'Что такое быстрый расклад?';

  @override
  String get quick_reading_screen_quick_spread_explanation =>
      'Быстрый расклад — это экспресс расклад (ответ: ДА или НЕТ) который помогает мгновенно получить ясный ответ на конкретный вопрос или общую атмосферу дня. Идеально, когда нужно быстрое вдохновение или совет «здесь и сейчас».';

  @override
  String get quick_reading_screen_understand_button => 'Понятно';

  @override
  String get quick_reading_result_screen_generating_response =>
      'Генерация ответа...';

  @override
  String quick_reading_result_screen_error_generating(Object error) {
    return 'Ошибка при генерации ответа: $error';
  }

  @override
  String quick_reading_result_screen_error_generating_response(Object e) {
    return 'Ошибка при генерации ответа: $e';
  }

  @override
  String get quick_reading_result_screen_what_is_quick_spread =>
      'Что такое быстрый расклад?';

  @override
  String get quick_reading_result_screen_quick_spread_explanation =>
      'Быстрый расклад — это экспресс расклад (ответ: ДА или НЕТ) который помогает мгновенно получить ясный ответ на конкретный вопрос или общую атмосферу дня. Идеально, когда нужно быстрое вдохновение или совет «здесь и сейчас».';

  @override
  String get quick_reading_result_screen_understand_button => 'Понятно';

  @override
  String get quick_reading_result_screen_quick_spread_title =>
      'Быстрый расклад';

  @override
  String get quick_reading_result_screen_new_spread_button => 'Новый расклад';

  @override
  String get quick_reading_result_screen_disclaimer =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String quick_reading_result_screen_prompt(Object cardName, Object userName) {
    return 'Ты опытный таролог. Пользователь $userName вытянул карту — $cardName. Сначала напиши с новой строки фразу: Ответ карт: и далее одним словом ответ «Да» или «Нет». Потом добавь связное толкование 120–150 слов: 7–8 предложений о том, почему энергия $userName ведёт к такому ответу и что это значит лично для $cardName. Упомяни имя $cardName минимум два раза, вставь 1–2 тематических эмодзи, избегай символов *, # и любой разметки; пиши простым разговорным тоном.';
  }

  @override
  String get career_finance_spread_screen_request_accepted =>
      'Ваш запрос принят. Пожалуйста, откройте карты';

  @override
  String get career_finance_spread_screen_error_getting_value =>
      'Ошибка при получении значения расклада. Попробуйте ещё раз.';

  @override
  String get career_finance_spread_screen_what_is_career_finance =>
      'Что такое расклад Карьера и финансы?';

  @override
  String get career_finance_spread_screen_career_finance_explanation =>
      'Этот расклад помогает проанализировать профессиональную и финансовую сферу. Вы узнаете о возможностях, препятствиях и перспективах роста.';

  @override
  String get career_finance_spread_screen_understand_button => 'Понятно';

  @override
  String get career_finance_spread_screen_learn_meaning_button =>
      'Узнать значение';

  @override
  String get career_finance_spread_screen_career_finance_title =>
      'Карьера и финансы';

  @override
  String get career_finance_spread_screen_new_spread_button =>
      'Сделать новый расклад';

  @override
  String get career_finance_spread_screen_disclaimer =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String get career_finance_spread_screen_enter_question_hint =>
      'Введите ваш вопрос...';

  @override
  String get pros_cons_spread_screen_what_is_pros_cons =>
      'Что такое расклад \"За и Против\"?';

  @override
  String get pros_cons_spread_screen_pros_cons_title =>
      'Расклад \"За и Против\"';

  @override
  String get pros_cons_spread_screen_enter_question_hint =>
      'Введите ваш вопрос...';

  @override
  String
  get self_development_balance_spread_screen_self_development_explanation =>
      'Расклад \"Саморазвитие и баланс\" состоит из 7 карт, расположенных в форме круга. Каждая карта символизирует определённый аспект вашего духовного роста и внутренней гармонии.';

  @override
  String get card_meanings_screen_major_arcana => 'Главные арканы';

  @override
  String get card_meanings_screen_wands => 'Жезлы';

  @override
  String get card_meanings_screen_cups => 'Кубки';

  @override
  String get card_meanings_screen_swords => 'Мечи';

  @override
  String get card_meanings_screen_pentacles => 'Пентакли';

  @override
  String get card_meanings_screen_title => 'Значение карт';

  @override
  String get love_spread_screen_new_spread_button => 'Сделать новый расклад';

  @override
  String get love_spread_screen_enter_question_hint => 'Введите ваш вопрос...';

  @override
  String purchase_love_screen_test_stub(Object plan) {
    return 'Тестовая заглушка: выбран тариф \"$plan\"';
  }

  @override
  String get purchase_love_screen_love_tariff_title => 'Тариф ЛЮБОВЬ';

  @override
  String get ad_promo_block_tariff => 'ТАРИФ';

  @override
  String get ad_promo_block_love => 'ЛЮБОВЬ';

  @override
  String get ad_promo_block_promotion_70 => 'АКЦИЯ -50%';

  @override
  String get ad_promo_block_no_ads => '• без рекламы';

  @override
  String get ad_promo_block_no_limits => '• без ограничений';

  @override
  String three_cards_screen_title(Object cards) {
    return '3 карты в раскладе';
  }

  @override
  String get three_cards_screen_initial_message =>
      'Добрый день, пожалуйста, напишите ваш запрос ниже:';

  @override
  String get three_cards_screen_request_accepted =>
      'Ваш запрос принят. Пожалуйста, откройте карты';

  @override
  String get three_cards_screen_suggested_questions_1 =>
      'Какая основная проблема у меня сейчас?';

  @override
  String get three_cards_screen_suggested_questions_2 =>
      'На чем мне стоит сосредоточиться в ближайшем будущем?';

  @override
  String get three_cards_screen_suggested_questions_3 => 'Что скрыто от меня?';

  @override
  String get three_cards_screen_see_meaning_button => 'Узнать значение';

  @override
  String get three_cards_screen_new_spread_button => 'Новый расклад';

  @override
  String get three_cards_screen_enter_question_hint => 'Введите ваш запрос...';

  @override
  String get three_cards_screen_what_is_three_cards =>
      'Что такое расклад на 3 карты?';

  @override
  String get three_cards_screen_three_cards_explanation =>
      'Классический расклад, который показывает прошлое, настоящее и будущее вашей ситуации. Первая карта — прошлое, вторая — настоящее, третья — будущее.';

  @override
  String get three_cards_screen_understand_button => 'Понятно';

  @override
  String get three_cards_screen_error_getting_value =>
      'Ошибка при получении значения расклада. Попробуйте ещё раз.';

  @override
  String get three_cards_screen_disclaimer =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String get five_cards_screen_title => '5 карт в раскладе';

  @override
  String get five_cards_screen_initial_message =>
      'Добрый день, пожалуйста, напишите ваш запрос ниже:';

  @override
  String get five_cards_screen_request_accepted =>
      'Ваш запрос принят. Пожалуйста, откройте карты';

  @override
  String get five_cards_screen_suggested_questions_1 =>
      'Какой путь мне выбрать?';

  @override
  String get five_cards_screen_suggested_questions_2 =>
      'Что мешает мне достичь цели?';

  @override
  String get five_cards_screen_suggested_questions_3 =>
      'Какие возможности у меня есть?';

  @override
  String get five_cards_screen_see_meaning_button => 'Узнать значение';

  @override
  String get five_cards_screen_new_spread_button => 'Сделать новый расклад';

  @override
  String get five_cards_screen_enter_question_hint => 'Введите ваш запрос...';

  @override
  String get five_cards_screen_what_is_five_cards =>
      'Что такое расклад на 5 карт?';

  @override
  String get five_cards_screen_five_cards_explanation =>
      'Расклад на 5 карт это компактная схема, которая раскрывает пять ключевых аспектов ситуации: прошлое, настоящее, скрытые влияния, помощника/препятствие и вероятный итог.';

  @override
  String get five_cards_screen_understand_button => 'Понятно';

  @override
  String get five_cards_screen_error_getting_value =>
      'Ошибка при получении значения расклада. Попробуйте ещё раз.';

  @override
  String get five_cards_screen_disclaimer =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String get celtic_cross_screen_title => 'Кельтский крест';

  @override
  String get celtic_cross_screen_initial_message =>
      'Добрый день, пожалуйста, напишите ваш запрос ниже:';

  @override
  String get celtic_cross_screen_suggested_questions_1 =>
      'Какая основная проблема у меня сейчас?';

  @override
  String get celtic_cross_screen_suggested_questions_2 =>
      'На чем мне стоит сосредоточиться в ближайшем будущем?';

  @override
  String get celtic_cross_screen_suggested_questions_3 => 'Что скрыто от меня?';

  @override
  String get celtic_cross_screen_see_meaning_button => 'Узнать значение';

  @override
  String get celtic_cross_screen_new_spread_button => 'Сделать новый расклад';

  @override
  String get celtic_cross_screen_enter_question_hint => 'Введите ваш запрос...';

  @override
  String get celtic_cross_screen_what_is_celtic_cross_dialog =>
      'Что такое Кельтский крест?';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_dialog =>
      '«Кельтский крест» — это 10-карточный расклад, который подробно разбирает ситуацию со всех сторон: текущие обстоятельства, препятствия, внутренние и внешние влияния, а также ближайшую динамику и конечный исход. Карты выкладываются по порядку:\n\n1 - Ситуация — суть вопроса здесь-и-сейчас.\n2 - Вызов — то, что помогает или мешает продвинуться.\n3 - Подсознательное (корень) — скрытые мотивы и глубинные силы.\n4 - Недавнее прошлое — события, приведшие к текущему положению.\n5 - Сознательное (цель) — то, на чём сейчас сосредоточено внимание кверента.\n6 - Ближнее будущее — вероятное развитие в ближайшие недели.\n7 - «Я сам» — внутреннее состояние, ресурсы, отношение к вопросу.\n8 - Окружение — влияния людей и обстоятельств вокруг.\n9 - Надежды / страхи — ожидания, сомнения, сильные эмоции.\n10 - Итог — возможный исход, если тенденции сохранятся.\n\nЭтот расклад позволяет увидеть «большую картину»: где вы стоите, что мешает или помогает, какие скрытые импульсы работают за кулисами и куда всё движется дальше.\n\nСхема расклада представлена на изображении ниже.\n\n';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_image =>
      'assets/images/kelt.png';

  @override
  String get celtic_cross_screen_understand_button => 'Понятно';

  @override
  String celtic_cross_screen_please_open_cards(Object cards) {
    return 'Ваш запрос принят. Пожалуйста, откройте карты';
  }

  @override
  String celtic_cross_screen_request_accepted(Object cards) {
    return 'Запрос принят, пожалуйста, откройте карты';
  }

  @override
  String get the_user => 'пользователь';

  @override
  String get good_day_please_write_your_question_below =>
      'Добрый день, пожалуйста напишите Ваш запрос ниже';

  @override
  String get errorGettingSpreadMeaning =>
      'Ошибка при получении значения расклада. Попробуйте ещё раз.';

  @override
  String get errorGettingSpreadMeaningPleaseTryAgain =>
      'Ошибка при получении значения расклада. Попробуйте ещё раз.';

  @override
  String get seeMeaning => 'Узнать значение';

  @override
  String get newSpread => 'Сделать новый расклад';

  @override
  String get enterYourQuestion => 'Введите ваш вопрос...';

  @override
  String get enterQuestion => 'Введите ваш вопрос...';

  @override
  String makeTarotReadingFor(Object lang) {
    return 'Сделай для ';
  }

  @override
  String get theUser => 'пользователя';

  @override
  String onTheseThreeCards(Object userName) {
    return ' расклад на эти три карты: ';
  }

  @override
  String makeSelfDevelopmentAndBalanceTarotReadingFor(Object cards) {
    return 'Сделай для $cards расклад Саморазвитие и баланс';
  }

  @override
  String get getAnswer => 'Узнать ответ';

  @override
  String get aboutTheSpread => 'О раскладе';

  @override
  String get aboutSpreadDescription =>
      'Этот расклад помогает проанализировать ваш духовный рост и внутреннюю гармонию.';

  @override
  String get gotIt => 'Понятно';

  @override
  String get selfDevelopmentAndBalance => 'Саморазвитие и баланс';

  @override
  String get appUsageDisclaimer =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String get careerFinance => 'Карьера и финансы';

  @override
  String get fun_spread_screen_with_swear_words_title => 'С матом (18+)';

  @override
  String get fun_spread_screen_with_swear_words_subtitle =>
      'Для тех, кто любит острые ощущения';

  @override
  String get fun_spread_screen_without_swear_words_title => 'Без мата';

  @override
  String get fun_spread_screen_without_swear_words_subtitle =>
      'Веселый расклад без матершинных слов';

  @override
  String get fun_spread_screen_generating => 'Генерируем ваш расклад...';

  @override
  String get card_name_the_fool => 'Шут';

  @override
  String get card_name_the_magician => 'Маг';

  @override
  String get card_name_the_high_priestess => 'Верховная Жрица';

  @override
  String get card_name_the_empress => 'Императрица';

  @override
  String get card_name_the_emperor => 'Император';

  @override
  String get card_name_the_hierophant => 'Иерофант';

  @override
  String get card_name_the_lovers => 'Влюбленные';

  @override
  String get card_name_the_chariot => 'Колесница';

  @override
  String get card_name_strength => 'Сила';

  @override
  String get card_name_the_hermit => 'Отшельник';

  @override
  String get ok_button => 'OK';

  @override
  String get cancel_button => 'Отмена';

  @override
  String get analyzing_cards => 'Делаю разбор карт...';

  @override
  String get yes_button => 'Да';

  @override
  String get no_button => 'Нет';

  @override
  String get loading => 'Загрузка...';

  @override
  String get error => 'Ошибка';

  @override
  String get success => 'Успешно';

  @override
  String get failed => 'Не удалось';

  @override
  String get language_russian => 'Русский';

  @override
  String get language_english_us => 'English (US)';

  @override
  String get language_english_gb => 'English (GB)';

  @override
  String get card_name_wheel_of_fortune => 'Колесо Фортуны';

  @override
  String get card_name_justice => 'Справедливость';

  @override
  String get card_name_the_hanged_man => 'Повешенный';

  @override
  String get card_name_death => 'Смерть';

  @override
  String get card_name_temperance => 'Умеренность';

  @override
  String get card_name_the_devil => 'Дьявол';

  @override
  String get card_name_the_tower => 'Башня';

  @override
  String get card_name_the_star => 'Звезда';

  @override
  String get card_name_the_moon => 'Луна';

  @override
  String get card_name_the_sun => 'Солнце';

  @override
  String get card_name_judgement => 'Суд';

  @override
  String get card_name_the_world => 'Мир';

  @override
  String get card_name_ace_of_wands => 'Туз Жезлов';

  @override
  String get card_name_two_of_wands => 'Двойка Жезлов';

  @override
  String get card_name_three_of_wands => 'Тройка Жезлов';

  @override
  String get card_name_four_of_wands => 'Четверка Жезлов';

  @override
  String get card_name_five_of_wands => 'Пятерка Жезлов';

  @override
  String get card_name_six_of_wands => 'Шестерка Жезлов';

  @override
  String get card_name_seven_of_wands => 'Семерка Жезлов';

  @override
  String get card_name_eight_of_wands => 'Восьмерка Жезлов';

  @override
  String get card_name_nine_of_wands => 'Девятка Жезлов';

  @override
  String get card_name_ten_of_wands => 'Десятка Жезлов';

  @override
  String get card_name_page_of_wands => 'Паж Жезлов';

  @override
  String get card_name_knight_of_wands => 'Рыцарь Жезлов';

  @override
  String get card_name_queen_of_wands => 'Королева Жезлов';

  @override
  String get card_name_king_of_wands => 'Король Жезлов';

  @override
  String get card_name_ace_of_cups => 'Туз Кубков';

  @override
  String get card_name_two_of_cups => 'Двойка Кубков';

  @override
  String get card_name_three_of_cups => 'Тройка Кубков';

  @override
  String get card_name_four_of_cups => 'Четверка Кубков';

  @override
  String get card_name_five_of_cups => 'Пятерка Кубков';

  @override
  String get card_name_six_of_cups => 'Шестерка Кубков';

  @override
  String get card_name_seven_of_cups => 'Семерка Кубков';

  @override
  String get card_name_eight_of_cups => 'Восьмерка Кубков';

  @override
  String get card_name_nine_of_cups => 'Девятка Кубков';

  @override
  String get card_name_ten_of_cups => 'Десятка Кубков';

  @override
  String get card_name_page_of_cups => 'Паж Кубков';

  @override
  String get card_name_knight_of_cups => 'Рыцарь Кубков';

  @override
  String get card_name_queen_of_cups => 'Королева Кубков';

  @override
  String get card_name_king_of_cups => 'Король Кубков';

  @override
  String get card_name_ace_of_swords => 'Туз Мечей';

  @override
  String get card_name_two_of_swords => 'Двойка Мечей';

  @override
  String get card_name_three_of_swords => 'Тройка Мечей';

  @override
  String get card_name_four_of_swords => 'Четверка Мечей';

  @override
  String get card_name_five_of_swords => 'Пятерка Мечей';

  @override
  String get card_name_six_of_swords => 'Шестерка Мечей';

  @override
  String get card_name_seven_of_swords => 'Семерка Мечей';

  @override
  String get card_name_eight_of_swords => 'Восьмерка Мечей';

  @override
  String get card_name_nine_of_swords => 'Девятка Мечей';

  @override
  String get card_name_ten_of_swords => 'Десятка Мечей';

  @override
  String get card_name_page_of_swords => 'Паж Мечей';

  @override
  String get card_name_knight_of_swords => 'Рыцарь Мечей';

  @override
  String get card_name_queen_of_swords => 'Королева Мечей';

  @override
  String get card_name_king_of_swords => 'Король Мечей';

  @override
  String get card_name_ace_of_pentacles => 'Туз Пентаклей';

  @override
  String get card_name_two_of_pentacles => 'Двойка Пентаклей';

  @override
  String get card_name_three_of_pentacles => 'Тройка Пентаклей';

  @override
  String get card_name_four_of_pentacles => 'Четверка Пентаклей';

  @override
  String get card_name_five_of_pentacles => 'Пятерка Пентаклей';

  @override
  String get card_name_six_of_pentacles => 'Шестерка Пентаклей';

  @override
  String get card_name_seven_of_pentacles => 'Семерка Пентаклей';

  @override
  String get card_name_eight_of_pentacles => 'Восьмерка Пентаклей';

  @override
  String get card_name_nine_of_pentacles => 'Девятка Пентаклей';

  @override
  String get card_name_ten_of_pentacles => 'Десятка Пентаклей';

  @override
  String get card_name_page_of_pentacles => 'Паж Пентаклей';

  @override
  String get card_name_knight_of_pentacles => 'Рыцарь Пентаклей';

  @override
  String get card_name_queen_of_pentacles => 'Королева Пентаклей';

  @override
  String get card_name_king_of_pentacles => 'Король Пентаклей';

  @override
  String get quick_reading_screen_suggested_questions_1 =>
      'Стоит ли мне это делать?';

  @override
  String get quick_reading_screen_suggested_questions_2 =>
      'Правильный ли это путь?';

  @override
  String get quick_reading_screen_suggested_questions_3 =>
      'Что мне нужно знать?';

  @override
  String get monthly_forecast_spread_screen_see_meaning_button =>
      'Узнать значение';

  @override
  String get monthly_forecast_spread_screen_new_spread_button =>
      'Сделать новый расклад';

  @override
  String get monthly_forecast_spread_screen_enter_question_hint =>
      'Введите ваш запрос...';

  @override
  String get monthly_forecast_spread_screen_what_is_monthly_forecast =>
      'Что такое месячный прогноз?';

  @override
  String get monthly_forecast_spread_screen_monthly_forecast_explanation =>
      'Месячный прогноз показывает основные события и тенденции на ближайший месяц. Помогает подготовиться к изменениям и использовать возможности.';

  @override
  String get monthly_forecast_spread_screen_understand_button => 'Понятно';

  @override
  String get monthly_forecast_spread_screen_error_getting_value =>
      'Ошибка при получении значения расклада. Попробуйте ещё раз.';

  @override
  String get monthly_forecast_spread_screen_disclaimer =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String self_development_balance_spread_screen_prompt(
    Object cards,
    Object userName,
  ) {
    return 'Сделай для $userName расклад на саморазвитие и баланс по этим трем картам: $cards';
  }

  @override
  String get error_getting_answer_try_again =>
      'Ошибка: не удалось получить ответ. Попробуйте еще раз.';

  @override
  String get card_detail_screen_title => 'Детали карты';

  @override
  String get card_detail_screen_general_meaning => 'Общее значение';

  @override
  String get card_detail_screen_reversed_meaning => 'Перевернутое значение';

  @override
  String get card_detail_screen_symbolism => 'Символизм';

  @override
  String get card_detail_screen_error_loading_text => 'Ошибка загрузки текста';

  @override
  String card_detail_screen_general_meaning_prompt(
    Object cardName,
    Object lang,
  ) {
    return 'Опиши общее значение карты Таро \"$cardName\" на языке $lang. Включи историю, символику и основные значения.';
  }

  @override
  String card_detail_screen_reversed_meaning_prompt(
    Object cardName,
    Object lang,
  ) {
    return 'Опиши перевернутое значение карты Таро \"$cardName\" на языке $lang. Включи противоположные значения и предупреждения.';
  }

  @override
  String card_detail_screen_symbolism_prompt(Object cardName, Object lang) {
    return 'Опиши символизм карты Таро \"$cardName\" на языке $lang. Включи детали изображения, цвета и их значения.';
  }

  @override
  String card_detail_screen_description(Object cardName) {
    return 'Описание карты $cardName';
  }

  @override
  String get card_detail_screen_see_other_card_meaning =>
      'Посмотреть значение другой карты';

  @override
  String get card_detail_screen_or => 'или';

  @override
  String get card_detail_screen_loading_language => 'Загрузка языка...';

  @override
  String get card_detail_screen_see_card_meaning => 'Посмотреть значение карты';

  @override
  String get card_detail_screen_original_waite_text =>
      'Оригинальный текст Уэйта';

  @override
  String get card_detail_screen_no_original_text => 'Нет оригинального текста';

  @override
  String card_of_the_day_screen_translate_card_name_prompt(
    Object cardName,
    Object languageCode,
  ) {
    return 'Переведи название карты Таро \"$cardName\" на $languageCode. Ответ должен содержать только переведенное название, без дополнительного текста или знаков препинания.';
  }

  @override
  String card_of_the_day_screen_generate_description_prompt(
    Object cardName,
    Object name,
  ) {
    return 'Ты профессиональный таролог. Напиши вдохновляющее сообщение «Карта дня» на языке этого запроса для пользователя $name. Соблюдай структуру и объём.\n\n🌟 $name, твоя карта дня — $cardName!\n\n🔑 Ключевые слова: <укажи 3–5 коротких keywords>\n\n🃏 Значение (≈45–50 слов): опиши основную энергию карты и как она проявится сегодня у $name.\n\n💡 Совет (≈35–40 слов): предложи конкретное действие или настрой, который поможет $name использовать эту энергию.\n\n✨ Аффирмация (1 строка): позитивное утверждение, начинающееся с «Я…».\n\nТребования: общая длина 120–150 слов, тёплый эзотерический тон, 3–4 тематических эмодзи, никаких списков в HTML/Markdown; абзацы разделяй двойным переносом строки (\\n\\n).';
  }

  @override
  String get card_of_the_day_screen_title => 'Карта дня';

  @override
  String get card_of_the_day_screen_error_loading_card =>
      'Ошибка загрузки карты';

  @override
  String career_finance_spread_screen_prompt(Object cards, Object userName) {
    return 'Сделай для $userName расклад на карьеру и финансы по этим трем картам: $cards';
  }

  @override
  String get contact_us_title => 'Напишите нам';

  @override
  String get contact_us_email_hint => 'Ваш e-mail';

  @override
  String get contact_us_email_empty => 'Введите e-mail';

  @override
  String get contact_us_email_invalid => 'Некорректный e-mail';

  @override
  String get contact_us_message_hint => 'Ваше сообщение';

  @override
  String get contact_us_message_empty => 'Введите сообщение';

  @override
  String get contact_us_send_button => 'Отправить';

  @override
  String get five_cards_spread_screen_what_is_five_cards_dialog =>
      'Что такое расклад на 5 карт?';

  @override
  String get five_cards_spread_screen_five_cards_explanation_dialog =>
      'Этот расклад раскрывает весь путь вашего вопроса:\nКарта 1 - Прошлое показывает исходные обстоятельства,\nКарта 2 - Настоящее — текущую энергию,\nКарта 3 - Скрытое выявляет скрытые влияния,\nКарта 4 - Совет подсказывает оптимальное действие,\nКарта 5 - Итог предсказывает вероятный результат.';

  @override
  String get five_cards_spread_screen_understand_button => 'Понятно';

  @override
  String get language_selection_screen_title => 'Язык';

  @override
  String get love_spread_screen_what_is_love_spread =>
      'Что такое любовный расклад?';

  @override
  String get love_spread_screen_love_spread_explanation =>
      'Любовный триплет — это три карты, выложенные слева направо:\nКарта 1 - Ты — показывает чувства, мотивацию и позицию самого кверента.\nКарта 2 - Партнёр — раскрывает эмоции, планы и готовность второй стороны.\nКарта 3 - Динамика / потенциал — описывает, как две энергии взаимодействуют сейчас и к чему способны привести отношения в ближайшей перспективе.';

  @override
  String get love_spread_screen_understand_button => 'Понятно';

  @override
  String get main_screen_your_plan_trial => 'Ваш план: Пробный (с рекламой)';

  @override
  String get main_screen_no_ads => '• без рекламы';

  @override
  String get main_screen_no_limits => '• без ограничений';

  @override
  String get main_screen_shop_soon => 'Магазин (soon)';

  @override
  String get main_screen_notification_settings => 'Настройки уведомлений';

  @override
  String get main_screen_language_selection => 'Выбор языка';

  @override
  String get main_screen_rate_app => 'Оцените приложение';

  @override
  String get main_screen_contact_us => 'Связаться с нами';

  @override
  String get main_screen_classic_spreads_title => 'Классические расклады';

  @override
  String get main_screen_classic_spreads_description =>
      'расклады на 2 / 3 / 5 карт и полный развёрнутый Кельтский крест';

  @override
  String get main_screen_card_meanings_title => 'Значение карт';

  @override
  String get main_screen_card_meanings_description =>
      'полный справочник прямых и перевёрнутых значений всех старших и младших арканов';

  @override
  String get main_screen_card_combination_description =>
      '\"калькулятор таро\" выберите карты и получите глубокий анализ связей';

  @override
  String get notification_settings_screen_title => 'Настройки уведомлений';

  @override
  String get notification_settings_screen_frequency_question =>
      'Как часто вы хотите получать уведомление о карте дня?';

  @override
  String get notification_settings_screen_every_day => 'Каждый день';

  @override
  String get notification_settings_screen_every_three_days => 'Раз в три дня';

  @override
  String get notification_settings_screen_every_week => 'Раз в неделю';

  @override
  String get notification_settings_screen_time_question =>
      'В какое время суток?';

  @override
  String get notification_settings_screen_morning => 'Утром';

  @override
  String get notification_settings_screen_day => 'Днем';

  @override
  String get notification_settings_screen_evening => 'Вечером';

  @override
  String get notification_settings_screen_save_button => 'Сохранить';

  @override
  String get onboarding_final_screen_yearly_price => '249/год';

  @override
  String get onboarding_final_screen_yearly_month_price => '24/мес';

  @override
  String get onboarding_final_screen_monthly_price => '9/мес=';

  @override
  String get onboarding_final_screen_monthly_month_price => '9/мес';

  @override
  String get onboarding_final_screen_yearly_plan => 'Ежегодно';

  @override
  String get onboarding_final_screen_free_trial => '7 дней бесплатно';

  @override
  String get onboarding_final_screen_purchase_title => 'Покупка';

  @override
  String onboarding_final_screen_test_stub_message(Object plan) {
    return 'Тестовая заглушка: выбран тариф \"$plan\"';
  }

  @override
  String get onboarding_final_screen_ok_button => 'OK';

  @override
  String get purchase_love_screen_yearly_price => '249/год';

  @override
  String get purchase_love_screen_yearly_month_price => '24/мес';

  @override
  String get purchase_love_screen_monthly_price => 'Ежемесячно';

  @override
  String get purchase_love_screen_monthly_month_price => '9/мес';

  @override
  String get purchase_love_screen_title => 'Покупка';

  @override
  String get purchase_love_screen_ok_button => 'OK';

  @override
  String quick_reading_screen_error_no_image_file_found(Object cardName) {
    return 'ОШИБКА: Файл изображения не найден для карты: $cardName';
  }

  @override
  String get please_fill_all_fields => 'Пожалуйста, заполните все полей карт.';

  @override
  String get please_select_cards_only_from_suggested_list =>
      'Пожалуйста, выберите карты только из предложенного списка. Неверные карты:';

  @override
  String get please_select_different_cards_in_all_fields =>
      'Пожалуйста, выберите разные карты во всех полях.';

  @override
  String get card => 'Карта';

  @override
  String get get_combination => 'Узнать сочетание';

  @override
  String get new_spread => 'Сделать новый расклад';

  @override
  String get app_uses_ai_for_entertainment_purposes =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String get career_finance_spread_screen_what_is_career_finance_spread =>
      'Что такое расклад Карьера и финансы?';

  @override
  String celtic_cross_screen_prompt(
    Object challengeCard,
    Object consciousCard,
    Object environmentCard,
    Object hiddenCard,
    Object hopesCard,
    Object outcomeCard,
    Object pastCard,
    Object presentCard,
    Object selfCard,
    Object situationCard,
    Object subconsciousCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'Ты опытный таролог. Пользователь $userName спрашивает: \"$userQuestion\". Ответь раскладом \"Кельтский крест\" (классическая схема Уэйта). Карты переданы так: ситуация - $situationCard; вызов - $challengeCard; подсознательное - $subconsciousCard; недавнее прошлое - $pastCard; сознательное - $consciousCard; ближайшее будущее - $hiddenCard; внутреннее Я - $selfCard; окружение - $environmentCard; надежды или страхи - $hopesCard; итог - $outcomeCard. Упоминай имя $userName минимум шесть раз и обязательно связывай каждую карту с вопросом. Соблюдай структуру:\n\n1) Приветствие по имени $userName.\n\n2) Заголовок: Расклад: ситуация ($situationCard) / вызов ($challengeCard) / подсознательное ($subconsciousCard) / недавнее прошлое ($pastCard) / сознательное ($consciousCard) / ближайшее будущее ($hiddenCard) / внутреннее Я ($selfCard) / окружение ($environmentCard) / надежды/страхи ($hopesCard) / итог ($outcomeCard).\n\n3) Ситуация — $situationCard (45-55 слов): три ключевых слова, символика карты и текущее положение дел по вопросу $userQuestion для $userName.\n\n4) Вызов — $challengeCard (45-55 слов): главное препятствие или помощь для $userName.\n\n5) Подсознательное — $subconsciousCard (45-55 слов): скрытые мотивы или энергии, влияющие на $userName.\n\n6) Недавнее прошлое — $pastCard (45-55 слов): события, приведшие $userName к нынешней ситуации.\n\n7) Сознательное — $consciousCard (45-55 слов): цели, ожидания или то, что $userName осознаёт.\n\n8) Ближнее будущее — $hiddenCard (45-55 слов): вероятное развитие в ближайшие недели.\n\n9) Внутреннее Я — $selfCard (45-55 слов): состояние, ресурсы $userName.\n\n10) Окружение — $environmentCard (45-55 слов): влияние людей и обстоятельств.\n\n11) Надежды / страхи — $hopesCard (45-55 слов): ожидания или опасения $userName.\n\n12) Итог — $outcomeCard (45-55 слов): вероятный результат при учёте совета расклада.\n\n13) Заключение: дружеская поддержка и позитивная аффирмация (30-35 слов) для $userName.\n\nТребования: общий объём 400-500 слов, живой разговорный тон, 4-6 эзотерических эмодзи; каждый блок отделяй двойным переводом строки (\n\n); не используй символы *, # или другую разметку; пиши только простым текстом.';
  }

  @override
  String get celtic_cross_screen_unable_to_load_card =>
      'Не удалось загрузить карту';

  @override
  String get celticCrossTitle => 'Кельтский крест';

  @override
  String get chat_with_tarot_reader_screen_request_received =>
      'Ваш запрос принят. Пожалуйста, откройте карты';

  @override
  String chat_with_tarot_reader_screen_prompt(
    Object hiddenCard,
    Object pastCard,
    Object presentCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'Ты опытный таролог. Пользователь $userName спрашивает: \"$userQuestion\". Ответь через расклад \"Прошлое - Настоящее - Будущее\". Карты переданы так: прошлое - $pastCard; настоящее - $presentCard; будущее - $hiddenCard. Упоминай имя $userName не менее четырёх раз и обязательно связывай значения карт с вопросом. Соблюдай структуру:\n\n1) Приветствие по имени $userName.\n\n2) Заголовок: Расклад: Прошлое ($pastCard) - Настоящее ($presentCard) - Будущее ($hiddenCard).\n\n3) Блок ПРОШЛОЕ — $pastCard (40-50 слов): три ключевых слова, символика карты и объяснение, как прошлые факты влияют на исход вопроса $userQuestion для $userName.\n\n4) Блок НАСТОЯЩЕЕ — $presentCard (40-50 слов): ключевые слова, символика карты и текущие факторы, влияющие на ответ на вопрос $userQuestion.\n\n5) Блок БУДУЩЕЕ — $hiddenCard (40-50 слов): ключевые слова, символика карты и вероятный сценарий развития ситуации по вопросу $userName.\n\n6) Итог: короткий совет, позитивная аффирмация (20-30 слов) и чёткое обобщение шансов.\n\nТребования: общий объём 180-220 слов, тёплый эзотерический тон, 3-5 тематических эмодзи; каждый блок отделяй двойным переводом строки (\n\n); запрещено использовать символы *, # или другие знаки форматирования; пиши только простым текстом.';
  }

  @override
  String get see_meaning_button => 'Узнать значение';

  @override
  String three_cards_title(Object cards) {
    return '3 карты в раскладе';
  }

  @override
  String get new_spread_button => 'Сделать новый расклад';

  @override
  String get disclaimer_text =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String get enter_your_question => 'Введите ваш вопрос...';

  @override
  String get classic_spreads_screen_title => 'Классические расклады';

  @override
  String get classic_spreads_screen_three_cards_title => '3 карты';

  @override
  String get classic_spreads_screen_three_cards_description =>
      'Прошлое, настоящее, будущее';

  @override
  String get classic_spreads_screen_five_cards_title => '5 карт';

  @override
  String get classic_spreads_screen_five_cards_description =>
      'Глубокий анализ ситуации';

  @override
  String get classic_spreads_screen_celtic_cross_title => 'Кельтский крест';

  @override
  String get classic_spreads_screen_celtic_cross_description =>
      'Полный расклад на 10 карт';

  @override
  String five_cards_screen_prompt(
    Object adviceCard,
    Object hiddenCard,
    Object outcomeCard,
    Object pastCard,
    Object presentCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'Ты опытный таролог. Пользователь $userName спрашивает: \"$userQuestion\". Ответь через расклад \"5 карт\". Карты даны по порядку: прошлое - $pastCard; настоящее - $presentCard; будущее - $hiddenCard; причина - $adviceCard; возможный итог - $outcomeCard. Объясни значение каждой карты и их общий смысл.';
  }

  @override
  String get fiveCardsInSpread => '5 карт в раскладе';

  @override
  String get makeNewSpread => 'Сделать новый расклад';

  @override
  String
  get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMake =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String get requestReceivedPleaseOpenCards =>
      'Ваш запрос принят. Пожалуйста, откройте карты';

  @override
  String love_spread_prompt(
    Object dynamicCard,
    Object partnerCard,
    Object userName,
    Object userQuestion,
    Object youCard,
  ) {
    return 'Ты опытный таролог. Пользователь $userName спрашивает: «$userQuestion». Ответь с помощью любовного расклада из трёх карт. Карты даны так: чувства $userName — $youCard; чувства партнёра — $partnerCard; динамика или потенциал отношений — $dynamicCard. Упоминай имя $userName минимум три раза и связывай каждую карту с вопросом. Соблюдай структуру:\n\n1) Приветствие по имени $userName.\n\n2) Заголовок: Расклад: $youCard | $partnerCard | $dynamicCard.\n\n3) $youCard — 40–50 слов: опиши, что карта говорит о чувствах и ожиданиях $userName.\n\n4) $partnerCard — 40–50 слов: раскрой эмоции и намерения партнёра относительно вопроса $userName.\n\n5) $dynamicCard — 40–50 слов: покажи, как эти две энергии взаимодействуют и к чему могут привести отношения.\n\n6) Заключение: тёплый совет и позитивная аффирмация (20–25 слов) для $userName.\n\nТребования: общий объём 150–180 слов, дружеский романтичный тон, 2–4 тематических эмодзи; абзацы отделяй двойным переводом строки (\\n\\n); избегай символов *, # и любой разметки.';
  }

  @override
  String get loveSpread => 'Любовный расклад';

  @override
  String
  get applicationUsesAIExclusivelyForEntertainmentWeDoNotTakeResponsibilityForDecisionsYouHaveMadeIfNeededPleaseConsultSpecialist =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String main_screen_greeting_with_name(Object name) {
    return 'Приветствую, $name';
  }

  @override
  String get main_screen_monday => 'Понедельник';

  @override
  String get main_screen_tuesday => 'Вторник';

  @override
  String get main_screen_wednesday => 'Среда';

  @override
  String get main_screen_thursday => 'Четверг';

  @override
  String get main_screen_friday => 'Пятница';

  @override
  String get main_screen_saturday => 'Суббота';

  @override
  String get main_screen_sunday => 'Воскресенье';

  @override
  String get main_screen_your_card_of_the_day => 'Ваша карта дня';

  @override
  String main_screen_card_of_the_day_with_name(Object cardName) {
    return 'Карта дня: $cardName';
  }

  @override
  String get main_screen_card_of_the_day => 'Карта дня:';

  @override
  String get main_screen_viewed => 'Открыта';

  @override
  String get main_screen_not_viewed => 'Посмотреть';

  @override
  String get main_screen_spreads => 'Расклады';

  @override
  String get main_screen_training => 'Обучение';

  @override
  String get main_screen_entertainment => 'Развлечение';

  @override
  String get main_screen_glad_to_see_you_here => 'Рад видеть вас здесь!';

  @override
  String get main_screen_quick_reading_title => 'Быстрый расклад';

  @override
  String get main_screen_quick_reading_description =>
      'за пару касаний получите чёткий ответ на свой вопрос одной картой';

  @override
  String get monthly_forecast_spread_screen_request_accepted =>
      'Ваш запрос принят. Пожалуйста, откройте карты';

  @override
  String monthly_forecast_spread_screen_prompt(Object cards, Object userName) {
    return 'Сделай для $userName месячный прогноз по этим картам: $cards';
  }

  @override
  String get aboutSpread => 'О раскладе';

  @override
  String get monthlyForecast => 'Месячный прогноз';

  @override
  String
  get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNecessaryPleaseConsultSpecialist =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String purchase_love_screen_test_message(Object planName) {
    return 'Тестовая заглушка: выбран тариф \"$planName\"';
  }

  @override
  String get quick_reading_screen_what_is_quick_reading =>
      'Что такое быстрый расклад?';

  @override
  String get quick_reading_screen_quick_reading_explanation =>
      'Быстрый расклад — это экспресс расклад (ответ: ДА или НЕТ) который помогает мгновенно получить ясный ответ на конкретный вопрос или общую атмосферу дня. Идеально, когда нужно быстрое вдохновение или совет «здесь и сейчас».';

  @override
  String get self_development_balance_spread_screen_request_accepted =>
      'Ваш запрос принят. Пожалуйста, откройте карты';

  @override
  String get self_development_balance_spread_screen_error_getting_value =>
      'Ошибка при получении значения расклада. Попробуйте ещё раз.';

  @override
  String
  get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNeededConsultSpecialist =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String get thematic_spreads_screen_title => 'Тематические расклады';

  @override
  String get thematic_spreads_screen_love_spread_title => 'Любовный расклад';

  @override
  String get thematic_spreads_screen_love_spread_description =>
      'Анализ отношений и чувств';

  @override
  String get thematic_spreads_screen_career_finance_title =>
      'Карьера и финансы';

  @override
  String get thematic_spreads_screen_career_finance_description =>
      'Профессиональный и финансовый анализ';

  @override
  String get thematic_spreads_screen_pros_cons_title => 'За и Против';

  @override
  String get thematic_spreads_screen_pros_cons_description =>
      'Анализ плюсов и минусов';

  @override
  String get thematic_spreads_screen_monthly_forecast_title =>
      'Месячный прогноз';

  @override
  String get thematic_spreads_screen_monthly_forecast_description =>
      'Прогноз по месяцам';

  @override
  String get thematic_spreads_screen_self_development_title =>
      'Саморазвитие и баланс';

  @override
  String get thematic_spreads_screen_self_development_description =>
      'Духовный рост и гармония';

  @override
  String get requestReceived => 'Ваш запрос принят. Пожалуйста, откройте карты';

  @override
  String pros_cons_spread_prompt(Object cards, Object userName) {
    return 'Сделай для $userName расклад За и Против по этим картам: $cards';
  }

  @override
  String get pros_cons_spread_screen_what_is_pros_cons_spread =>
      'Что такое расклад \"За и Против\"?';

  @override
  String get pros_cons_spread_screen_pros_cons_spread_explanation =>
      'Расклад \"За и Против\" помогает проанализировать плюсы и минусы ситуации, чтобы принять взвешенное решение.';

  @override
  String get pros_cons_spread_screen_understand_button => 'Понятно';

  @override
  String get prosConsSpreadTitle => 'Расклад \"За и Против\"';

  @override
  String get spreadDisclaimer =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String get fun_spread_screen_generation_error =>
      'Ошибка при генерации расклада. Попробуйте еще раз.';

  @override
  String get fun_spread_screen_share_error =>
      'Ошибка при сохранении изображения.';

  @override
  String get fun_spread_screen_about_fun_spread =>
      'Что такое забавный расклад?';

  @override
  String get fun_spread_screen_fun_spread_explanation =>
      'Забавный расклад - это особый способ гадания на картах таро, который сочетает в себе глубину традиционных раскладов с легким и позитивным подходом. Он поможет вам взглянуть на ситуацию с новой стороны и найти радость в повседневной жизни.';

  @override
  String get fun_spread_screen_understand_button => 'Понятно';

  @override
  String get fun_spread_screen_title => 'Забавный расклад';

  @override
  String get fun_spread_screen_generate_button => 'Создать расклад';

  @override
  String get fun_spread_screen_share_button => 'Поделиться';

  @override
  String get fun_spread_screen_new_button => 'Новый расклад';

  @override
  String get fun_spread_screen_share_text =>
      'Посмотрите, какой забавный расклад таро я получил в приложении Tarot AI!';

  @override
  String get ad_promo_tariff => 'ТАРИФ';

  @override
  String get ad_promo_love => 'ЛЮБОВЬ';

  @override
  String get ad_promo_discount => 'АКЦИЯ -50%';

  @override
  String get ad_promo_no_ads => '• без рекламы';

  @override
  String get ad_promo_no_limits => '• без ограничений';

  @override
  String get no_internet_error =>
      'Наше приложение работает только с интернетом. Пожалуйста, включите Wi-Fi или мобильный интернет.';

  @override
  String fun_spread_screen_mate_prompt_3cards(Object userName) {
    return 'Сделай очень смешной, дерзкий и матершинный расклад таро на 3 карты для $userName . Для каждой карты придумай смешное название и напиши отдельный абзац: Первая карта: <название> — <короткое смешное описание>, Вторая карта: <название> — <короткое смешное описание>, Третья карта: <название> — <короткое смешное описание>. Используй нецензурную лексику, чтобы добавить юмора, но не оскорбляй. Весь текст не длиннее 7 предложений.';
  }

  @override
  String fun_spread_screen_no_mate_prompt_3cards(Object userName) {
    return 'Создай забавный расклад таро для $userName на 3 карты. Для каждой карты придумай смешное название и напиши отдельный абзац: Первая карта: <название> — <короткое смешное описание>, Вторая карта: <название> — <короткое смешное описание>, Третья карта: <название> — <короткое смешное описание>. Расклад должен быть веселым, но с глубоким смыслом. Только 3 карты. Весь текст не длиннее 7 предложений.';
  }

  @override
  String get fun_spread_screen_title_top => 'ТАРО расклад';

  @override
  String fun_spread_screen_title_for_name(Object name) {
    return 'для $name';
  }

  @override
  String get contact_us_screen_message_sent =>
      'Ваше сообщение получено, спасибо!';

  @override
  String get contact_us_screen_message_error => 'Ошибка отправки сообщения';

  @override
  String get love_spread_screen_initial_message =>
      'Добрый день, пожалуйста, напишите ваш вопрос ниже:';

  @override
  String get main_screen_tariff => 'ТАРИФ';

  @override
  String get main_screen_promo_50 => 'АКЦИЯ -50%';

  @override
  String get main_screen_rate_hint =>
      'Если окно оценки не появилось, вы можете оставить отзыв в Google Play.';

  @override
  String get main_screen_rate_error =>
      'Не удалось открыть Google Play. Попробуйте позже.';

  @override
  String get love_spread_screen_suggested_questions_1 =>
      'Какие чувства у меня к этому человеку?';

  @override
  String get love_spread_screen_suggested_questions_2 =>
      'Что мешает нашим отношениям?';

  @override
  String get love_spread_screen_suggested_questions_3 =>
      'Какое будущее ждет наши отношения?';

  @override
  String get career_finance_spread_screen_suggested_questions_1 =>
      'Какие возможности ждут меня в карьере?';

  @override
  String get career_finance_spread_screen_suggested_questions_2 =>
      'Как улучшить мое финансовое положение?';

  @override
  String get career_finance_spread_screen_suggested_questions_3 =>
      'Стоит ли менять работу?';

  @override
  String get pros_cons_spread_screen_suggested_questions_1 =>
      'Стоит ли мне принимать это решение?';

  @override
  String get pros_cons_spread_screen_suggested_questions_2 =>
      'Какие плюсы и минусы у этого выбора?';

  @override
  String get pros_cons_spread_screen_suggested_questions_3 =>
      'Что важнее в данной ситуации?';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_1 =>
      'Что ждет меня в этом месяце?';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_2 =>
      'Какие события произойдут в ближайшее время?';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_3 =>
      'На чем стоит сосредоточиться в этом месяце?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_1 =>
      'Как мне развиваться духовно?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_2 =>
      'Что мешает моему внутреннему балансу?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_3 =>
      'Как найти гармонию в жизни?';

  @override
  String career_three_card_prompt(
    Object adviceCard,
    Object challengeCard,
    Object situationCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'Ты опытный таролог-коуч. Пользователь $userName спрашивает: «$userQuestion». Сделай расклад из трёх карт на карьеру и финансы. Карты переданы так: 1) ситуация — $situationCard; 2) преграда или ключевая возможность — $challengeCard; 3) совет и потенциал — $adviceCard. Определи пол пользователя по имени $userName и обращайся с правильными окончаниями и местоимениями. Говори с $userName дружелюбно и по делу: покажи, где он стоит, что блокирует рост (или какой шанс важно заметить) и какой практический шаг выведет к желаемому доходу. Упоминай имя $userName минимум три раза. Соблюдай структуру:\n\n1) Приветствие — 1 предложение.\n\n2) Заголовок: Расклад: $situationCard | $challengeCard | $adviceCard.\n\n3) $situationCard — 45–55 слов: опиши текущее положение $userName (работа, бизнес или общий финансовый фон) и символику карты.\n\n4) $challengeCard — 45–55 слов: раскрой главный барьер или неочевидную возможность; укажи, как она отражается в карте и в вопросе $userName.\n\n5) $adviceCard — 45–55 слов: предложи конкретное действие (например, пересмотреть бюджет, запросить повышение, изучить новую компетенцию) и опиши возможный результат.\n\n6) Финал — 20–25 слов: дружеский вывод, позитивная аффирмация и 2 деловых эмодзи.\n\nТребования: общий объём 160–185 слов, ясный деловой тон без жаргона, 2–3 эмодзи; абзацы разделяй двойным \\n\\n; не используй *, # и прочую разметку.';
  }

  @override
  String pros_cons_three_card_prompt(
    Object adviceCard,
    Object conCard,
    Object proCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'Ты опытный таролог. Пользователь $userName спрашивает: «$userQuestion». Сделай расклад «За и Против» из трёх карт. Карты переданы так: плюсы — $proCard; минусы — $conCard; совет/итог — $adviceCard. Определи пол пользователя по имени $userName и обращайся с правильными окончаниями и местоимениями. Упоминай имя $userName не менее трёх раз и связывай каждую карту с вопросом. Соблюдай структуру:\n\n1) Приветствие по имени $userName.\n\n2) Заголовок: Расклад: $proCard | $conCard | $adviceCard.\n\n3) Плюсы: $proCard — 45–55 слов. Раскрой главные выгоды или положительные ресурсы, которые эта карта приносит в ситуацию $userName.\n\n4) Минусы: $conCard — 45–55 слов. Опиши риски, скрытые затраты или слабые места решения для $userName.\n\n5) Совет: $adviceCard — 45–55 слов. Взвесь плюсы и минусы, предложи одно конкретное действие (глагол + объект) и скажи, как это изменит исход для $userName.\n\n6) Итог — одним словом «Да» или «Нет», затем 1 предложение-обоснование и ободряющая аффирмация (20–25 слов) с 1–2 эмодзи.\n\nТребования: общий объём 150–180 слов, дружеский разговорный тон; каждый блок отделяй двойным переводом строки (\\n\\n); без символов *, # или другой разметки.';
  }

  @override
  String monthly_wheel_prompt(
    Object card1,
    Object card10,
    Object card11,
    Object card12,
    Object card2,
    Object card3,
    Object card4,
    Object card5,
    Object card6,
    Object card7,
    Object card8,
    Object card9,
    Object month,
    Object userName,
    Object userQuestion,
  ) {
    return 'Ты профессиональный таролог. Пользователь $userName спрашивает: «$userQuestion». Составь расклад «Колесо месяца» на $month. Карты идут по порядку: 1 — $card1, 2 — $card2, 3 — $card3, 4 — $card4, 5 — $card5, 6 — $card6, 7 — $card7, 8 — $card8, 9 — $card9, 10 — $card10, 11 — $card11, 12 — $card12. Определи пол $userName по имени и используй правильные окончания и местоимения. Упоминай имя не меньше пяти раз, но **не вставляй его после каждой даты** — вспоминай лишь внутри текста советов. Используй календарную сетку дат: 1–3, 4–6, 7–9, 10–12, 13–15, 16–18, 19–21, 22–24, 25–26, 27–28, 29–30, 31 (если в месяце 30 дней — 12-я карта тоже относится к 30-му числу). Формат:\n\n1) Приветствие по имени $userName (1–2 предложения).\n\n2) Краткое вступление о цели расклада (1 предложение).\n\n3–14) Для каждой карты используй строку вида «1–3 $month — $card1» (без имени): затем 2–3 предложения о ключевой энергии периода и практическом совете, органично упоминая $userName.\n\n15) Итог: общий совет на месяц (около 40 слов) и вдохновляющая аффирмация с 2–3 эмодзи.\n\nТребования: суммарно 360–400 слов; дружеский, мотивирующий тон; блоки разделяй двойным \\n\\n; никаких символов *, #, списков или технических пометок.';
  }

  @override
  String self_growth_balance_prompt(
    Object adviceCard,
    Object bodyCard,
    Object challengeCard,
    Object coreCard,
    Object emotionCard,
    Object mindCard,
    Object strengthCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'Ты опытный таролог-коуч. Пользователь $userName спрашивает: «$userQuestion». Сделай расклад «Саморазвитие и баланс» из семи карт. Карты даны так: ядро — $coreCard; разум — $mindCard; эмоции — $emotionCard; тело — $bodyCard; ресурс — $strengthCard; блок — $challengeCard; совет — $adviceCard. Определи пол пользователя по имени $userName и обращайся с правильными окончаниями и местоимениями. Говори живо и поддерживающе, упоминай имя $userName не меньше четырёх раз и обязательно связывай каждую карту с вопросом. Соблюдай структуру и формат:\n\n1) Приветствие по имени $userName.\n\n2) Заголовок: Расклад: $coreCard | $mindCard | $emotionCard | $bodyCard | $strengthCard | $challengeCard | $adviceCard.\n\n3) $coreCard — опиши главный фокус саморазвития $userName.\n\n4) $mindCard — расскажи, как настроить мышление и чему учиться.\n\n5) $emotionCard — раскрой эмоциональный ресурс и мотивацию.\n\n6) $bodyCard — подскажи, как заботиться о теле и энергии.\n\n7) $strengthCard — покажи внутренний дар или внешнюю поддержку.\n\n8) $challengeCard — обозначь ключевой дисбаланс и его причины.\n\n9) $adviceCard — предложи конкретное действие, объединяющее все аспекты.\n\n10) Финал: вдохновляющая аффирмация и тёплое напутствие с 2–3 эмодзи.\n\nТребования: каждый пункт 2–3 предложения; между пунктами ставь двойной перевод строки (\\n\\n); не используй символы *, # или другую разметку.';
  }

  @override
  String get main_screen_suggest_spread =>
      'Какой расклад добавить? Напишите нам';

  @override
  String get main_screen_disclaimer =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String get month_january => 'Январь';

  @override
  String get month_february => 'Февраль';

  @override
  String get month_march => 'Март';

  @override
  String get month_april => 'Апрель';

  @override
  String get month_may => 'Май';

  @override
  String get month_june => 'Июнь';

  @override
  String get month_july => 'Июль';

  @override
  String get month_august => 'Август';

  @override
  String get month_september => 'Сентябрь';

  @override
  String get month_october => 'Октябрь';

  @override
  String get month_november => 'Ноябрь';

  @override
  String get month_december => 'Декабрь';

  @override
  String get fun_share_button => 'Поделиться';

  @override
  String get fun_new_spread_button => 'Новый расклад';
}
