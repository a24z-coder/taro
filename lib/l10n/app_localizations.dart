import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_ru.dart';

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
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('nl'),
    Locale('ru')
  ];

  /// No description provided for @main_title.
  ///
  /// In en, this message translates to:
  /// **'Divine and study tarot'**
  String get main_title;

  /// No description provided for @your_name.
  ///
  /// In en, this message translates to:
  /// **'Your name'**
  String get your_name;

  /// No description provided for @personalization_hint.
  ///
  /// In en, this message translates to:
  /// **'Ask questions to the AI Tarot Reader and get personalized spreads.'**
  String get personalization_hint;

  /// No description provided for @start_button.
  ///
  /// In en, this message translates to:
  /// **'START'**
  String get start_button;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @continueBtn.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueBtn;

  /// No description provided for @card_of_the_day.
  ///
  /// In en, this message translates to:
  /// **'Card of the day'**
  String get card_of_the_day;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @spreads.
  ///
  /// In en, this message translates to:
  /// **'Spreads'**
  String get spreads;

  /// No description provided for @quick_spread.
  ///
  /// In en, this message translates to:
  /// **'Quick spread'**
  String get quick_spread;

  /// No description provided for @classic_spreads.
  ///
  /// In en, this message translates to:
  /// **'Classic spreads'**
  String get classic_spreads;

  /// No description provided for @thematic_spreads.
  ///
  /// In en, this message translates to:
  /// **'Thematic spreads'**
  String get thematic_spreads;

  /// No description provided for @card_combination.
  ///
  /// In en, this message translates to:
  /// **'Card Combination'**
  String get card_combination;

  /// No description provided for @card_meanings.
  ///
  /// In en, this message translates to:
  /// **'Card Meanings'**
  String get card_meanings;

  /// No description provided for @training.
  ///
  /// In en, this message translates to:
  /// **'Training'**
  String get training;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @view.
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get view;

  /// No description provided for @select_card.
  ///
  /// In en, this message translates to:
  /// **'Select a card'**
  String get select_card;

  /// No description provided for @please_select_cards.
  ///
  /// In en, this message translates to:
  /// **'Please select different cards in all fields.'**
  String get please_select_cards;

  /// No description provided for @good_day.
  ///
  /// In en, this message translates to:
  /// **'Good day,\nSelect cards to learn their combination and meaning'**
  String get good_day;

  /// No description provided for @language_hint.
  ///
  /// In en, this message translates to:
  /// **'For full personalization of spreads'**
  String get language_hint;

  /// No description provided for @quickReading.
  ///
  /// In en, this message translates to:
  /// **'Quick Reading'**
  String get quickReading;

  /// No description provided for @comingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming soon'**
  String get comingSoon;

  /// No description provided for @onboarding_notifications_title.
  ///
  /// In en, this message translates to:
  /// **'🔔 Want to get \'Card of the Day\' and new spreads?'**
  String get onboarding_notifications_title;

  /// No description provided for @onboarding_notifications_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Please allow notifications (no spam).'**
  String get onboarding_notifications_subtitle;

  /// No description provided for @onboarding_notifications_allow.
  ///
  /// In en, this message translates to:
  /// **'ALLOW'**
  String get onboarding_notifications_allow;

  /// No description provided for @onboarding_notifications_decline.
  ///
  /// In en, this message translates to:
  /// **'DECLINE'**
  String get onboarding_notifications_decline;

  /// No description provided for @suggested_questions_chat_1.
  ///
  /// In en, this message translates to:
  /// **'How can I overcome this period?'**
  String get suggested_questions_chat_1;

  /// No description provided for @suggested_questions_chat_2.
  ///
  /// In en, this message translates to:
  /// **'How can I achieve my goals?'**
  String get suggested_questions_chat_2;

  /// No description provided for @suggested_questions_chat_3.
  ///
  /// In en, this message translates to:
  /// **'What are my strengths?'**
  String get suggested_questions_chat_3;

  /// No description provided for @suggested_questions_chat_4.
  ///
  /// In en, this message translates to:
  /// **'How and what influences me?'**
  String get suggested_questions_chat_4;

  /// No description provided for @onboarding_final_title.
  ///
  /// In en, this message translates to:
  /// **'All done!'**
  String get onboarding_final_title;

  /// No description provided for @onboarding_final_subtitle.
  ///
  /// In en, this message translates to:
  /// **'To support the project, we show ads. BUT if you don\'t want to, you can subscribe'**
  String get onboarding_final_subtitle;

  /// No description provided for @onboarding_final_benefits.
  ///
  /// In en, this message translates to:
  /// **'No ads\nUnlimited spreads\nUnlimited learning'**
  String get onboarding_final_benefits;

  /// No description provided for @onboarding_final_yearly.
  ///
  /// In en, this message translates to:
  /// **'Yearly'**
  String get onboarding_final_yearly;

  /// No description provided for @onboarding_final_badge.
  ///
  /// In en, this message translates to:
  /// **'Save 50%'**
  String get onboarding_final_badge;

  /// No description provided for @onboarding_final_yearly_price.
  ///
  /// In en, this message translates to:
  /// **'249/year'**
  String get onboarding_final_yearly_price;

  /// No description provided for @onboarding_final_yearly_month.
  ///
  /// In en, this message translates to:
  /// **'\$24/mo'**
  String get onboarding_final_yearly_month;

  /// No description provided for @onboarding_final_trial.
  ///
  /// In en, this message translates to:
  /// **'5 days free'**
  String get onboarding_final_trial;

  /// No description provided for @onboarding_final_trial_price.
  ///
  /// In en, this message translates to:
  /// **'then \$9/mo'**
  String get onboarding_final_trial_price;

  /// No description provided for @onboarding_final_trial_month.
  ///
  /// In en, this message translates to:
  /// **'\$9/mo'**
  String get onboarding_final_trial_month;

  /// No description provided for @onboarding_final_note.
  ///
  /// In en, this message translates to:
  /// **'Subscription is optional and renews automatically. You can cancel at any time'**
  String get onboarding_final_note;

  /// No description provided for @onboarding_final_choose_yearly.
  ///
  /// In en, this message translates to:
  /// **'Choose yearly'**
  String get onboarding_final_choose_yearly;

  /// No description provided for @onboarding_final_choose_trial.
  ///
  /// In en, this message translates to:
  /// **'Choose 5 days free'**
  String get onboarding_final_choose_trial;

  /// No description provided for @onboarding_final_or.
  ///
  /// In en, this message translates to:
  /// **'OR'**
  String get onboarding_final_or;

  /// No description provided for @onboarding_final_continue_ads.
  ///
  /// In en, this message translates to:
  /// **'CONTINUE WITH ADS'**
  String get onboarding_final_continue_ads;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'nl', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'nl': return AppLocalizationsNl();
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
