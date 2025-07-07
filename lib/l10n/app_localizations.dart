import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_af.dart';
import 'app_localizations_am.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_az.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gl.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_hy.dart';
import 'app_localizations_id.dart';
import 'app_localizations_is.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ka.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_km.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ky.dart';
import 'app_localizations_lo.dart';
import 'app_localizations_lt.dart';
import 'app_localizations_lv.dart';
import 'app_localizations_mk.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mn.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_my.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_no.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_rm.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_si.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sl.dart';
import 'app_localizations_sq.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';
import 'app_localizations_zu.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ru'),
    Locale('af'),
    Locale('am'),
    Locale('ar'),
    Locale('az'),
    Locale('az', 'AZ'),
    Locale('bg'),
    Locale('bn'),
    Locale('bn', 'BD'),
    Locale('ca'),
    Locale('cs'),
    Locale('cs', 'CZ'),
    Locale('de'),
    Locale('de', 'DE'),
    Locale('en'),
    Locale('en', 'GB'),
    Locale('en', 'US'),
    Locale('es'),
    Locale('es', 'ES'),
    Locale('fa'),
    Locale('fi'),
    Locale('fi', 'FI'),
    Locale('fil'),
    Locale('fr'),
    Locale('fr', 'CA'),
    Locale('fr', 'FR'),
    Locale('gl'),
    Locale('gl', 'ES'),
    Locale('gu'),
    Locale('hi'),
    Locale('hi', 'IN'),
    Locale('hr'),
    Locale('hu'),
    Locale('hu', 'HU'),
    Locale('hy'),
    Locale('hy', 'AM'),
    Locale('id'),
    Locale('is'),
    Locale('is', 'IS'),
    Locale('it'),
    Locale('it', 'IT'),
    Locale('he'),
    Locale('he', 'IL'),
    Locale('ja'),
    Locale('ja', 'JP'),
    Locale('ka'),
    Locale('ka', 'GE'),
    Locale('kk'),
    Locale('km'),
    Locale('km', 'KH'),
    Locale('kn'),
    Locale('kn', 'IN'),
    Locale('ko'),
    Locale('ko', 'KR'),
    Locale('ky'),
    Locale('ky', 'KG'),
    Locale('lo'),
    Locale('lo', 'LA'),
    Locale('lt'),
    Locale('lv'),
    Locale('mk'),
    Locale('mk', 'MK'),
    Locale('ml'),
    Locale('ml', 'IN'),
    Locale('mn'),
    Locale('mn', 'MN'),
    Locale('mr'),
    Locale('mr', 'IN'),
    Locale('ms'),
    Locale('ms', 'MY'),
    Locale('my'),
    Locale('my', 'MM'),
    Locale('ne'),
    Locale('ne', 'NP'),
    Locale('nl'),
    Locale('nl', 'NL'),
    Locale('no'),
    Locale('no', 'NO'),
    Locale('pa'),
    Locale('pl'),
    Locale('pl', 'PL'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('pt', 'PT'),
    Locale('rm'),
    Locale('ro'),
    Locale('ru', 'RU'),
    Locale('si'),
    Locale('si', 'LK'),
    Locale('sk'),
    Locale('sl'),
    Locale('sq'),
    Locale('sr'),
    Locale('sv'),
    Locale('sv', 'SE'),
    Locale('sw'),
    Locale('ta'),
    Locale('ta', 'IN'),
    Locale('te'),
    Locale('te', 'IN'),
    Locale('th'),
    Locale('tr'),
    Locale('tr', 'TR'),
    Locale('uk'),
    Locale('ur'),
    Locale('vi'),
    Locale('zh'),
    Locale('zh', 'CN'),
    Locale('zh', 'HK'),
    Locale('zh', 'TW'),
    Locale('zu')
  ];

  /// No description provided for @main_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Гадай и изучай Таро'**
  String get main_title;

  /// No description provided for @your_name.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ваше имя'**
  String get your_name;

  /// No description provided for @personalization_hint.
  ///
  /// In ru_RU, this message translates to:
  /// **'Задавай вопросы AI Тарологу и получай персонализированные расклады'**
  String get personalization_hint;

  /// No description provided for @start_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'НАЧАТЬ'**
  String get start_button;

  /// No description provided for @language.
  ///
  /// In ru_RU, this message translates to:
  /// **'Язык'**
  String get language;

  /// No description provided for @continueBtn.
  ///
  /// In ru_RU, this message translates to:
  /// **'Продолжить'**
  String get continueBtn;

  /// No description provided for @card_of_the_day.
  ///
  /// In ru_RU, this message translates to:
  /// **'Карта дня'**
  String get card_of_the_day;

  /// No description provided for @description.
  ///
  /// In ru_RU, this message translates to:
  /// **'Описание'**
  String get description;

  /// No description provided for @spreads.
  ///
  /// In ru_RU, this message translates to:
  /// **'Расклады'**
  String get spreads;

  /// No description provided for @quick_spread.
  ///
  /// In ru_RU, this message translates to:
  /// **'Быстрый расклад'**
  String get quick_spread;

  /// No description provided for @classic_spreads.
  ///
  /// In ru_RU, this message translates to:
  /// **'Классические расклады'**
  String get classic_spreads;

  /// No description provided for @thematic_spreads.
  ///
  /// In ru_RU, this message translates to:
  /// **'Тематические расклады'**
  String get thematic_spreads;

  /// No description provided for @card_combination.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сочетание карт'**
  String get card_combination;

  /// No description provided for @card_meanings.
  ///
  /// In ru_RU, this message translates to:
  /// **'Значения карт'**
  String get card_meanings;

  /// No description provided for @training.
  ///
  /// In ru_RU, this message translates to:
  /// **'Обучение'**
  String get training;

  /// No description provided for @welcome.
  ///
  /// In ru_RU, this message translates to:
  /// **'Добро пожаловать'**
  String get welcome;

  /// No description provided for @today.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сегодня'**
  String get today;

  /// No description provided for @view.
  ///
  /// In ru_RU, this message translates to:
  /// **'Смотреть'**
  String get view;

  /// No description provided for @select_card.
  ///
  /// In ru_RU, this message translates to:
  /// **'Выберите карту'**
  String get select_card;

  /// No description provided for @please_select_cards.
  ///
  /// In ru_RU, this message translates to:
  /// **'Пожалуйста, выберите разные карты во всех полях.'**
  String get please_select_cards;

  /// No description provided for @good_day.
  ///
  /// In ru_RU, this message translates to:
  /// **'Хорошего дня,\nВыберите карты, чтобы узнать их сочетание и значение'**
  String get good_day;

  /// No description provided for @language_hint.
  ///
  /// In ru_RU, this message translates to:
  /// **'Для полной персонализации раскладов'**
  String get language_hint;

  /// No description provided for @quickReading.
  ///
  /// In ru_RU, this message translates to:
  /// **'Быстрый расклад'**
  String get quickReading;

  /// No description provided for @comingSoon.
  ///
  /// In ru_RU, this message translates to:
  /// **'Скоро будет доступно'**
  String get comingSoon;

  /// No description provided for @onboarding_notifications_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'🔔 Хотите не пропускать «Карту дня» и новые расклады?'**
  String get onboarding_notifications_title;

  /// No description provided for @onboarding_notifications_subtitle.
  ///
  /// In ru_RU, this message translates to:
  /// **'Пожалуйста согласитесь на отправку уведомлений (без спама).'**
  String get onboarding_notifications_subtitle;

  /// No description provided for @onboarding_notifications_allow.
  ///
  /// In ru_RU, this message translates to:
  /// **'СОГЛАСИТЬСЯ'**
  String get onboarding_notifications_allow;

  /// No description provided for @onboarding_notifications_decline.
  ///
  /// In ru_RU, this message translates to:
  /// **'ОТКАЗАТЬСЯ'**
  String get onboarding_notifications_decline;

  /// No description provided for @suggested_questions_chat_1.
  ///
  /// In ru_RU, this message translates to:
  /// **'Расскажите мне о моей любовной жизни'**
  String get suggested_questions_chat_1;

  /// No description provided for @suggested_questions_chat_2.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что произойдет в моей карьере?'**
  String get suggested_questions_chat_2;

  /// No description provided for @suggested_questions_chat_3.
  ///
  /// In ru_RU, this message translates to:
  /// **'Как я могу улучшить себя?'**
  String get suggested_questions_chat_3;

  /// No description provided for @suggested_questions_chat_4.
  ///
  /// In ru_RU, this message translates to:
  /// **'Какие возможности ждут меня в будущем?'**
  String get suggested_questions_chat_4;

  /// No description provided for @onboarding_final_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Все готово!'**
  String get onboarding_final_title;

  /// No description provided for @onboarding_final_subtitle.
  ///
  /// In ru_RU, this message translates to:
  /// **'Для поддержания работы проекта мы показываем рекламу. НО если не хотите, Вы можете подписаться'**
  String get onboarding_final_subtitle;

  /// No description provided for @onboarding_final_benefits.
  ///
  /// In ru_RU, this message translates to:
  /// **'Без рекламы\nРасклады без ограничений\nОбучение без ограничений'**
  String get onboarding_final_benefits;

  /// No description provided for @onboarding_final_yearly.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ежегодно'**
  String get onboarding_final_yearly;

  /// No description provided for @onboarding_final_badge.
  ///
  /// In ru_RU, this message translates to:
  /// **'Выгода 50%'**
  String get onboarding_final_badge;

  /// No description provided for @onboarding_final_yearly_price.
  ///
  /// In ru_RU, this message translates to:
  /// **'249/год'**
  String get onboarding_final_yearly_price;

  /// No description provided for @onboarding_final_yearly_month.
  ///
  /// In ru_RU, this message translates to:
  /// **'24/мес'**
  String get onboarding_final_yearly_month;

  /// No description provided for @onboarding_final_trial.
  ///
  /// In ru_RU, this message translates to:
  /// **'7 дней бесплатно'**
  String get onboarding_final_trial;

  /// No description provided for @onboarding_final_trial_price.
  ///
  /// In ru_RU, this message translates to:
  /// **'потом 9/мес'**
  String get onboarding_final_trial_price;

  /// No description provided for @onboarding_final_trial_month.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ежемесячно'**
  String get onboarding_final_trial_month;

  /// No description provided for @onboarding_final_note.
  ///
  /// In ru_RU, this message translates to:
  /// **'Подписка не обязательна и продлевается автоматически. Можете отменить в любое время'**
  String get onboarding_final_note;

  /// No description provided for @onboarding_final_choose_yearly.
  ///
  /// In ru_RU, this message translates to:
  /// **'Выбрать ежегодно'**
  String get onboarding_final_choose_yearly;

  /// No description provided for @onboarding_final_choose_trial.
  ///
  /// In ru_RU, this message translates to:
  /// **'Выбрать 7 дней бесплатно'**
  String get onboarding_final_choose_trial;

  /// No description provided for @onboarding_final_or.
  ///
  /// In ru_RU, this message translates to:
  /// **'ИЛИ'**
  String get onboarding_final_or;

  /// No description provided for @onboarding_final_continue_ads.
  ///
  /// In ru_RU, this message translates to:
  /// **'ПРОДОЛЖИТЬ С РЕКЛАМОЙ'**
  String get onboarding_final_continue_ads;

  /// No description provided for @main_screen_greeting.
  ///
  /// In ru_RU, this message translates to:
  /// **'Приветствую'**
  String get main_screen_greeting;

  /// No description provided for @main_screen_date_today.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сегодня, {date}'**
  String main_screen_date_today(Object date);

  /// No description provided for @main_screen_card_of_day_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ваша карта дня'**
  String get main_screen_card_of_day_title;

  /// No description provided for @main_screen_card_of_day_description.
  ///
  /// In ru_RU, this message translates to:
  /// **'Карта дня: {cardName}'**
  String main_screen_card_of_day_description(Object cardName);

  /// No description provided for @main_screen_card_of_day_description_empty.
  ///
  /// In ru_RU, this message translates to:
  /// **'Карта дня:'**
  String get main_screen_card_of_day_description_empty;

  /// No description provided for @main_screen_card_of_day_status_viewed.
  ///
  /// In ru_RU, this message translates to:
  /// **'Открыта'**
  String get main_screen_card_of_day_status_viewed;

  /// No description provided for @main_screen_card_of_day_status_view.
  ///
  /// In ru_RU, this message translates to:
  /// **'Посмотреть'**
  String get main_screen_card_of_day_status_view;

  /// No description provided for @main_screen_section_spreads.
  ///
  /// In ru_RU, this message translates to:
  /// **'Расклады'**
  String get main_screen_section_spreads;

  /// No description provided for @main_screen_section_training.
  ///
  /// In ru_RU, this message translates to:
  /// **'Обучение'**
  String get main_screen_section_training;

  /// No description provided for @main_screen_section_entertainment.
  ///
  /// In ru_RU, this message translates to:
  /// **'Развлечение'**
  String get main_screen_section_entertainment;

  /// No description provided for @main_screen_quick_spread_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Быстрый расклад'**
  String get main_screen_quick_spread_title;

  /// No description provided for @main_screen_quick_spread_description.
  ///
  /// In ru_RU, this message translates to:
  /// **'за пару касаний получите чёткий ответ на свой вопрос одной картой'**
  String get main_screen_quick_spread_description;

  /// No description provided for @main_screen_thematic_spreads_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Тематические расклады'**
  String get main_screen_thematic_spreads_title;

  /// No description provided for @main_screen_thematic_spreads_description.
  ///
  /// In ru_RU, this message translates to:
  /// **'готовые схемы для важных сфер: любовь, карьера, здоровье, путешествия'**
  String get main_screen_thematic_spreads_description;

  /// No description provided for @main_screen_card_combination_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сочетание карт'**
  String get main_screen_card_combination_title;

  /// No description provided for @main_screen_fun_spread_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Шуточный расклад'**
  String get main_screen_fun_spread_title;

  /// No description provided for @main_screen_fun_spread_description.
  ///
  /// In ru_RU, this message translates to:
  /// **'поднимите настроение, сделайте шуточный расклад и поделитесь в соц сетях'**
  String get main_screen_fun_spread_description;

  /// No description provided for @main_screen_love_badge.
  ///
  /// In ru_RU, this message translates to:
  /// **'ЛЮБОВЬ'**
  String get main_screen_love_badge;

  /// No description provided for @card_combination_screen_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сочетание карт'**
  String get card_combination_screen_title;

  /// No description provided for @card_combination_screen_greeting.
  ///
  /// In ru_RU, this message translates to:
  /// **'Добрый день, выберите карты, чтобы узнать сочетание и значение'**
  String get card_combination_screen_greeting;

  /// No description provided for @card_combination_screen_card_hint.
  ///
  /// In ru_RU, this message translates to:
  /// **'Карта'**
  String get card_combination_screen_card_hint;

  /// No description provided for @card_combination_screen_get_combination_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Узнать сочетание'**
  String get card_combination_screen_get_combination_button;

  /// No description provided for @card_combination_screen_new_spread_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сделать новый расклад'**
  String get card_combination_screen_new_spread_button;

  /// No description provided for @card_combination_screen_fill_all_fields_error.
  ///
  /// In ru_RU, this message translates to:
  /// **'Пожалуйста, заполните все полей карт.'**
  String get card_combination_screen_fill_all_fields_error;

  /// No description provided for @card_combination_screen_invalid_cards_error.
  ///
  /// In ru_RU, this message translates to:
  /// **'Пожалуйста, выберите карты только из предложенного списка. Неверные карты:'**
  String get card_combination_screen_invalid_cards_error;

  /// No description provided for @card_combination_screen_duplicate_cards_error.
  ///
  /// In ru_RU, this message translates to:
  /// **'Пожалуйста, выберите разные карты во всех полях.'**
  String get card_combination_screen_duplicate_cards_error;

  /// No description provided for @card_combination_screen_general_error.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ошибка: не удалось получить ответ. Попробуйте еще раз.'**
  String get card_combination_screen_general_error;

  /// No description provided for @card_combination_screen_disclaimer.
  ///
  /// In ru_RU, this message translates to:
  /// **'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.'**
  String get card_combination_screen_disclaimer;

  /// No description provided for @card_combination_screen_prompt.
  ///
  /// In ru_RU, this message translates to:
  /// **'Проанализируй сочетание карт Таро: {cards}. Дай глубокий мистический анализ их взаимодействия и общий совет. Ответ полностью на языке {lang}. Без приветствий и заключений.'**
  String card_combination_screen_prompt(Object cards, Object lang);

  /// No description provided for @quick_reading_screen_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Быстрый расклад'**
  String get quick_reading_screen_title;

  /// No description provided for @quick_reading_screen_select_card.
  ///
  /// In ru_RU, this message translates to:
  /// **'Выберите карту'**
  String get quick_reading_screen_select_card;

  /// No description provided for @quick_reading_screen_get_answer_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Узнать ответ'**
  String get quick_reading_screen_get_answer_button;

  /// No description provided for @quick_reading_screen_what_is_quick_spread.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что такое быстрый расклад?'**
  String get quick_reading_screen_what_is_quick_spread;

  /// No description provided for @quick_reading_screen_quick_spread_explanation.
  ///
  /// In ru_RU, this message translates to:
  /// **'Быстрый расклад — это экспресс расклад (ответ: ДА или НЕТ) который помогает мгновенно получить ясный ответ на конкретный вопрос или общую атмосферу дня. Идеально, когда нужно быстрое вдохновение или совет «здесь и сейчас».'**
  String get quick_reading_screen_quick_spread_explanation;

  /// No description provided for @quick_reading_screen_understand_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Понятно'**
  String get quick_reading_screen_understand_button;

  /// No description provided for @quick_reading_result_screen_generating_response.
  ///
  /// In ru_RU, this message translates to:
  /// **'Генерация ответа...'**
  String get quick_reading_result_screen_generating_response;

  /// No description provided for @quick_reading_result_screen_error_generating.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ошибка при генерации ответа: {error}'**
  String quick_reading_result_screen_error_generating(Object error);

  /// No description provided for @quick_reading_result_screen_error_generating_response.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ошибка при генерации ответа: {e}'**
  String quick_reading_result_screen_error_generating_response(Object e);

  /// No description provided for @quick_reading_result_screen_what_is_quick_spread.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что такое быстрый расклад?'**
  String get quick_reading_result_screen_what_is_quick_spread;

  /// No description provided for @quick_reading_result_screen_quick_spread_explanation.
  ///
  /// In ru_RU, this message translates to:
  /// **'Быстрый расклад — это экспресс расклад (ответ: ДА или НЕТ) который помогает мгновенно получить ясный ответ на конкретный вопрос или общую атмосферу дня. Идеально, когда нужно быстрое вдохновение или совет «здесь и сейчас».'**
  String get quick_reading_result_screen_quick_spread_explanation;

  /// No description provided for @quick_reading_result_screen_understand_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Понятно'**
  String get quick_reading_result_screen_understand_button;

  /// No description provided for @quick_reading_result_screen_quick_spread_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Быстрый расклад'**
  String get quick_reading_result_screen_quick_spread_title;

  /// No description provided for @quick_reading_result_screen_new_spread_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Новый расклад'**
  String get quick_reading_result_screen_new_spread_button;

  /// No description provided for @quick_reading_result_screen_disclaimer.
  ///
  /// In ru_RU, this message translates to:
  /// **'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.'**
  String get quick_reading_result_screen_disclaimer;

  /// No description provided for @quick_reading_result_screen_prompt.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ты опытный таролог. Пользователь {userName} вытянул карту — {cardName}. Сначала напиши с новой строки фразу: Ответ карт: и далее одним словом ответ «Да» или «Нет». Потом добавь связное толкование 120–150 слов: 7–8 предложений о том, почему энергия {userName} ведёт к такому ответу и что это значит лично для {cardName}. Упомяни имя {cardName} минимум два раза, вставь 1–2 тематических эмодзи, избегай символов *, # и любой разметки; пиши простым разговорным тоном.'**
  String quick_reading_result_screen_prompt(Object cardName, Object userName);

  /// No description provided for @career_finance_spread_screen_request_accepted.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ваш запрос принят. Пожалуйста, откройте карты'**
  String get career_finance_spread_screen_request_accepted;

  /// No description provided for @career_finance_spread_screen_error_getting_value.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ошибка при получении значения расклада. Попробуйте ещё раз.'**
  String get career_finance_spread_screen_error_getting_value;

  /// No description provided for @career_finance_spread_screen_what_is_career_finance.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что такое расклад Карьера и финансы?'**
  String get career_finance_spread_screen_what_is_career_finance;

  /// No description provided for @career_finance_spread_screen_career_finance_explanation.
  ///
  /// In ru_RU, this message translates to:
  /// **'Этот расклад помогает проанализировать профессиональную и финансовую сферу. Вы узнаете о возможностях, препятствиях и перспективах роста.'**
  String get career_finance_spread_screen_career_finance_explanation;

  /// No description provided for @career_finance_spread_screen_understand_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Понятно'**
  String get career_finance_spread_screen_understand_button;

  /// No description provided for @career_finance_spread_screen_learn_meaning_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Узнать значение'**
  String get career_finance_spread_screen_learn_meaning_button;

  /// No description provided for @career_finance_spread_screen_career_finance_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Карьера и финансы'**
  String get career_finance_spread_screen_career_finance_title;

  /// No description provided for @career_finance_spread_screen_new_spread_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сделать новый расклад'**
  String get career_finance_spread_screen_new_spread_button;

  /// No description provided for @career_finance_spread_screen_disclaimer.
  ///
  /// In ru_RU, this message translates to:
  /// **'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.'**
  String get career_finance_spread_screen_disclaimer;

  /// No description provided for @career_finance_spread_screen_enter_question_hint.
  ///
  /// In ru_RU, this message translates to:
  /// **'Введите ваш вопрос...'**
  String get career_finance_spread_screen_enter_question_hint;

  /// No description provided for @pros_cons_spread_screen_what_is_pros_cons.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что такое расклад \"За и Против\"?'**
  String get pros_cons_spread_screen_what_is_pros_cons;

  /// No description provided for @pros_cons_spread_screen_pros_cons_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Расклад \"За и Против\"'**
  String get pros_cons_spread_screen_pros_cons_title;

  /// No description provided for @pros_cons_spread_screen_enter_question_hint.
  ///
  /// In ru_RU, this message translates to:
  /// **'Введите ваш вопрос...'**
  String get pros_cons_spread_screen_enter_question_hint;

  /// No description provided for @self_development_balance_spread_screen_self_development_explanation.
  ///
  /// In ru_RU, this message translates to:
  /// **'Расклад \"Саморазвитие и баланс\" состоит из 7 карт, расположенных в форме круга. Каждая карта символизирует определённый аспект вашего духовного роста и внутренней гармонии.'**
  String
      get self_development_balance_spread_screen_self_development_explanation;

  /// No description provided for @card_meanings_screen_major_arcana.
  ///
  /// In ru_RU, this message translates to:
  /// **'Главные арканы'**
  String get card_meanings_screen_major_arcana;

  /// No description provided for @card_meanings_screen_wands.
  ///
  /// In ru_RU, this message translates to:
  /// **'Жезлы'**
  String get card_meanings_screen_wands;

  /// No description provided for @card_meanings_screen_cups.
  ///
  /// In ru_RU, this message translates to:
  /// **'Кубки'**
  String get card_meanings_screen_cups;

  /// No description provided for @card_meanings_screen_swords.
  ///
  /// In ru_RU, this message translates to:
  /// **'Мечи'**
  String get card_meanings_screen_swords;

  /// No description provided for @card_meanings_screen_pentacles.
  ///
  /// In ru_RU, this message translates to:
  /// **'Пентакли'**
  String get card_meanings_screen_pentacles;

  /// No description provided for @card_meanings_screen_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Значение карт'**
  String get card_meanings_screen_title;

  /// No description provided for @love_spread_screen_new_spread_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сделать новый расклад'**
  String get love_spread_screen_new_spread_button;

  /// No description provided for @love_spread_screen_enter_question_hint.
  ///
  /// In ru_RU, this message translates to:
  /// **'Введите ваш вопрос...'**
  String get love_spread_screen_enter_question_hint;

  /// No description provided for @purchase_love_screen_test_stub.
  ///
  /// In ru_RU, this message translates to:
  /// **'Тестовая заглушка: выбран тариф \"{plan}\"'**
  String purchase_love_screen_test_stub(Object plan);

  /// No description provided for @purchase_love_screen_love_tariff_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Тариф ЛЮБОВЬ'**
  String get purchase_love_screen_love_tariff_title;

  /// No description provided for @ad_promo_block_tariff.
  ///
  /// In ru_RU, this message translates to:
  /// **'ТАРИФ'**
  String get ad_promo_block_tariff;

  /// No description provided for @ad_promo_block_love.
  ///
  /// In ru_RU, this message translates to:
  /// **'ЛЮБОВЬ'**
  String get ad_promo_block_love;

  /// No description provided for @ad_promo_block_promotion_70.
  ///
  /// In ru_RU, this message translates to:
  /// **'АКЦИЯ -50%'**
  String get ad_promo_block_promotion_70;

  /// No description provided for @ad_promo_block_no_ads.
  ///
  /// In ru_RU, this message translates to:
  /// **'• без рекламы'**
  String get ad_promo_block_no_ads;

  /// No description provided for @ad_promo_block_no_limits.
  ///
  /// In ru_RU, this message translates to:
  /// **'• без ограничений'**
  String get ad_promo_block_no_limits;

  /// No description provided for @three_cards_screen_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'3 карты в раскладе'**
  String three_cards_screen_title(Object cards);

  /// No description provided for @three_cards_screen_initial_message.
  ///
  /// In ru_RU, this message translates to:
  /// **'Добрый день, пожалуйста, напишите ваш запрос ниже:'**
  String get three_cards_screen_initial_message;

  /// No description provided for @three_cards_screen_request_accepted.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ваш запрос принят. Пожалуйста, откройте карты'**
  String get three_cards_screen_request_accepted;

  /// No description provided for @three_cards_screen_suggested_questions_1.
  ///
  /// In ru_RU, this message translates to:
  /// **'Какая основная проблема у меня сейчас?'**
  String get three_cards_screen_suggested_questions_1;

  /// No description provided for @three_cards_screen_suggested_questions_2.
  ///
  /// In ru_RU, this message translates to:
  /// **'На чем мне стоит сосредоточиться в ближайшем будущем?'**
  String get three_cards_screen_suggested_questions_2;

  /// No description provided for @three_cards_screen_suggested_questions_3.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что скрыто от меня?'**
  String get three_cards_screen_suggested_questions_3;

  /// No description provided for @three_cards_screen_see_meaning_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Узнать значение'**
  String get three_cards_screen_see_meaning_button;

  /// No description provided for @three_cards_screen_new_spread_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Новый расклад'**
  String get three_cards_screen_new_spread_button;

  /// No description provided for @three_cards_screen_enter_question_hint.
  ///
  /// In ru_RU, this message translates to:
  /// **'Введите ваш запрос...'**
  String get three_cards_screen_enter_question_hint;

  /// No description provided for @three_cards_screen_what_is_three_cards.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что такое расклад на 3 карты?'**
  String get three_cards_screen_what_is_three_cards;

  /// No description provided for @three_cards_screen_three_cards_explanation.
  ///
  /// In ru_RU, this message translates to:
  /// **'Классический расклад, который показывает прошлое, настоящее и будущее вашей ситуации. Первая карта — прошлое, вторая — настоящее, третья — будущее.'**
  String get three_cards_screen_three_cards_explanation;

  /// No description provided for @three_cards_screen_understand_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Понятно'**
  String get three_cards_screen_understand_button;

  /// No description provided for @three_cards_screen_error_getting_value.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ошибка при получении значения расклада. Попробуйте ещё раз.'**
  String get three_cards_screen_error_getting_value;

  /// No description provided for @three_cards_screen_disclaimer.
  ///
  /// In ru_RU, this message translates to:
  /// **'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.'**
  String get three_cards_screen_disclaimer;

  /// No description provided for @five_cards_screen_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'5 карт в раскладе'**
  String get five_cards_screen_title;

  /// No description provided for @five_cards_screen_initial_message.
  ///
  /// In ru_RU, this message translates to:
  /// **'Добрый день, пожалуйста, напишите ваш запрос ниже:'**
  String get five_cards_screen_initial_message;

  /// No description provided for @five_cards_screen_request_accepted.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ваш запрос принят. Пожалуйста, откройте карты'**
  String get five_cards_screen_request_accepted;

  /// No description provided for @five_cards_screen_suggested_questions_1.
  ///
  /// In ru_RU, this message translates to:
  /// **'Какой путь мне выбрать?'**
  String get five_cards_screen_suggested_questions_1;

  /// No description provided for @five_cards_screen_suggested_questions_2.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что мешает мне достичь цели?'**
  String get five_cards_screen_suggested_questions_2;

  /// No description provided for @five_cards_screen_suggested_questions_3.
  ///
  /// In ru_RU, this message translates to:
  /// **'Какие возможности у меня есть?'**
  String get five_cards_screen_suggested_questions_3;

  /// No description provided for @five_cards_screen_see_meaning_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Узнать значение'**
  String get five_cards_screen_see_meaning_button;

  /// No description provided for @five_cards_screen_new_spread_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сделать новый расклад'**
  String get five_cards_screen_new_spread_button;

  /// No description provided for @five_cards_screen_enter_question_hint.
  ///
  /// In ru_RU, this message translates to:
  /// **'Введите ваш запрос...'**
  String get five_cards_screen_enter_question_hint;

  /// No description provided for @five_cards_screen_what_is_five_cards.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что такое расклад на 5 карт?'**
  String get five_cards_screen_what_is_five_cards;

  /// No description provided for @five_cards_screen_five_cards_explanation.
  ///
  /// In ru_RU, this message translates to:
  /// **'Расклад на 5 карт это компактная схема, которая раскрывает пять ключевых аспектов ситуации: прошлое, настоящее, скрытые влияния, помощника/препятствие и вероятный итог.'**
  String get five_cards_screen_five_cards_explanation;

  /// No description provided for @five_cards_screen_understand_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Понятно'**
  String get five_cards_screen_understand_button;

  /// No description provided for @five_cards_screen_error_getting_value.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ошибка при получении значения расклада. Попробуйте ещё раз.'**
  String get five_cards_screen_error_getting_value;

  /// No description provided for @five_cards_screen_disclaimer.
  ///
  /// In ru_RU, this message translates to:
  /// **'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.'**
  String get five_cards_screen_disclaimer;

  /// No description provided for @celtic_cross_screen_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Кельтский крест'**
  String get celtic_cross_screen_title;

  /// No description provided for @celtic_cross_screen_initial_message.
  ///
  /// In ru_RU, this message translates to:
  /// **'Добрый день, пожалуйста, напишите ваш запрос ниже:'**
  String get celtic_cross_screen_initial_message;

  /// No description provided for @celtic_cross_screen_suggested_questions_1.
  ///
  /// In ru_RU, this message translates to:
  /// **'Какая основная проблема у меня сейчас?'**
  String get celtic_cross_screen_suggested_questions_1;

  /// No description provided for @celtic_cross_screen_suggested_questions_2.
  ///
  /// In ru_RU, this message translates to:
  /// **'На чем мне стоит сосредоточиться в ближайшем будущем?'**
  String get celtic_cross_screen_suggested_questions_2;

  /// No description provided for @celtic_cross_screen_suggested_questions_3.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что скрыто от меня?'**
  String get celtic_cross_screen_suggested_questions_3;

  /// No description provided for @celtic_cross_screen_see_meaning_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Узнать значение'**
  String get celtic_cross_screen_see_meaning_button;

  /// No description provided for @celtic_cross_screen_new_spread_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сделать новый расклад'**
  String get celtic_cross_screen_new_spread_button;

  /// No description provided for @celtic_cross_screen_enter_question_hint.
  ///
  /// In ru_RU, this message translates to:
  /// **'Введите ваш запрос...'**
  String get celtic_cross_screen_enter_question_hint;

  /// No description provided for @celtic_cross_screen_what_is_celtic_cross_dialog.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что такое Кельтский крест?'**
  String get celtic_cross_screen_what_is_celtic_cross_dialog;

  /// No description provided for @celtic_cross_screen_celtic_cross_explanation_dialog.
  ///
  /// In ru_RU, this message translates to:
  /// **'«Кельтский крест» — это 10-карточный расклад, который подробно разбирает ситуацию со всех сторон: текущие обстоятельства, препятствия, внутренние и внешние влияния, а также ближайшую динамику и конечный исход. Карты выкладываются по порядку:\n\n1 - Ситуация — суть вопроса здесь-и-сейчас.\n2 - Вызов — то, что помогает или мешает продвинуться.\n3 - Подсознательное (корень) — скрытые мотивы и глубинные силы.\n4 - Недавнее прошлое — события, приведшие к текущему положению.\n5 - Сознательное (цель) — то, на чём сейчас сосредоточено внимание кверента.\n6 - Ближнее будущее — вероятное развитие в ближайшие недели.\n7 - «Я сам» — внутреннее состояние, ресурсы, отношение к вопросу.\n8 - Окружение — влияния людей и обстоятельств вокруг.\n9 - Надежды / страхи — ожидания, сомнения, сильные эмоции.\n10 - Итог — возможный исход, если тенденции сохранятся.\n\nЭтот расклад позволяет увидеть «большую картину»: где вы стоите, что мешает или помогает, какие скрытые импульсы работают за кулисами и куда всё движется дальше.\n\nСхема расклада представлена на изображении ниже.\n\n'**
  String get celtic_cross_screen_celtic_cross_explanation_dialog;

  /// No description provided for @celtic_cross_screen_celtic_cross_explanation_image.
  ///
  /// In ru_RU, this message translates to:
  /// **'assets/images/kelt.png'**
  String get celtic_cross_screen_celtic_cross_explanation_image;

  /// No description provided for @celtic_cross_screen_understand_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Понятно'**
  String get celtic_cross_screen_understand_button;

  /// No description provided for @celtic_cross_screen_please_open_cards.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ваш запрос принят. Пожалуйста, откройте карты'**
  String celtic_cross_screen_please_open_cards(Object cards);

  /// No description provided for @celtic_cross_screen_request_accepted.
  ///
  /// In ru_RU, this message translates to:
  /// **'Запрос принят, пожалуйста, откройте карты'**
  String celtic_cross_screen_request_accepted(Object cards);

  /// No description provided for @the_user.
  ///
  /// In ru_RU, this message translates to:
  /// **'пользователь'**
  String get the_user;

  /// No description provided for @good_day_please_write_your_question_below.
  ///
  /// In ru_RU, this message translates to:
  /// **'Добрый день, пожалуйста напишите Ваш запрос ниже'**
  String get good_day_please_write_your_question_below;

  /// No description provided for @errorGettingSpreadMeaning.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ошибка при получении значения расклада. Попробуйте ещё раз.'**
  String get errorGettingSpreadMeaning;

  /// No description provided for @errorGettingSpreadMeaningPleaseTryAgain.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ошибка при получении значения расклада. Попробуйте ещё раз.'**
  String get errorGettingSpreadMeaningPleaseTryAgain;

  /// No description provided for @seeMeaning.
  ///
  /// In ru_RU, this message translates to:
  /// **'Узнать значение'**
  String get seeMeaning;

  /// No description provided for @newSpread.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сделать новый расклад'**
  String get newSpread;

  /// No description provided for @enterYourQuestion.
  ///
  /// In ru_RU, this message translates to:
  /// **'Введите ваш вопрос...'**
  String get enterYourQuestion;

  /// No description provided for @enterQuestion.
  ///
  /// In ru_RU, this message translates to:
  /// **'Введите ваш вопрос...'**
  String get enterQuestion;

  /// No description provided for @makeTarotReadingFor.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сделай для '**
  String makeTarotReadingFor(Object lang);

  /// No description provided for @theUser.
  ///
  /// In ru_RU, this message translates to:
  /// **'пользователя'**
  String get theUser;

  /// No description provided for @onTheseThreeCards.
  ///
  /// In ru_RU, this message translates to:
  /// **' расклад на эти три карты: '**
  String onTheseThreeCards(Object userName);

  /// No description provided for @makeSelfDevelopmentAndBalanceTarotReadingFor.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сделай для {cards} расклад Саморазвитие и баланс'**
  String makeSelfDevelopmentAndBalanceTarotReadingFor(Object cards);

  /// No description provided for @getAnswer.
  ///
  /// In ru_RU, this message translates to:
  /// **'Узнать ответ'**
  String get getAnswer;

  /// No description provided for @aboutTheSpread.
  ///
  /// In ru_RU, this message translates to:
  /// **'О раскладе'**
  String get aboutTheSpread;

  /// No description provided for @aboutSpreadDescription.
  ///
  /// In ru_RU, this message translates to:
  /// **'Этот расклад помогает проанализировать ваш духовный рост и внутреннюю гармонию.'**
  String get aboutSpreadDescription;

  /// No description provided for @gotIt.
  ///
  /// In ru_RU, this message translates to:
  /// **'Понятно'**
  String get gotIt;

  /// No description provided for @selfDevelopmentAndBalance.
  ///
  /// In ru_RU, this message translates to:
  /// **'Саморазвитие и баланс'**
  String get selfDevelopmentAndBalance;

  /// No description provided for @appUsageDisclaimer.
  ///
  /// In ru_RU, this message translates to:
  /// **'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.'**
  String get appUsageDisclaimer;

  /// No description provided for @careerFinance.
  ///
  /// In ru_RU, this message translates to:
  /// **'Карьера и финансы'**
  String get careerFinance;

  /// No description provided for @fun_spread_screen_with_swear_words_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'С матом (18+)'**
  String get fun_spread_screen_with_swear_words_title;

  /// No description provided for @fun_spread_screen_with_swear_words_subtitle.
  ///
  /// In ru_RU, this message translates to:
  /// **'Для тех, кто любит острые ощущения'**
  String get fun_spread_screen_with_swear_words_subtitle;

  /// No description provided for @fun_spread_screen_without_swear_words_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Без мата'**
  String get fun_spread_screen_without_swear_words_title;

  /// No description provided for @fun_spread_screen_without_swear_words_subtitle.
  ///
  /// In ru_RU, this message translates to:
  /// **'Веселый расклад без матершинных слов'**
  String get fun_spread_screen_without_swear_words_subtitle;

  /// No description provided for @fun_spread_screen_generating.
  ///
  /// In ru_RU, this message translates to:
  /// **'Генерируем ваш расклад...'**
  String get fun_spread_screen_generating;

  /// No description provided for @card_name_the_fool.
  ///
  /// In ru_RU, this message translates to:
  /// **'Шут'**
  String get card_name_the_fool;

  /// No description provided for @card_name_the_magician.
  ///
  /// In ru_RU, this message translates to:
  /// **'Маг'**
  String get card_name_the_magician;

  /// No description provided for @card_name_the_high_priestess.
  ///
  /// In ru_RU, this message translates to:
  /// **'Верховная Жрица'**
  String get card_name_the_high_priestess;

  /// No description provided for @card_name_the_empress.
  ///
  /// In ru_RU, this message translates to:
  /// **'Императрица'**
  String get card_name_the_empress;

  /// No description provided for @card_name_the_emperor.
  ///
  /// In ru_RU, this message translates to:
  /// **'Император'**
  String get card_name_the_emperor;

  /// No description provided for @card_name_the_hierophant.
  ///
  /// In ru_RU, this message translates to:
  /// **'Иерофант'**
  String get card_name_the_hierophant;

  /// No description provided for @card_name_the_lovers.
  ///
  /// In ru_RU, this message translates to:
  /// **'Влюбленные'**
  String get card_name_the_lovers;

  /// No description provided for @card_name_the_chariot.
  ///
  /// In ru_RU, this message translates to:
  /// **'Колесница'**
  String get card_name_the_chariot;

  /// No description provided for @card_name_strength.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сила'**
  String get card_name_strength;

  /// No description provided for @card_name_the_hermit.
  ///
  /// In ru_RU, this message translates to:
  /// **'Отшельник'**
  String get card_name_the_hermit;

  /// No description provided for @ok_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'OK'**
  String get ok_button;

  /// No description provided for @cancel_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Отмена'**
  String get cancel_button;

  /// No description provided for @analyzing_cards.
  ///
  /// In ru_RU, this message translates to:
  /// **'Делаю разбор карт...'**
  String get analyzing_cards;

  /// No description provided for @yes_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Да'**
  String get yes_button;

  /// No description provided for @no_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Нет'**
  String get no_button;

  /// No description provided for @loading.
  ///
  /// In ru_RU, this message translates to:
  /// **'Загрузка...'**
  String get loading;

  /// No description provided for @error.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ошибка'**
  String get error;

  /// No description provided for @success.
  ///
  /// In ru_RU, this message translates to:
  /// **'Успешно'**
  String get success;

  /// No description provided for @failed.
  ///
  /// In ru_RU, this message translates to:
  /// **'Не удалось'**
  String get failed;

  /// No description provided for @language_russian.
  ///
  /// In ru_RU, this message translates to:
  /// **'Русский'**
  String get language_russian;

  /// No description provided for @language_english_us.
  ///
  /// In ru_RU, this message translates to:
  /// **'English (US)'**
  String get language_english_us;

  /// No description provided for @language_english_gb.
  ///
  /// In ru_RU, this message translates to:
  /// **'English (GB)'**
  String get language_english_gb;

  /// No description provided for @card_name_wheel_of_fortune.
  ///
  /// In ru_RU, this message translates to:
  /// **'Колесо Фортуны'**
  String get card_name_wheel_of_fortune;

  /// No description provided for @card_name_justice.
  ///
  /// In ru_RU, this message translates to:
  /// **'Справедливость'**
  String get card_name_justice;

  /// No description provided for @card_name_the_hanged_man.
  ///
  /// In ru_RU, this message translates to:
  /// **'Повешенный'**
  String get card_name_the_hanged_man;

  /// No description provided for @card_name_death.
  ///
  /// In ru_RU, this message translates to:
  /// **'Смерть'**
  String get card_name_death;

  /// No description provided for @card_name_temperance.
  ///
  /// In ru_RU, this message translates to:
  /// **'Умеренность'**
  String get card_name_temperance;

  /// No description provided for @card_name_the_devil.
  ///
  /// In ru_RU, this message translates to:
  /// **'Дьявол'**
  String get card_name_the_devil;

  /// No description provided for @card_name_the_tower.
  ///
  /// In ru_RU, this message translates to:
  /// **'Башня'**
  String get card_name_the_tower;

  /// No description provided for @card_name_the_star.
  ///
  /// In ru_RU, this message translates to:
  /// **'Звезда'**
  String get card_name_the_star;

  /// No description provided for @card_name_the_moon.
  ///
  /// In ru_RU, this message translates to:
  /// **'Луна'**
  String get card_name_the_moon;

  /// No description provided for @card_name_the_sun.
  ///
  /// In ru_RU, this message translates to:
  /// **'Солнце'**
  String get card_name_the_sun;

  /// No description provided for @card_name_judgement.
  ///
  /// In ru_RU, this message translates to:
  /// **'Суд'**
  String get card_name_judgement;

  /// No description provided for @card_name_the_world.
  ///
  /// In ru_RU, this message translates to:
  /// **'Мир'**
  String get card_name_the_world;

  /// No description provided for @card_name_ace_of_wands.
  ///
  /// In ru_RU, this message translates to:
  /// **'Туз Жезлов'**
  String get card_name_ace_of_wands;

  /// No description provided for @card_name_two_of_wands.
  ///
  /// In ru_RU, this message translates to:
  /// **'Двойка Жезлов'**
  String get card_name_two_of_wands;

  /// No description provided for @card_name_three_of_wands.
  ///
  /// In ru_RU, this message translates to:
  /// **'Тройка Жезлов'**
  String get card_name_three_of_wands;

  /// No description provided for @card_name_four_of_wands.
  ///
  /// In ru_RU, this message translates to:
  /// **'Четверка Жезлов'**
  String get card_name_four_of_wands;

  /// No description provided for @card_name_five_of_wands.
  ///
  /// In ru_RU, this message translates to:
  /// **'Пятерка Жезлов'**
  String get card_name_five_of_wands;

  /// No description provided for @card_name_six_of_wands.
  ///
  /// In ru_RU, this message translates to:
  /// **'Шестерка Жезлов'**
  String get card_name_six_of_wands;

  /// No description provided for @card_name_seven_of_wands.
  ///
  /// In ru_RU, this message translates to:
  /// **'Семерка Жезлов'**
  String get card_name_seven_of_wands;

  /// No description provided for @card_name_eight_of_wands.
  ///
  /// In ru_RU, this message translates to:
  /// **'Восьмерка Жезлов'**
  String get card_name_eight_of_wands;

  /// No description provided for @card_name_nine_of_wands.
  ///
  /// In ru_RU, this message translates to:
  /// **'Девятка Жезлов'**
  String get card_name_nine_of_wands;

  /// No description provided for @card_name_ten_of_wands.
  ///
  /// In ru_RU, this message translates to:
  /// **'Десятка Жезлов'**
  String get card_name_ten_of_wands;

  /// No description provided for @card_name_page_of_wands.
  ///
  /// In ru_RU, this message translates to:
  /// **'Паж Жезлов'**
  String get card_name_page_of_wands;

  /// No description provided for @card_name_knight_of_wands.
  ///
  /// In ru_RU, this message translates to:
  /// **'Рыцарь Жезлов'**
  String get card_name_knight_of_wands;

  /// No description provided for @card_name_queen_of_wands.
  ///
  /// In ru_RU, this message translates to:
  /// **'Королева Жезлов'**
  String get card_name_queen_of_wands;

  /// No description provided for @card_name_king_of_wands.
  ///
  /// In ru_RU, this message translates to:
  /// **'Король Жезлов'**
  String get card_name_king_of_wands;

  /// No description provided for @card_name_ace_of_cups.
  ///
  /// In ru_RU, this message translates to:
  /// **'Туз Кубков'**
  String get card_name_ace_of_cups;

  /// No description provided for @card_name_two_of_cups.
  ///
  /// In ru_RU, this message translates to:
  /// **'Двойка Кубков'**
  String get card_name_two_of_cups;

  /// No description provided for @card_name_three_of_cups.
  ///
  /// In ru_RU, this message translates to:
  /// **'Тройка Кубков'**
  String get card_name_three_of_cups;

  /// No description provided for @card_name_four_of_cups.
  ///
  /// In ru_RU, this message translates to:
  /// **'Четверка Кубков'**
  String get card_name_four_of_cups;

  /// No description provided for @card_name_five_of_cups.
  ///
  /// In ru_RU, this message translates to:
  /// **'Пятерка Кубков'**
  String get card_name_five_of_cups;

  /// No description provided for @card_name_six_of_cups.
  ///
  /// In ru_RU, this message translates to:
  /// **'Шестерка Кубков'**
  String get card_name_six_of_cups;

  /// No description provided for @card_name_seven_of_cups.
  ///
  /// In ru_RU, this message translates to:
  /// **'Семерка Кубков'**
  String get card_name_seven_of_cups;

  /// No description provided for @card_name_eight_of_cups.
  ///
  /// In ru_RU, this message translates to:
  /// **'Восьмерка Кубков'**
  String get card_name_eight_of_cups;

  /// No description provided for @card_name_nine_of_cups.
  ///
  /// In ru_RU, this message translates to:
  /// **'Девятка Кубков'**
  String get card_name_nine_of_cups;

  /// No description provided for @card_name_ten_of_cups.
  ///
  /// In ru_RU, this message translates to:
  /// **'Десятка Кубков'**
  String get card_name_ten_of_cups;

  /// No description provided for @card_name_page_of_cups.
  ///
  /// In ru_RU, this message translates to:
  /// **'Паж Кубков'**
  String get card_name_page_of_cups;

  /// No description provided for @card_name_knight_of_cups.
  ///
  /// In ru_RU, this message translates to:
  /// **'Рыцарь Кубков'**
  String get card_name_knight_of_cups;

  /// No description provided for @card_name_queen_of_cups.
  ///
  /// In ru_RU, this message translates to:
  /// **'Королева Кубков'**
  String get card_name_queen_of_cups;

  /// No description provided for @card_name_king_of_cups.
  ///
  /// In ru_RU, this message translates to:
  /// **'Король Кубков'**
  String get card_name_king_of_cups;

  /// No description provided for @card_name_ace_of_swords.
  ///
  /// In ru_RU, this message translates to:
  /// **'Туз Мечей'**
  String get card_name_ace_of_swords;

  /// No description provided for @card_name_two_of_swords.
  ///
  /// In ru_RU, this message translates to:
  /// **'Двойка Мечей'**
  String get card_name_two_of_swords;

  /// No description provided for @card_name_three_of_swords.
  ///
  /// In ru_RU, this message translates to:
  /// **'Тройка Мечей'**
  String get card_name_three_of_swords;

  /// No description provided for @card_name_four_of_swords.
  ///
  /// In ru_RU, this message translates to:
  /// **'Четверка Мечей'**
  String get card_name_four_of_swords;

  /// No description provided for @card_name_five_of_swords.
  ///
  /// In ru_RU, this message translates to:
  /// **'Пятерка Мечей'**
  String get card_name_five_of_swords;

  /// No description provided for @card_name_six_of_swords.
  ///
  /// In ru_RU, this message translates to:
  /// **'Шестерка Мечей'**
  String get card_name_six_of_swords;

  /// No description provided for @card_name_seven_of_swords.
  ///
  /// In ru_RU, this message translates to:
  /// **'Семерка Мечей'**
  String get card_name_seven_of_swords;

  /// No description provided for @card_name_eight_of_swords.
  ///
  /// In ru_RU, this message translates to:
  /// **'Восьмерка Мечей'**
  String get card_name_eight_of_swords;

  /// No description provided for @card_name_nine_of_swords.
  ///
  /// In ru_RU, this message translates to:
  /// **'Девятка Мечей'**
  String get card_name_nine_of_swords;

  /// No description provided for @card_name_ten_of_swords.
  ///
  /// In ru_RU, this message translates to:
  /// **'Десятка Мечей'**
  String get card_name_ten_of_swords;

  /// No description provided for @card_name_page_of_swords.
  ///
  /// In ru_RU, this message translates to:
  /// **'Паж Мечей'**
  String get card_name_page_of_swords;

  /// No description provided for @card_name_knight_of_swords.
  ///
  /// In ru_RU, this message translates to:
  /// **'Рыцарь Мечей'**
  String get card_name_knight_of_swords;

  /// No description provided for @card_name_queen_of_swords.
  ///
  /// In ru_RU, this message translates to:
  /// **'Королева Мечей'**
  String get card_name_queen_of_swords;

  /// No description provided for @card_name_king_of_swords.
  ///
  /// In ru_RU, this message translates to:
  /// **'Король Мечей'**
  String get card_name_king_of_swords;

  /// No description provided for @card_name_ace_of_pentacles.
  ///
  /// In ru_RU, this message translates to:
  /// **'Туз Пентаклей'**
  String get card_name_ace_of_pentacles;

  /// No description provided for @card_name_two_of_pentacles.
  ///
  /// In ru_RU, this message translates to:
  /// **'Двойка Пентаклей'**
  String get card_name_two_of_pentacles;

  /// No description provided for @card_name_three_of_pentacles.
  ///
  /// In ru_RU, this message translates to:
  /// **'Тройка Пентаклей'**
  String get card_name_three_of_pentacles;

  /// No description provided for @card_name_four_of_pentacles.
  ///
  /// In ru_RU, this message translates to:
  /// **'Четверка Пентаклей'**
  String get card_name_four_of_pentacles;

  /// No description provided for @card_name_five_of_pentacles.
  ///
  /// In ru_RU, this message translates to:
  /// **'Пятерка Пентаклей'**
  String get card_name_five_of_pentacles;

  /// No description provided for @card_name_six_of_pentacles.
  ///
  /// In ru_RU, this message translates to:
  /// **'Шестерка Пентаклей'**
  String get card_name_six_of_pentacles;

  /// No description provided for @card_name_seven_of_pentacles.
  ///
  /// In ru_RU, this message translates to:
  /// **'Семерка Пентаклей'**
  String get card_name_seven_of_pentacles;

  /// No description provided for @card_name_eight_of_pentacles.
  ///
  /// In ru_RU, this message translates to:
  /// **'Восьмерка Пентаклей'**
  String get card_name_eight_of_pentacles;

  /// No description provided for @card_name_nine_of_pentacles.
  ///
  /// In ru_RU, this message translates to:
  /// **'Девятка Пентаклей'**
  String get card_name_nine_of_pentacles;

  /// No description provided for @card_name_ten_of_pentacles.
  ///
  /// In ru_RU, this message translates to:
  /// **'Десятка Пентаклей'**
  String get card_name_ten_of_pentacles;

  /// No description provided for @card_name_page_of_pentacles.
  ///
  /// In ru_RU, this message translates to:
  /// **'Паж Пентаклей'**
  String get card_name_page_of_pentacles;

  /// No description provided for @card_name_knight_of_pentacles.
  ///
  /// In ru_RU, this message translates to:
  /// **'Рыцарь Пентаклей'**
  String get card_name_knight_of_pentacles;

  /// No description provided for @card_name_queen_of_pentacles.
  ///
  /// In ru_RU, this message translates to:
  /// **'Королева Пентаклей'**
  String get card_name_queen_of_pentacles;

  /// No description provided for @card_name_king_of_pentacles.
  ///
  /// In ru_RU, this message translates to:
  /// **'Король Пентаклей'**
  String get card_name_king_of_pentacles;

  /// No description provided for @quick_reading_screen_suggested_questions_1.
  ///
  /// In ru_RU, this message translates to:
  /// **'Стоит ли мне это делать?'**
  String get quick_reading_screen_suggested_questions_1;

  /// No description provided for @quick_reading_screen_suggested_questions_2.
  ///
  /// In ru_RU, this message translates to:
  /// **'Правильный ли это путь?'**
  String get quick_reading_screen_suggested_questions_2;

  /// No description provided for @quick_reading_screen_suggested_questions_3.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что мне нужно знать?'**
  String get quick_reading_screen_suggested_questions_3;

  /// No description provided for @monthly_forecast_spread_screen_see_meaning_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Узнать значение'**
  String get monthly_forecast_spread_screen_see_meaning_button;

  /// No description provided for @monthly_forecast_spread_screen_new_spread_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сделать новый расклад'**
  String get monthly_forecast_spread_screen_new_spread_button;

  /// No description provided for @monthly_forecast_spread_screen_enter_question_hint.
  ///
  /// In ru_RU, this message translates to:
  /// **'Введите ваш запрос...'**
  String get monthly_forecast_spread_screen_enter_question_hint;

  /// No description provided for @monthly_forecast_spread_screen_what_is_monthly_forecast.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что такое месячный прогноз?'**
  String get monthly_forecast_spread_screen_what_is_monthly_forecast;

  /// No description provided for @monthly_forecast_spread_screen_monthly_forecast_explanation.
  ///
  /// In ru_RU, this message translates to:
  /// **'Месячный прогноз показывает основные события и тенденции на ближайший месяц. Помогает подготовиться к изменениям и использовать возможности.'**
  String get monthly_forecast_spread_screen_monthly_forecast_explanation;

  /// No description provided for @monthly_forecast_spread_screen_understand_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Понятно'**
  String get monthly_forecast_spread_screen_understand_button;

  /// No description provided for @monthly_forecast_spread_screen_error_getting_value.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ошибка при получении значения расклада. Попробуйте ещё раз.'**
  String get monthly_forecast_spread_screen_error_getting_value;

  /// No description provided for @monthly_forecast_spread_screen_disclaimer.
  ///
  /// In ru_RU, this message translates to:
  /// **'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.'**
  String get monthly_forecast_spread_screen_disclaimer;

  /// No description provided for @self_development_balance_spread_screen_prompt.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сделай для {userName} расклад на саморазвитие и баланс по этим трем картам: {cards}'**
  String self_development_balance_spread_screen_prompt(
      Object cards, Object userName);

  /// No description provided for @error_getting_answer_try_again.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ошибка: не удалось получить ответ. Попробуйте еще раз.'**
  String get error_getting_answer_try_again;

  /// No description provided for @card_detail_screen_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Детали карты'**
  String get card_detail_screen_title;

  /// No description provided for @card_detail_screen_general_meaning.
  ///
  /// In ru_RU, this message translates to:
  /// **'Общее значение'**
  String get card_detail_screen_general_meaning;

  /// No description provided for @card_detail_screen_reversed_meaning.
  ///
  /// In ru_RU, this message translates to:
  /// **'Перевернутое значение'**
  String get card_detail_screen_reversed_meaning;

  /// No description provided for @card_detail_screen_symbolism.
  ///
  /// In ru_RU, this message translates to:
  /// **'Символизм'**
  String get card_detail_screen_symbolism;

  /// No description provided for @card_detail_screen_error_loading_text.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ошибка загрузки текста'**
  String get card_detail_screen_error_loading_text;

  /// No description provided for @card_detail_screen_general_meaning_prompt.
  ///
  /// In ru_RU, this message translates to:
  /// **'Опиши общее значение карты Таро \"{cardName}\" на языке {lang}. Включи историю, символику и основные значения.'**
  String card_detail_screen_general_meaning_prompt(
      Object cardName, Object lang);

  /// No description provided for @card_detail_screen_reversed_meaning_prompt.
  ///
  /// In ru_RU, this message translates to:
  /// **'Опиши перевернутое значение карты Таро \"{cardName}\" на языке {lang}. Включи противоположные значения и предупреждения.'**
  String card_detail_screen_reversed_meaning_prompt(
      Object cardName, Object lang);

  /// No description provided for @card_detail_screen_symbolism_prompt.
  ///
  /// In ru_RU, this message translates to:
  /// **'Опиши символизм карты Таро \"{cardName}\" на языке {lang}. Включи детали изображения, цвета и их значения.'**
  String card_detail_screen_symbolism_prompt(Object cardName, Object lang);

  /// No description provided for @card_detail_screen_description.
  ///
  /// In ru_RU, this message translates to:
  /// **'Описание карты {cardName}'**
  String card_detail_screen_description(Object cardName);

  /// No description provided for @card_detail_screen_see_other_card_meaning.
  ///
  /// In ru_RU, this message translates to:
  /// **'Посмотреть значение другой карты'**
  String get card_detail_screen_see_other_card_meaning;

  /// No description provided for @card_detail_screen_or.
  ///
  /// In ru_RU, this message translates to:
  /// **'или'**
  String get card_detail_screen_or;

  /// No description provided for @card_detail_screen_loading_language.
  ///
  /// In ru_RU, this message translates to:
  /// **'Загрузка языка...'**
  String get card_detail_screen_loading_language;

  /// No description provided for @card_detail_screen_see_card_meaning.
  ///
  /// In ru_RU, this message translates to:
  /// **'Посмотреть значение карты'**
  String get card_detail_screen_see_card_meaning;

  /// No description provided for @card_detail_screen_original_waite_text.
  ///
  /// In ru_RU, this message translates to:
  /// **'Оригинальный текст Уэйта'**
  String get card_detail_screen_original_waite_text;

  /// No description provided for @card_detail_screen_no_original_text.
  ///
  /// In ru_RU, this message translates to:
  /// **'Нет оригинального текста'**
  String get card_detail_screen_no_original_text;

  /// No description provided for @card_of_the_day_screen_translate_card_name_prompt.
  ///
  /// In ru_RU, this message translates to:
  /// **'Переведи название карты Таро \"{cardName}\" на {languageCode}. Ответ должен содержать только переведенное название, без дополнительного текста или знаков препинания.'**
  String card_of_the_day_screen_translate_card_name_prompt(
      Object cardName, Object languageCode);

  /// No description provided for @card_of_the_day_screen_generate_description_prompt.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ты профессиональный таролог. Напиши вдохновляющее сообщение «Карта дня» на языке этого запроса для пользователя {name}. Соблюдай структуру и объём.\n\n🌟 {name}, твоя карта дня — {cardName}!\n\n🔑 Ключевые слова: <укажи 3–5 коротких keywords>\n\n🃏 Значение (≈45–50 слов): опиши основную энергию карты и как она проявится сегодня у {name}.\n\n💡 Совет (≈35–40 слов): предложи конкретное действие или настрой, который поможет {name} использовать эту энергию.\n\n✨ Аффирмация (1 строка): позитивное утверждение, начинающееся с «Я…».\n\nТребования: общая длина 120–150 слов, тёплый эзотерический тон, 3–4 тематических эмодзи, никаких списков в HTML/Markdown; абзацы разделяй двойным переносом строки (\\n\\n).'**
  String card_of_the_day_screen_generate_description_prompt(
      Object cardName, Object name);

  /// No description provided for @card_of_the_day_screen_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Карта дня'**
  String get card_of_the_day_screen_title;

  /// No description provided for @card_of_the_day_screen_error_loading_card.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ошибка загрузки карты'**
  String get card_of_the_day_screen_error_loading_card;

  /// No description provided for @career_finance_spread_screen_prompt.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сделай для {userName} расклад на карьеру и финансы по этим трем картам: {cards}'**
  String career_finance_spread_screen_prompt(Object cards, Object userName);

  /// No description provided for @contact_us_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Напишите нам'**
  String get contact_us_title;

  /// No description provided for @contact_us_email_hint.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ваш e-mail'**
  String get contact_us_email_hint;

  /// No description provided for @contact_us_email_empty.
  ///
  /// In ru_RU, this message translates to:
  /// **'Введите e-mail'**
  String get contact_us_email_empty;

  /// No description provided for @contact_us_email_invalid.
  ///
  /// In ru_RU, this message translates to:
  /// **'Некорректный e-mail'**
  String get contact_us_email_invalid;

  /// No description provided for @contact_us_message_hint.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ваше сообщение'**
  String get contact_us_message_hint;

  /// No description provided for @contact_us_message_empty.
  ///
  /// In ru_RU, this message translates to:
  /// **'Введите сообщение'**
  String get contact_us_message_empty;

  /// No description provided for @contact_us_send_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Отправить'**
  String get contact_us_send_button;

  /// No description provided for @five_cards_spread_screen_what_is_five_cards_dialog.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что такое расклад на 5 карт?'**
  String get five_cards_spread_screen_what_is_five_cards_dialog;

  /// No description provided for @five_cards_spread_screen_five_cards_explanation_dialog.
  ///
  /// In ru_RU, this message translates to:
  /// **'Этот расклад раскрывает весь путь вашего вопроса:\nКарта 1 - Прошлое показывает исходные обстоятельства,\nКарта 2 - Настоящее — текущую энергию,\nКарта 3 - Скрытое выявляет скрытые влияния,\nКарта 4 - Совет подсказывает оптимальное действие,\nКарта 5 - Итог предсказывает вероятный результат.'**
  String get five_cards_spread_screen_five_cards_explanation_dialog;

  /// No description provided for @five_cards_spread_screen_understand_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Понятно'**
  String get five_cards_spread_screen_understand_button;

  /// No description provided for @language_selection_screen_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Язык'**
  String get language_selection_screen_title;

  /// No description provided for @love_spread_screen_what_is_love_spread.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что такое любовный расклад?'**
  String get love_spread_screen_what_is_love_spread;

  /// No description provided for @love_spread_screen_love_spread_explanation.
  ///
  /// In ru_RU, this message translates to:
  /// **'Любовный триплет — это три карты, выложенные слева направо:\nКарта 1 - Ты — показывает чувства, мотивацию и позицию самого кверента.\nКарта 2 - Партнёр — раскрывает эмоции, планы и готовность второй стороны.\nКарта 3 - Динамика / потенциал — описывает, как две энергии взаимодействуют сейчас и к чему способны привести отношения в ближайшей перспективе.'**
  String get love_spread_screen_love_spread_explanation;

  /// No description provided for @love_spread_screen_understand_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Понятно'**
  String get love_spread_screen_understand_button;

  /// No description provided for @main_screen_your_plan_trial.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ваш план: Пробный (с рекламой)'**
  String get main_screen_your_plan_trial;

  /// No description provided for @main_screen_no_ads.
  ///
  /// In ru_RU, this message translates to:
  /// **'• без рекламы'**
  String get main_screen_no_ads;

  /// No description provided for @main_screen_no_limits.
  ///
  /// In ru_RU, this message translates to:
  /// **'• без ограничений'**
  String get main_screen_no_limits;

  /// No description provided for @main_screen_shop_soon.
  ///
  /// In ru_RU, this message translates to:
  /// **'Магазин (soon)'**
  String get main_screen_shop_soon;

  /// No description provided for @main_screen_notification_settings.
  ///
  /// In ru_RU, this message translates to:
  /// **'Настройки уведомлений'**
  String get main_screen_notification_settings;

  /// No description provided for @main_screen_language_selection.
  ///
  /// In ru_RU, this message translates to:
  /// **'Выбор языка'**
  String get main_screen_language_selection;

  /// No description provided for @main_screen_rate_app.
  ///
  /// In ru_RU, this message translates to:
  /// **'Оцените приложение'**
  String get main_screen_rate_app;

  /// No description provided for @main_screen_contact_us.
  ///
  /// In ru_RU, this message translates to:
  /// **'Связаться с нами'**
  String get main_screen_contact_us;

  /// No description provided for @main_screen_classic_spreads_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Классические расклады'**
  String get main_screen_classic_spreads_title;

  /// No description provided for @main_screen_classic_spreads_description.
  ///
  /// In ru_RU, this message translates to:
  /// **'расклады на 2 / 3 / 5 карт и полный развёрнутый Кельтский крест'**
  String get main_screen_classic_spreads_description;

  /// No description provided for @main_screen_card_meanings_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Значение карт'**
  String get main_screen_card_meanings_title;

  /// No description provided for @main_screen_card_meanings_description.
  ///
  /// In ru_RU, this message translates to:
  /// **'полный справочник прямых и перевёрнутых значений всех старших и младших арканов'**
  String get main_screen_card_meanings_description;

  /// No description provided for @main_screen_card_combination_description.
  ///
  /// In ru_RU, this message translates to:
  /// **'\"калькулятор таро\" выберите карты и получите глубокий анализ связей'**
  String get main_screen_card_combination_description;

  /// No description provided for @notification_settings_screen_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Настройки уведомлений'**
  String get notification_settings_screen_title;

  /// No description provided for @notification_settings_screen_frequency_question.
  ///
  /// In ru_RU, this message translates to:
  /// **'Как часто вы хотите получать уведомление о карте дня?'**
  String get notification_settings_screen_frequency_question;

  /// No description provided for @notification_settings_screen_every_day.
  ///
  /// In ru_RU, this message translates to:
  /// **'Каждый день'**
  String get notification_settings_screen_every_day;

  /// No description provided for @notification_settings_screen_every_three_days.
  ///
  /// In ru_RU, this message translates to:
  /// **'Раз в три дня'**
  String get notification_settings_screen_every_three_days;

  /// No description provided for @notification_settings_screen_every_week.
  ///
  /// In ru_RU, this message translates to:
  /// **'Раз в неделю'**
  String get notification_settings_screen_every_week;

  /// No description provided for @notification_settings_screen_time_question.
  ///
  /// In ru_RU, this message translates to:
  /// **'В какое время суток?'**
  String get notification_settings_screen_time_question;

  /// No description provided for @notification_settings_screen_morning.
  ///
  /// In ru_RU, this message translates to:
  /// **'Утром'**
  String get notification_settings_screen_morning;

  /// No description provided for @notification_settings_screen_day.
  ///
  /// In ru_RU, this message translates to:
  /// **'Днем'**
  String get notification_settings_screen_day;

  /// No description provided for @notification_settings_screen_evening.
  ///
  /// In ru_RU, this message translates to:
  /// **'Вечером'**
  String get notification_settings_screen_evening;

  /// No description provided for @notification_settings_screen_save_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сохранить'**
  String get notification_settings_screen_save_button;

  /// No description provided for @onboarding_final_screen_yearly_price.
  ///
  /// In ru_RU, this message translates to:
  /// **'249/год'**
  String get onboarding_final_screen_yearly_price;

  /// No description provided for @onboarding_final_screen_yearly_month_price.
  ///
  /// In ru_RU, this message translates to:
  /// **'24/мес'**
  String get onboarding_final_screen_yearly_month_price;

  /// No description provided for @onboarding_final_screen_monthly_price.
  ///
  /// In ru_RU, this message translates to:
  /// **'9/мес='**
  String get onboarding_final_screen_monthly_price;

  /// No description provided for @onboarding_final_screen_monthly_month_price.
  ///
  /// In ru_RU, this message translates to:
  /// **'9/мес'**
  String get onboarding_final_screen_monthly_month_price;

  /// No description provided for @onboarding_final_screen_yearly_plan.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ежегодно'**
  String get onboarding_final_screen_yearly_plan;

  /// No description provided for @onboarding_final_screen_free_trial.
  ///
  /// In ru_RU, this message translates to:
  /// **'7 дней бесплатно'**
  String get onboarding_final_screen_free_trial;

  /// No description provided for @onboarding_final_screen_purchase_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Покупка'**
  String get onboarding_final_screen_purchase_title;

  /// No description provided for @onboarding_final_screen_test_stub_message.
  ///
  /// In ru_RU, this message translates to:
  /// **'Тестовая заглушка: выбран тариф \"{plan}\"'**
  String onboarding_final_screen_test_stub_message(Object plan);

  /// No description provided for @onboarding_final_screen_ok_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'OK'**
  String get onboarding_final_screen_ok_button;

  /// No description provided for @purchase_love_screen_yearly_price.
  ///
  /// In ru_RU, this message translates to:
  /// **'249/год'**
  String get purchase_love_screen_yearly_price;

  /// No description provided for @purchase_love_screen_yearly_month_price.
  ///
  /// In ru_RU, this message translates to:
  /// **'24/мес'**
  String get purchase_love_screen_yearly_month_price;

  /// No description provided for @purchase_love_screen_monthly_price.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ежемесячно'**
  String get purchase_love_screen_monthly_price;

  /// No description provided for @purchase_love_screen_monthly_month_price.
  ///
  /// In ru_RU, this message translates to:
  /// **'9/мес'**
  String get purchase_love_screen_monthly_month_price;

  /// No description provided for @purchase_love_screen_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Покупка'**
  String get purchase_love_screen_title;

  /// No description provided for @purchase_love_screen_ok_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'OK'**
  String get purchase_love_screen_ok_button;

  /// No description provided for @quick_reading_screen_error_no_image_file_found.
  ///
  /// In ru_RU, this message translates to:
  /// **'ОШИБКА: Файл изображения не найден для карты: {cardName}'**
  String quick_reading_screen_error_no_image_file_found(Object cardName);

  /// No description provided for @please_fill_all_fields.
  ///
  /// In ru_RU, this message translates to:
  /// **'Пожалуйста, заполните все полей карт.'**
  String get please_fill_all_fields;

  /// No description provided for @please_select_cards_only_from_suggested_list.
  ///
  /// In ru_RU, this message translates to:
  /// **'Пожалуйста, выберите карты только из предложенного списка. Неверные карты:'**
  String get please_select_cards_only_from_suggested_list;

  /// No description provided for @please_select_different_cards_in_all_fields.
  ///
  /// In ru_RU, this message translates to:
  /// **'Пожалуйста, выберите разные карты во всех полях.'**
  String get please_select_different_cards_in_all_fields;

  /// No description provided for @card.
  ///
  /// In ru_RU, this message translates to:
  /// **'Карта'**
  String get card;

  /// No description provided for @get_combination.
  ///
  /// In ru_RU, this message translates to:
  /// **'Узнать сочетание'**
  String get get_combination;

  /// No description provided for @new_spread.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сделать новый расклад'**
  String get new_spread;

  /// No description provided for @app_uses_ai_for_entertainment_purposes.
  ///
  /// In ru_RU, this message translates to:
  /// **'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.'**
  String get app_uses_ai_for_entertainment_purposes;

  /// No description provided for @career_finance_spread_screen_what_is_career_finance_spread.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что такое расклад Карьера и финансы?'**
  String get career_finance_spread_screen_what_is_career_finance_spread;

  /// No description provided for @celtic_cross_screen_prompt.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ты опытный таролог. Пользователь {userName} спрашивает: \"{userQuestion}\". Ответь раскладом \"Кельтский крест\" (классическая схема Уэйта). Карты переданы так: ситуация - {situationCard}; вызов - {challengeCard}; подсознательное - {subconsciousCard}; недавнее прошлое - {pastCard}; сознательное - {consciousCard}; ближайшее будущее - {hiddenCard}; внутреннее Я - {selfCard}; окружение - {environmentCard}; надежды или страхи - {hopesCard}; итог - {outcomeCard}. Упоминай имя {userName} минимум шесть раз и обязательно связывай каждую карту с вопросом. Соблюдай структуру:\n\n1) Приветствие по имени {userName}.\n\n2) Заголовок: Расклад: ситуация ({situationCard}) / вызов ({challengeCard}) / подсознательное ({subconsciousCard}) / недавнее прошлое ({pastCard}) / сознательное ({consciousCard}) / ближайшее будущее ({hiddenCard}) / внутреннее Я ({selfCard}) / окружение ({environmentCard}) / надежды/страхи ({hopesCard}) / итог ({outcomeCard}).\n\n3) Ситуация — {situationCard} (45-55 слов): три ключевых слова, символика карты и текущее положение дел по вопросу {userQuestion} для {userName}.\n\n4) Вызов — {challengeCard} (45-55 слов): главное препятствие или помощь для {userName}.\n\n5) Подсознательное — {subconsciousCard} (45-55 слов): скрытые мотивы или энергии, влияющие на {userName}.\n\n6) Недавнее прошлое — {pastCard} (45-55 слов): события, приведшие {userName} к нынешней ситуации.\n\n7) Сознательное — {consciousCard} (45-55 слов): цели, ожидания или то, что {userName} осознаёт.\n\n8) Ближнее будущее — {hiddenCard} (45-55 слов): вероятное развитие в ближайшие недели.\n\n9) Внутреннее Я — {selfCard} (45-55 слов): состояние, ресурсы {userName}.\n\n10) Окружение — {environmentCard} (45-55 слов): влияние людей и обстоятельств.\n\n11) Надежды / страхи — {hopesCard} (45-55 слов): ожидания или опасения {userName}.\n\n12) Итог — {outcomeCard} (45-55 слов): вероятный результат при учёте совета расклада.\n\n13) Заключение: дружеская поддержка и позитивная аффирмация (30-35 слов) для {userName}.\n\nТребования: общий объём 400-500 слов, живой разговорный тон, 4-6 эзотерических эмодзи; каждый блок отделяй двойным переводом строки (\n\n); не используй символы *, # или другую разметку; пиши только простым текстом.'**
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
      Object userQuestion);

  /// No description provided for @celtic_cross_screen_unable_to_load_card.
  ///
  /// In ru_RU, this message translates to:
  /// **'Не удалось загрузить карту'**
  String get celtic_cross_screen_unable_to_load_card;

  /// No description provided for @celticCrossTitle.
  ///
  /// In ru_RU, this message translates to:
  /// **'Кельтский крест'**
  String get celticCrossTitle;

  /// No description provided for @chat_with_tarot_reader_screen_request_received.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ваш запрос принят. Пожалуйста, откройте карты'**
  String get chat_with_tarot_reader_screen_request_received;

  /// No description provided for @chat_with_tarot_reader_screen_prompt.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ты опытный таролог. Пользователь {userName} спрашивает: \"{userQuestion}\". Ответь через расклад \"Прошлое - Настоящее - Будущее\". Карты переданы так: прошлое - {pastCard}; настоящее - {presentCard}; будущее - {hiddenCard}. Упоминай имя {userName} не менее четырёх раз и обязательно связывай значения карт с вопросом. Соблюдай структуру:\n\n1) Приветствие по имени {userName}.\n\n2) Заголовок: Расклад: Прошлое ({pastCard}) - Настоящее ({presentCard}) - Будущее ({hiddenCard}).\n\n3) Блок ПРОШЛОЕ — {pastCard} (40-50 слов): три ключевых слова, символика карты и объяснение, как прошлые факты влияют на исход вопроса {userQuestion} для {userName}.\n\n4) Блок НАСТОЯЩЕЕ — {presentCard} (40-50 слов): ключевые слова, символика карты и текущие факторы, влияющие на ответ на вопрос {userQuestion}.\n\n5) Блок БУДУЩЕЕ — {hiddenCard} (40-50 слов): ключевые слова, символика карты и вероятный сценарий развития ситуации по вопросу {userName}.\n\n6) Итог: короткий совет, позитивная аффирмация (20-30 слов) и чёткое обобщение шансов.\n\nТребования: общий объём 180-220 слов, тёплый эзотерический тон, 3-5 тематических эмодзи; каждый блок отделяй двойным переводом строки (\n\n); запрещено использовать символы *, # или другие знаки форматирования; пиши только простым текстом.'**
  String chat_with_tarot_reader_screen_prompt(
      Object hiddenCard,
      Object pastCard,
      Object presentCard,
      Object userName,
      Object userQuestion);

  /// No description provided for @see_meaning_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Узнать значение'**
  String get see_meaning_button;

  /// No description provided for @three_cards_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'3 карты в раскладе'**
  String three_cards_title(Object cards);

  /// No description provided for @new_spread_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сделать новый расклад'**
  String get new_spread_button;

  /// No description provided for @disclaimer_text.
  ///
  /// In ru_RU, this message translates to:
  /// **'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.'**
  String get disclaimer_text;

  /// No description provided for @enter_your_question.
  ///
  /// In ru_RU, this message translates to:
  /// **'Введите ваш вопрос...'**
  String get enter_your_question;

  /// No description provided for @classic_spreads_screen_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Классические расклады'**
  String get classic_spreads_screen_title;

  /// No description provided for @classic_spreads_screen_three_cards_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'3 карты'**
  String get classic_spreads_screen_three_cards_title;

  /// No description provided for @classic_spreads_screen_three_cards_description.
  ///
  /// In ru_RU, this message translates to:
  /// **'Прошлое, настоящее, будущее'**
  String get classic_spreads_screen_three_cards_description;

  /// No description provided for @classic_spreads_screen_five_cards_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'5 карт'**
  String get classic_spreads_screen_five_cards_title;

  /// No description provided for @classic_spreads_screen_five_cards_description.
  ///
  /// In ru_RU, this message translates to:
  /// **'Глубокий анализ ситуации'**
  String get classic_spreads_screen_five_cards_description;

  /// No description provided for @classic_spreads_screen_celtic_cross_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Кельтский крест'**
  String get classic_spreads_screen_celtic_cross_title;

  /// No description provided for @classic_spreads_screen_celtic_cross_description.
  ///
  /// In ru_RU, this message translates to:
  /// **'Полный расклад на 10 карт'**
  String get classic_spreads_screen_celtic_cross_description;

  /// No description provided for @five_cards_screen_prompt.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ты опытный таролог. Пользователь {userName} спрашивает: \"{userQuestion}\". Ответь через расклад \"5 карт\". Карты даны по порядку: прошлое - {pastCard}; настоящее - {presentCard}; будущее - {hiddenCard}; причина - {adviceCard}; возможный итог - {outcomeCard}. Объясни значение каждой карты и их общий смысл.'**
  String five_cards_screen_prompt(
      Object adviceCard,
      Object hiddenCard,
      Object outcomeCard,
      Object pastCard,
      Object presentCard,
      Object userName,
      Object userQuestion);

  /// No description provided for @fiveCardsInSpread.
  ///
  /// In ru_RU, this message translates to:
  /// **'5 карт в раскладе'**
  String get fiveCardsInSpread;

  /// No description provided for @makeNewSpread.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сделать новый расклад'**
  String get makeNewSpread;

  /// No description provided for @appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMake.
  ///
  /// In ru_RU, this message translates to:
  /// **'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.'**
  String
      get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMake;

  /// No description provided for @requestReceivedPleaseOpenCards.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ваш запрос принят. Пожалуйста, откройте карты'**
  String get requestReceivedPleaseOpenCards;

  /// No description provided for @love_spread_prompt.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ты опытный таролог. Пользователь {userName} спрашивает: «{userQuestion}». Ответь с помощью любовного расклада из трёх карт. Карты даны так: чувства {userName} — {youCard}; чувства партнёра — {partnerCard}; динамика или потенциал отношений — {dynamicCard}. Упоминай имя {userName} минимум три раза и связывай каждую карту с вопросом. Соблюдай структуру:\n\n1) Приветствие по имени {userName}.\n\n2) Заголовок: Расклад: {youCard} | {partnerCard} | {dynamicCard}.\n\n3) {youCard} — 40–50 слов: опиши, что карта говорит о чувствах и ожиданиях {userName}.\n\n4) {partnerCard} — 40–50 слов: раскрой эмоции и намерения партнёра относительно вопроса {userName}.\n\n5) {dynamicCard} — 40–50 слов: покажи, как эти две энергии взаимодействуют и к чему могут привести отношения.\n\n6) Заключение: тёплый совет и позитивная аффирмация (20–25 слов) для {userName}.\n\nТребования: общий объём 150–180 слов, дружеский романтичный тон, 2–4 тематических эмодзи; абзацы отделяй двойным переводом строки (\\n\\n); избегай символов *, # и любой разметки.'**
  String love_spread_prompt(Object dynamicCard, Object partnerCard,
      Object userName, Object userQuestion, Object youCard);

  /// No description provided for @loveSpread.
  ///
  /// In ru_RU, this message translates to:
  /// **'Любовный расклад'**
  String get loveSpread;

  /// No description provided for @applicationUsesAIExclusivelyForEntertainmentWeDoNotTakeResponsibilityForDecisionsYouHaveMadeIfNeededPleaseConsultSpecialist.
  ///
  /// In ru_RU, this message translates to:
  /// **'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.'**
  String
      get applicationUsesAIExclusivelyForEntertainmentWeDoNotTakeResponsibilityForDecisionsYouHaveMadeIfNeededPleaseConsultSpecialist;

  /// No description provided for @main_screen_greeting_with_name.
  ///
  /// In ru_RU, this message translates to:
  /// **'Приветствую, {name}'**
  String main_screen_greeting_with_name(Object name);

  /// No description provided for @main_screen_monday.
  ///
  /// In ru_RU, this message translates to:
  /// **'Понедельник'**
  String get main_screen_monday;

  /// No description provided for @main_screen_tuesday.
  ///
  /// In ru_RU, this message translates to:
  /// **'Вторник'**
  String get main_screen_tuesday;

  /// No description provided for @main_screen_wednesday.
  ///
  /// In ru_RU, this message translates to:
  /// **'Среда'**
  String get main_screen_wednesday;

  /// No description provided for @main_screen_thursday.
  ///
  /// In ru_RU, this message translates to:
  /// **'Четверг'**
  String get main_screen_thursday;

  /// No description provided for @main_screen_friday.
  ///
  /// In ru_RU, this message translates to:
  /// **'Пятница'**
  String get main_screen_friday;

  /// No description provided for @main_screen_saturday.
  ///
  /// In ru_RU, this message translates to:
  /// **'Суббота'**
  String get main_screen_saturday;

  /// No description provided for @main_screen_sunday.
  ///
  /// In ru_RU, this message translates to:
  /// **'Воскресенье'**
  String get main_screen_sunday;

  /// No description provided for @main_screen_your_card_of_the_day.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ваша карта дня'**
  String get main_screen_your_card_of_the_day;

  /// No description provided for @main_screen_card_of_the_day_with_name.
  ///
  /// In ru_RU, this message translates to:
  /// **'Карта дня: {cardName}'**
  String main_screen_card_of_the_day_with_name(Object cardName);

  /// No description provided for @main_screen_card_of_the_day.
  ///
  /// In ru_RU, this message translates to:
  /// **'Карта дня:'**
  String get main_screen_card_of_the_day;

  /// No description provided for @main_screen_viewed.
  ///
  /// In ru_RU, this message translates to:
  /// **'Открыта'**
  String get main_screen_viewed;

  /// No description provided for @main_screen_not_viewed.
  ///
  /// In ru_RU, this message translates to:
  /// **'Посмотреть'**
  String get main_screen_not_viewed;

  /// No description provided for @main_screen_spreads.
  ///
  /// In ru_RU, this message translates to:
  /// **'Расклады'**
  String get main_screen_spreads;

  /// No description provided for @main_screen_training.
  ///
  /// In ru_RU, this message translates to:
  /// **'Обучение'**
  String get main_screen_training;

  /// No description provided for @main_screen_entertainment.
  ///
  /// In ru_RU, this message translates to:
  /// **'Развлечение'**
  String get main_screen_entertainment;

  /// No description provided for @main_screen_glad_to_see_you_here.
  ///
  /// In ru_RU, this message translates to:
  /// **'Рад видеть вас здесь!'**
  String get main_screen_glad_to_see_you_here;

  /// No description provided for @main_screen_quick_reading_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Быстрый расклад'**
  String get main_screen_quick_reading_title;

  /// No description provided for @main_screen_quick_reading_description.
  ///
  /// In ru_RU, this message translates to:
  /// **'за пару касаний получите чёткий ответ на свой вопрос одной картой'**
  String get main_screen_quick_reading_description;

  /// No description provided for @monthly_forecast_spread_screen_request_accepted.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ваш запрос принят. Пожалуйста, откройте карты'**
  String get monthly_forecast_spread_screen_request_accepted;

  /// No description provided for @monthly_forecast_spread_screen_prompt.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сделай для {userName} месячный прогноз по этим картам: {cards}'**
  String monthly_forecast_spread_screen_prompt(Object cards, Object userName);

  /// No description provided for @aboutSpread.
  ///
  /// In ru_RU, this message translates to:
  /// **'О раскладе'**
  String get aboutSpread;

  /// No description provided for @monthlyForecast.
  ///
  /// In ru_RU, this message translates to:
  /// **'Месячный прогноз'**
  String get monthlyForecast;

  /// No description provided for @appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNecessaryPleaseConsultSpecialist.
  ///
  /// In ru_RU, this message translates to:
  /// **'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.'**
  String
      get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNecessaryPleaseConsultSpecialist;

  /// No description provided for @purchase_love_screen_test_message.
  ///
  /// In ru_RU, this message translates to:
  /// **'Тестовая заглушка: выбран тариф \"{planName}\"'**
  String purchase_love_screen_test_message(Object planName);

  /// No description provided for @quick_reading_screen_what_is_quick_reading.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что такое быстрый расклад?'**
  String get quick_reading_screen_what_is_quick_reading;

  /// No description provided for @quick_reading_screen_quick_reading_explanation.
  ///
  /// In ru_RU, this message translates to:
  /// **'Быстрый расклад — это экспресс расклад (ответ: ДА или НЕТ) который помогает мгновенно получить ясный ответ на конкретный вопрос или общую атмосферу дня. Идеально, когда нужно быстрое вдохновение или совет «здесь и сейчас».'**
  String get quick_reading_screen_quick_reading_explanation;

  /// No description provided for @self_development_balance_spread_screen_request_accepted.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ваш запрос принят. Пожалуйста, откройте карты'**
  String get self_development_balance_spread_screen_request_accepted;

  /// No description provided for @self_development_balance_spread_screen_error_getting_value.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ошибка при получении значения расклада. Попробуйте ещё раз.'**
  String get self_development_balance_spread_screen_error_getting_value;

  /// No description provided for @appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNeededConsultSpecialist.
  ///
  /// In ru_RU, this message translates to:
  /// **'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.'**
  String
      get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNeededConsultSpecialist;

  /// No description provided for @thematic_spreads_screen_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Тематические расклады'**
  String get thematic_spreads_screen_title;

  /// No description provided for @thematic_spreads_screen_love_spread_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Любовный расклад'**
  String get thematic_spreads_screen_love_spread_title;

  /// No description provided for @thematic_spreads_screen_love_spread_description.
  ///
  /// In ru_RU, this message translates to:
  /// **'Анализ отношений и чувств'**
  String get thematic_spreads_screen_love_spread_description;

  /// No description provided for @thematic_spreads_screen_career_finance_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Карьера и финансы'**
  String get thematic_spreads_screen_career_finance_title;

  /// No description provided for @thematic_spreads_screen_career_finance_description.
  ///
  /// In ru_RU, this message translates to:
  /// **'Профессиональный и финансовый анализ'**
  String get thematic_spreads_screen_career_finance_description;

  /// No description provided for @thematic_spreads_screen_pros_cons_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'За и Против'**
  String get thematic_spreads_screen_pros_cons_title;

  /// No description provided for @thematic_spreads_screen_pros_cons_description.
  ///
  /// In ru_RU, this message translates to:
  /// **'Анализ плюсов и минусов'**
  String get thematic_spreads_screen_pros_cons_description;

  /// No description provided for @thematic_spreads_screen_monthly_forecast_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Месячный прогноз'**
  String get thematic_spreads_screen_monthly_forecast_title;

  /// No description provided for @thematic_spreads_screen_monthly_forecast_description.
  ///
  /// In ru_RU, this message translates to:
  /// **'Прогноз по месяцам'**
  String get thematic_spreads_screen_monthly_forecast_description;

  /// No description provided for @thematic_spreads_screen_self_development_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Саморазвитие и баланс'**
  String get thematic_spreads_screen_self_development_title;

  /// No description provided for @thematic_spreads_screen_self_development_description.
  ///
  /// In ru_RU, this message translates to:
  /// **'Духовный рост и гармония'**
  String get thematic_spreads_screen_self_development_description;

  /// No description provided for @requestReceived.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ваш запрос принят. Пожалуйста, откройте карты'**
  String get requestReceived;

  /// No description provided for @pros_cons_spread_prompt.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сделай для {userName} расклад За и Против по этим картам: {cards}'**
  String pros_cons_spread_prompt(Object cards, Object userName);

  /// No description provided for @pros_cons_spread_screen_what_is_pros_cons_spread.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что такое расклад \"За и Против\"?'**
  String get pros_cons_spread_screen_what_is_pros_cons_spread;

  /// No description provided for @pros_cons_spread_screen_pros_cons_spread_explanation.
  ///
  /// In ru_RU, this message translates to:
  /// **'Расклад \"За и Против\" помогает проанализировать плюсы и минусы ситуации, чтобы принять взвешенное решение.'**
  String get pros_cons_spread_screen_pros_cons_spread_explanation;

  /// No description provided for @pros_cons_spread_screen_understand_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Понятно'**
  String get pros_cons_spread_screen_understand_button;

  /// No description provided for @prosConsSpreadTitle.
  ///
  /// In ru_RU, this message translates to:
  /// **'Расклад \"За и Против\"'**
  String get prosConsSpreadTitle;

  /// No description provided for @spreadDisclaimer.
  ///
  /// In ru_RU, this message translates to:
  /// **'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.'**
  String get spreadDisclaimer;

  /// No description provided for @fun_spread_screen_generation_error.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ошибка при генерации расклада. Попробуйте еще раз.'**
  String get fun_spread_screen_generation_error;

  /// No description provided for @fun_spread_screen_share_error.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ошибка при сохранении изображения.'**
  String get fun_spread_screen_share_error;

  /// No description provided for @fun_spread_screen_about_fun_spread.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что такое забавный расклад?'**
  String get fun_spread_screen_about_fun_spread;

  /// No description provided for @fun_spread_screen_fun_spread_explanation.
  ///
  /// In ru_RU, this message translates to:
  /// **'Забавный расклад - это особый способ гадания на картах таро, который сочетает в себе глубину традиционных раскладов с легким и позитивным подходом. Он поможет вам взглянуть на ситуацию с новой стороны и найти радость в повседневной жизни.'**
  String get fun_spread_screen_fun_spread_explanation;

  /// No description provided for @fun_spread_screen_understand_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Понятно'**
  String get fun_spread_screen_understand_button;

  /// No description provided for @fun_spread_screen_title.
  ///
  /// In ru_RU, this message translates to:
  /// **'Забавный расклад'**
  String get fun_spread_screen_title;

  /// No description provided for @fun_spread_screen_generate_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Создать расклад'**
  String get fun_spread_screen_generate_button;

  /// No description provided for @fun_spread_screen_share_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Поделиться'**
  String get fun_spread_screen_share_button;

  /// No description provided for @fun_spread_screen_new_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Новый расклад'**
  String get fun_spread_screen_new_button;

  /// No description provided for @fun_spread_screen_share_text.
  ///
  /// In ru_RU, this message translates to:
  /// **'Посмотрите, какой забавный расклад таро я получил в приложении Tarot AI!'**
  String get fun_spread_screen_share_text;

  /// No description provided for @ad_promo_tariff.
  ///
  /// In ru_RU, this message translates to:
  /// **'ТАРИФ'**
  String get ad_promo_tariff;

  /// No description provided for @ad_promo_love.
  ///
  /// In ru_RU, this message translates to:
  /// **'ЛЮБОВЬ'**
  String get ad_promo_love;

  /// No description provided for @ad_promo_discount.
  ///
  /// In ru_RU, this message translates to:
  /// **'АКЦИЯ -50%'**
  String get ad_promo_discount;

  /// No description provided for @ad_promo_no_ads.
  ///
  /// In ru_RU, this message translates to:
  /// **'• без рекламы'**
  String get ad_promo_no_ads;

  /// No description provided for @ad_promo_no_limits.
  ///
  /// In ru_RU, this message translates to:
  /// **'• без ограничений'**
  String get ad_promo_no_limits;

  /// No description provided for @no_internet_error.
  ///
  /// In ru_RU, this message translates to:
  /// **'Наше приложение работает только с интернетом. Пожалуйста, включите Wi-Fi или мобильный интернет.'**
  String get no_internet_error;

  /// No description provided for @fun_spread_screen_mate_prompt_3cards.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сделай очень смешной, дерзкий и матершинный расклад таро на 3 карты для {userName} . Для каждой карты придумай смешное название и напиши отдельный абзац: Первая карта: <название> — <короткое смешное описание>, Вторая карта: <название> — <короткое смешное описание>, Третья карта: <название> — <короткое смешное описание>. Используй нецензурную лексику, чтобы добавить юмора, но не оскорбляй. Весь текст не длиннее 7 предложений.'**
  String fun_spread_screen_mate_prompt_3cards(Object userName);

  /// No description provided for @fun_spread_screen_no_mate_prompt_3cards.
  ///
  /// In ru_RU, this message translates to:
  /// **'Создай забавный расклад таро для {userName} на 3 карты. Для каждой карты придумай смешное название и напиши отдельный абзац: Первая карта: <название> — <короткое смешное описание>, Вторая карта: <название> — <короткое смешное описание>, Третья карта: <название> — <короткое смешное описание>. Расклад должен быть веселым, но с глубоким смыслом. Только 3 карты. Весь текст не длиннее 7 предложений.'**
  String fun_spread_screen_no_mate_prompt_3cards(Object userName);

  /// No description provided for @fun_spread_screen_title_top.
  ///
  /// In ru_RU, this message translates to:
  /// **'ТАРО расклад'**
  String get fun_spread_screen_title_top;

  /// No description provided for @fun_spread_screen_title_for_name.
  ///
  /// In ru_RU, this message translates to:
  /// **'для {name}'**
  String fun_spread_screen_title_for_name(Object name);

  /// No description provided for @contact_us_screen_message_sent.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ваше сообщение получено, спасибо!'**
  String get contact_us_screen_message_sent;

  /// No description provided for @contact_us_screen_message_error.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ошибка отправки сообщения'**
  String get contact_us_screen_message_error;

  /// No description provided for @love_spread_screen_initial_message.
  ///
  /// In ru_RU, this message translates to:
  /// **'Добрый день, пожалуйста, напишите ваш вопрос ниже:'**
  String get love_spread_screen_initial_message;

  /// No description provided for @main_screen_tariff.
  ///
  /// In ru_RU, this message translates to:
  /// **'ТАРИФ'**
  String get main_screen_tariff;

  /// No description provided for @main_screen_promo_50.
  ///
  /// In ru_RU, this message translates to:
  /// **'АКЦИЯ -50%'**
  String get main_screen_promo_50;

  /// No description provided for @main_screen_rate_hint.
  ///
  /// In ru_RU, this message translates to:
  /// **'Если окно оценки не появилось, вы можете оставить отзыв в Google Play.'**
  String get main_screen_rate_hint;

  /// No description provided for @main_screen_rate_error.
  ///
  /// In ru_RU, this message translates to:
  /// **'Не удалось открыть Google Play. Попробуйте позже.'**
  String get main_screen_rate_error;

  /// No description provided for @love_spread_screen_suggested_questions_1.
  ///
  /// In ru_RU, this message translates to:
  /// **'Какие чувства у меня к этому человеку?'**
  String get love_spread_screen_suggested_questions_1;

  /// No description provided for @love_spread_screen_suggested_questions_2.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что мешает нашим отношениям?'**
  String get love_spread_screen_suggested_questions_2;

  /// No description provided for @love_spread_screen_suggested_questions_3.
  ///
  /// In ru_RU, this message translates to:
  /// **'Какое будущее ждет наши отношения?'**
  String get love_spread_screen_suggested_questions_3;

  /// No description provided for @career_finance_spread_screen_suggested_questions_1.
  ///
  /// In ru_RU, this message translates to:
  /// **'Какие возможности ждут меня в карьере?'**
  String get career_finance_spread_screen_suggested_questions_1;

  /// No description provided for @career_finance_spread_screen_suggested_questions_2.
  ///
  /// In ru_RU, this message translates to:
  /// **'Как улучшить мое финансовое положение?'**
  String get career_finance_spread_screen_suggested_questions_2;

  /// No description provided for @career_finance_spread_screen_suggested_questions_3.
  ///
  /// In ru_RU, this message translates to:
  /// **'Стоит ли менять работу?'**
  String get career_finance_spread_screen_suggested_questions_3;

  /// No description provided for @pros_cons_spread_screen_suggested_questions_1.
  ///
  /// In ru_RU, this message translates to:
  /// **'Стоит ли мне принимать это решение?'**
  String get pros_cons_spread_screen_suggested_questions_1;

  /// No description provided for @pros_cons_spread_screen_suggested_questions_2.
  ///
  /// In ru_RU, this message translates to:
  /// **'Какие плюсы и минусы у этого выбора?'**
  String get pros_cons_spread_screen_suggested_questions_2;

  /// No description provided for @pros_cons_spread_screen_suggested_questions_3.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что важнее в данной ситуации?'**
  String get pros_cons_spread_screen_suggested_questions_3;

  /// No description provided for @monthly_forecast_spread_screen_suggested_questions_1.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что ждет меня в этом месяце?'**
  String get monthly_forecast_spread_screen_suggested_questions_1;

  /// No description provided for @monthly_forecast_spread_screen_suggested_questions_2.
  ///
  /// In ru_RU, this message translates to:
  /// **'Какие события произойдут в ближайшее время?'**
  String get monthly_forecast_spread_screen_suggested_questions_2;

  /// No description provided for @monthly_forecast_spread_screen_suggested_questions_3.
  ///
  /// In ru_RU, this message translates to:
  /// **'На чем стоит сосредоточиться в этом месяце?'**
  String get monthly_forecast_spread_screen_suggested_questions_3;

  /// No description provided for @self_development_balance_spread_screen_suggested_questions_1.
  ///
  /// In ru_RU, this message translates to:
  /// **'Как мне развиваться духовно?'**
  String get self_development_balance_spread_screen_suggested_questions_1;

  /// No description provided for @self_development_balance_spread_screen_suggested_questions_2.
  ///
  /// In ru_RU, this message translates to:
  /// **'Что мешает моему внутреннему балансу?'**
  String get self_development_balance_spread_screen_suggested_questions_2;

  /// No description provided for @self_development_balance_spread_screen_suggested_questions_3.
  ///
  /// In ru_RU, this message translates to:
  /// **'Как найти гармонию в жизни?'**
  String get self_development_balance_spread_screen_suggested_questions_3;

  /// No description provided for @career_three_card_prompt.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ты опытный таролог-коуч. Пользователь {userName} спрашивает: «{userQuestion}». Сделай расклад из трёх карт на карьеру и финансы. Карты переданы так: 1) ситуация — {situationCard}; 2) преграда или ключевая возможность — {challengeCard}; 3) совет и потенциал — {adviceCard}. Определи пол пользователя по имени {userName} и обращайся с правильными окончаниями и местоимениями. Говори с {userName} дружелюбно и по делу: покажи, где он стоит, что блокирует рост (или какой шанс важно заметить) и какой практический шаг выведет к желаемому доходу. Упоминай имя {userName} минимум три раза. Соблюдай структуру:\n\n1) Приветствие — 1 предложение.\n\n2) Заголовок: Расклад: {situationCard} | {challengeCard} | {adviceCard}.\n\n3) {situationCard} — 45–55 слов: опиши текущее положение {userName} (работа, бизнес или общий финансовый фон) и символику карты.\n\n4) {challengeCard} — 45–55 слов: раскрой главный барьер или неочевидную возможность; укажи, как она отражается в карте и в вопросе {userName}.\n\n5) {adviceCard} — 45–55 слов: предложи конкретное действие (например, пересмотреть бюджет, запросить повышение, изучить новую компетенцию) и опиши возможный результат.\n\n6) Финал — 20–25 слов: дружеский вывод, позитивная аффирмация и 2 деловых эмодзи.\n\nТребования: общий объём 160–185 слов, ясный деловой тон без жаргона, 2–3 эмодзи; абзацы разделяй двойным \\n\\n; не используй *, # и прочую разметку.'**
  String career_three_card_prompt(Object adviceCard, Object challengeCard,
      Object situationCard, Object userName, Object userQuestion);

  /// No description provided for @pros_cons_three_card_prompt.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ты опытный таролог. Пользователь {userName} спрашивает: «{userQuestion}». Сделай расклад «За и Против» из трёх карт. Карты переданы так: плюсы — {proCard}; минусы — {conCard}; совет/итог — {adviceCard}. Определи пол пользователя по имени {userName} и обращайся с правильными окончаниями и местоимениями. Упоминай имя {userName} не менее трёх раз и связывай каждую карту с вопросом. Соблюдай структуру:\n\n1) Приветствие по имени {userName}.\n\n2) Заголовок: Расклад: {proCard} | {conCard} | {adviceCard}.\n\n3) Плюсы: {proCard} — 45–55 слов. Раскрой главные выгоды или положительные ресурсы, которые эта карта приносит в ситуацию {userName}.\n\n4) Минусы: {conCard} — 45–55 слов. Опиши риски, скрытые затраты или слабые места решения для {userName}.\n\n5) Совет: {adviceCard} — 45–55 слов. Взвесь плюсы и минусы, предложи одно конкретное действие (глагол + объект) и скажи, как это изменит исход для {userName}.\n\n6) Итог — одним словом «Да» или «Нет», затем 1 предложение-обоснование и ободряющая аффирмация (20–25 слов) с 1–2 эмодзи.\n\nТребования: общий объём 150–180 слов, дружеский разговорный тон; каждый блок отделяй двойным переводом строки (\\n\\n); без символов *, # или другой разметки.'**
  String pros_cons_three_card_prompt(Object adviceCard, Object conCard,
      Object proCard, Object userName, Object userQuestion);

  /// No description provided for @monthly_wheel_prompt.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ты профессиональный таролог. Пользователь {userName} спрашивает: «{userQuestion}». Составь расклад «Колесо месяца» на {month}. Карты идут по порядку: 1 — {card1}, 2 — {card2}, 3 — {card3}, 4 — {card4}, 5 — {card5}, 6 — {card6}, 7 — {card7}, 8 — {card8}, 9 — {card9}, 10 — {card10}, 11 — {card11}, 12 — {card12}. Определи пол {userName} по имени и используй правильные окончания и местоимения. Упоминай имя не меньше пяти раз, но **не вставляй его после каждой даты** — вспоминай лишь внутри текста советов. Используй календарную сетку дат: 1–3, 4–6, 7–9, 10–12, 13–15, 16–18, 19–21, 22–24, 25–26, 27–28, 29–30, 31 (если в месяце 30 дней — 12-я карта тоже относится к 30-му числу). Формат:\n\n1) Приветствие по имени {userName} (1–2 предложения).\n\n2) Краткое вступление о цели расклада (1 предложение).\n\n3–14) Для каждой карты используй строку вида «1–3 {month} — {card1}» (без имени): затем 2–3 предложения о ключевой энергии периода и практическом совете, органично упоминая {userName}.\n\n15) Итог: общий совет на месяц (около 40 слов) и вдохновляющая аффирмация с 2–3 эмодзи.\n\nТребования: суммарно 360–400 слов; дружеский, мотивирующий тон; блоки разделяй двойным \\n\\n; никаких символов *, #, списков или технических пометок.'**
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
      Object userQuestion);

  /// No description provided for @self_growth_balance_prompt.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ты опытный таролог-коуч. Пользователь {userName} спрашивает: «{userQuestion}». Сделай расклад «Саморазвитие и баланс» из семи карт. Карты даны так: ядро — {coreCard}; разум — {mindCard}; эмоции — {emotionCard}; тело — {bodyCard}; ресурс — {strengthCard}; блок — {challengeCard}; совет — {adviceCard}. Определи пол пользователя по имени {userName} и обращайся с правильными окончаниями и местоимениями. Говори живо и поддерживающе, упоминай имя {userName} не меньше четырёх раз и обязательно связывай каждую карту с вопросом. Соблюдай структуру и формат:\n\n1) Приветствие по имени {userName}.\n\n2) Заголовок: Расклад: {coreCard} | {mindCard} | {emotionCard} | {bodyCard} | {strengthCard} | {challengeCard} | {adviceCard}.\n\n3) {coreCard} — опиши главный фокус саморазвития {userName}.\n\n4) {mindCard} — расскажи, как настроить мышление и чему учиться.\n\n5) {emotionCard} — раскрой эмоциональный ресурс и мотивацию.\n\n6) {bodyCard} — подскажи, как заботиться о теле и энергии.\n\n7) {strengthCard} — покажи внутренний дар или внешнюю поддержку.\n\n8) {challengeCard} — обозначь ключевой дисбаланс и его причины.\n\n9) {adviceCard} — предложи конкретное действие, объединяющее все аспекты.\n\n10) Финал: вдохновляющая аффирмация и тёплое напутствие с 2–3 эмодзи.\n\nТребования: каждый пункт 2–3 предложения; между пунктами ставь двойной перевод строки (\\n\\n); не используй символы *, # или другую разметку.'**
  String self_growth_balance_prompt(
      Object adviceCard,
      Object bodyCard,
      Object challengeCard,
      Object coreCard,
      Object emotionCard,
      Object mindCard,
      Object strengthCard,
      Object userName,
      Object userQuestion);

  /// No description provided for @main_screen_suggest_spread.
  ///
  /// In ru_RU, this message translates to:
  /// **'Какой расклад добавить? Напишите нам'**
  String get main_screen_suggest_spread;

  /// No description provided for @main_screen_disclaimer.
  ///
  /// In ru_RU, this message translates to:
  /// **'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.'**
  String get main_screen_disclaimer;

  /// No description provided for @month_january.
  ///
  /// In ru_RU, this message translates to:
  /// **'Январь'**
  String get month_january;

  /// No description provided for @month_february.
  ///
  /// In ru_RU, this message translates to:
  /// **'Февраль'**
  String get month_february;

  /// No description provided for @month_march.
  ///
  /// In ru_RU, this message translates to:
  /// **'Март'**
  String get month_march;

  /// No description provided for @month_april.
  ///
  /// In ru_RU, this message translates to:
  /// **'Апрель'**
  String get month_april;

  /// No description provided for @month_may.
  ///
  /// In ru_RU, this message translates to:
  /// **'Май'**
  String get month_may;

  /// No description provided for @month_june.
  ///
  /// In ru_RU, this message translates to:
  /// **'Июнь'**
  String get month_june;

  /// No description provided for @month_july.
  ///
  /// In ru_RU, this message translates to:
  /// **'Июль'**
  String get month_july;

  /// No description provided for @month_august.
  ///
  /// In ru_RU, this message translates to:
  /// **'Август'**
  String get month_august;

  /// No description provided for @month_september.
  ///
  /// In ru_RU, this message translates to:
  /// **'Сентябрь'**
  String get month_september;

  /// No description provided for @month_october.
  ///
  /// In ru_RU, this message translates to:
  /// **'Октябрь'**
  String get month_october;

  /// No description provided for @month_november.
  ///
  /// In ru_RU, this message translates to:
  /// **'Ноябрь'**
  String get month_november;

  /// No description provided for @month_december.
  ///
  /// In ru_RU, this message translates to:
  /// **'Декабрь'**
  String get month_december;

  /// No description provided for @fun_share_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Поделиться'**
  String get fun_share_button;

  /// No description provided for @fun_new_spread_button.
  ///
  /// In ru_RU, this message translates to:
  /// **'Новый расклад'**
  String get fun_new_spread_button;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'af',
        'am',
        'ar',
        'az',
        'bg',
        'bn',
        'ca',
        'cs',
        'de',
        'en',
        'es',
        'fa',
        'fi',
        'fil',
        'fr',
        'gl',
        'gu',
        'hi',
        'hr',
        'hu',
        'hy',
        'id',
        'is',
        'it',
        'he',
        'ja',
        'ka',
        'kk',
        'km',
        'kn',
        'ko',
        'ky',
        'lo',
        'lt',
        'lv',
        'mk',
        'ml',
        'mn',
        'mr',
        'ms',
        'my',
        'ne',
        'nl',
        'no',
        'pa',
        'pl',
        'pt',
        'rm',
        'ro',
        'ru',
        'si',
        'sk',
        'sl',
        'sq',
        'sr',
        'sv',
        'sw',
        'ta',
        'te',
        'th',
        'tr',
        'uk',
        'ur',
        'vi',
        'zh',
        'zu'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'az':
      {
        switch (locale.countryCode) {
          case 'AZ':
            return AppLocalizationsAzAz();
        }
        break;
      }
    case 'bn':
      {
        switch (locale.countryCode) {
          case 'BD':
            return AppLocalizationsBnBd();
        }
        break;
      }
    case 'cs':
      {
        switch (locale.countryCode) {
          case 'CZ':
            return AppLocalizationsCsCz();
        }
        break;
      }
    case 'de':
      {
        switch (locale.countryCode) {
          case 'DE':
            return AppLocalizationsDeDe();
        }
        break;
      }
    case 'en':
      {
        switch (locale.countryCode) {
          case 'GB':
            return AppLocalizationsEnGb();
          case 'US':
            return AppLocalizationsEnUs();
        }
        break;
      }
    case 'es':
      {
        switch (locale.countryCode) {
          case 'ES':
            return AppLocalizationsEsEs();
        }
        break;
      }
    case 'fi':
      {
        switch (locale.countryCode) {
          case 'FI':
            return AppLocalizationsFiFi();
        }
        break;
      }
    case 'fr':
      {
        switch (locale.countryCode) {
          case 'CA':
            return AppLocalizationsFrCa();
          case 'FR':
            return AppLocalizationsFrFr();
        }
        break;
      }
    case 'gl':
      {
        switch (locale.countryCode) {
          case 'ES':
            return AppLocalizationsGlEs();
        }
        break;
      }
    case 'hi':
      {
        switch (locale.countryCode) {
          case 'IN':
            return AppLocalizationsHiIn();
        }
        break;
      }
    case 'hu':
      {
        switch (locale.countryCode) {
          case 'HU':
            return AppLocalizationsHuHu();
        }
        break;
      }
    case 'hy':
      {
        switch (locale.countryCode) {
          case 'AM':
            return AppLocalizationsHyAm();
        }
        break;
      }
    case 'is':
      {
        switch (locale.countryCode) {
          case 'IS':
            return AppLocalizationsIsIs();
        }
        break;
      }
    case 'it':
      {
        switch (locale.countryCode) {
          case 'IT':
            return AppLocalizationsItIt();
        }
        break;
      }
    case 'he':
      {
        switch (locale.countryCode) {
          case 'IL':
            return AppLocalizationsHeIl();
        }
        break;
      }
    case 'ja':
      {
        switch (locale.countryCode) {
          case 'JP':
            return AppLocalizationsJaJp();
        }
        break;
      }
    case 'ka':
      {
        switch (locale.countryCode) {
          case 'GE':
            return AppLocalizationsKaGe();
        }
        break;
      }
    case 'km':
      {
        switch (locale.countryCode) {
          case 'KH':
            return AppLocalizationsKmKh();
        }
        break;
      }
    case 'kn':
      {
        switch (locale.countryCode) {
          case 'IN':
            return AppLocalizationsKnIn();
        }
        break;
      }
    case 'ko':
      {
        switch (locale.countryCode) {
          case 'KR':
            return AppLocalizationsKoKr();
        }
        break;
      }
    case 'ky':
      {
        switch (locale.countryCode) {
          case 'KG':
            return AppLocalizationsKyKg();
        }
        break;
      }
    case 'lo':
      {
        switch (locale.countryCode) {
          case 'LA':
            return AppLocalizationsLoLa();
        }
        break;
      }
    case 'mk':
      {
        switch (locale.countryCode) {
          case 'MK':
            return AppLocalizationsMkMk();
        }
        break;
      }
    case 'ml':
      {
        switch (locale.countryCode) {
          case 'IN':
            return AppLocalizationsMlIn();
        }
        break;
      }
    case 'mn':
      {
        switch (locale.countryCode) {
          case 'MN':
            return AppLocalizationsMnMn();
        }
        break;
      }
    case 'mr':
      {
        switch (locale.countryCode) {
          case 'IN':
            return AppLocalizationsMrIn();
        }
        break;
      }
    case 'ms':
      {
        switch (locale.countryCode) {
          case 'MY':
            return AppLocalizationsMsMy();
        }
        break;
      }
    case 'my':
      {
        switch (locale.countryCode) {
          case 'MM':
            return AppLocalizationsMyMm();
        }
        break;
      }
    case 'ne':
      {
        switch (locale.countryCode) {
          case 'NP':
            return AppLocalizationsNeNp();
        }
        break;
      }
    case 'nl':
      {
        switch (locale.countryCode) {
          case 'NL':
            return AppLocalizationsNlNl();
        }
        break;
      }
    case 'no':
      {
        switch (locale.countryCode) {
          case 'NO':
            return AppLocalizationsNoNo();
        }
        break;
      }
    case 'pl':
      {
        switch (locale.countryCode) {
          case 'PL':
            return AppLocalizationsPlPl();
        }
        break;
      }
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
          case 'PT':
            return AppLocalizationsPtPt();
        }
        break;
      }
    case 'ru':
      {
        switch (locale.countryCode) {
          case 'RU':
            return AppLocalizationsRuRu();
        }
        break;
      }
    case 'si':
      {
        switch (locale.countryCode) {
          case 'LK':
            return AppLocalizationsSiLk();
        }
        break;
      }
    case 'sv':
      {
        switch (locale.countryCode) {
          case 'SE':
            return AppLocalizationsSvSe();
        }
        break;
      }
    case 'ta':
      {
        switch (locale.countryCode) {
          case 'IN':
            return AppLocalizationsTaIn();
        }
        break;
      }
    case 'te':
      {
        switch (locale.countryCode) {
          case 'IN':
            return AppLocalizationsTeIn();
        }
        break;
      }
    case 'tr':
      {
        switch (locale.countryCode) {
          case 'TR':
            return AppLocalizationsTrTr();
        }
        break;
      }
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'CN':
            return AppLocalizationsZhCn();
          case 'HK':
            return AppLocalizationsZhHk();
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'af':
      return AppLocalizationsAf();
    case 'am':
      return AppLocalizationsAm();
    case 'ar':
      return AppLocalizationsAr();
    case 'az':
      return AppLocalizationsAz();
    case 'bg':
      return AppLocalizationsBg();
    case 'bn':
      return AppLocalizationsBn();
    case 'ca':
      return AppLocalizationsCa();
    case 'cs':
      return AppLocalizationsCs();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fa':
      return AppLocalizationsFa();
    case 'fi':
      return AppLocalizationsFi();
    case 'fil':
      return AppLocalizationsFil();
    case 'fr':
      return AppLocalizationsFr();
    case 'gl':
      return AppLocalizationsGl();
    case 'gu':
      return AppLocalizationsGu();
    case 'hi':
      return AppLocalizationsHi();
    case 'hr':
      return AppLocalizationsHr();
    case 'hu':
      return AppLocalizationsHu();
    case 'hy':
      return AppLocalizationsHy();
    case 'id':
      return AppLocalizationsId();
    case 'is':
      return AppLocalizationsIs();
    case 'it':
      return AppLocalizationsIt();
    case 'he':
      return AppLocalizationsHe();
    case 'ja':
      return AppLocalizationsJa();
    case 'ka':
      return AppLocalizationsKa();
    case 'kk':
      return AppLocalizationsKk();
    case 'km':
      return AppLocalizationsKm();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'ky':
      return AppLocalizationsKy();
    case 'lo':
      return AppLocalizationsLo();
    case 'lt':
      return AppLocalizationsLt();
    case 'lv':
      return AppLocalizationsLv();
    case 'mk':
      return AppLocalizationsMk();
    case 'ml':
      return AppLocalizationsMl();
    case 'mn':
      return AppLocalizationsMn();
    case 'mr':
      return AppLocalizationsMr();
    case 'ms':
      return AppLocalizationsMs();
    case 'my':
      return AppLocalizationsMy();
    case 'ne':
      return AppLocalizationsNe();
    case 'nl':
      return AppLocalizationsNl();
    case 'no':
      return AppLocalizationsNo();
    case 'pa':
      return AppLocalizationsPa();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'rm':
      return AppLocalizationsRm();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'si':
      return AppLocalizationsSi();
    case 'sk':
      return AppLocalizationsSk();
    case 'sl':
      return AppLocalizationsSl();
    case 'sq':
      return AppLocalizationsSq();
    case 'sr':
      return AppLocalizationsSr();
    case 'sv':
      return AppLocalizationsSv();
    case 'sw':
      return AppLocalizationsSw();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
    case 'zu':
      return AppLocalizationsZu();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
