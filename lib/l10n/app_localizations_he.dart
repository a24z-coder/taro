// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get main_title => 'חזה ולמד טארוט';

  @override
  String get your_name => 'השם שלך';

  @override
  String get personalization_hint =>
      'שאל שאלות ל-AI טארולוג וקבל פריסות מותאמות אישית';

  @override
  String get start_button => 'התחל';

  @override
  String get language => 'שפה';

  @override
  String get continueBtn => 'המשך';

  @override
  String get card_of_the_day => 'קלף היום';

  @override
  String get description => 'תיאור';

  @override
  String get spreads => 'פריסות';

  @override
  String get quick_spread => 'פריסה מהירה';

  @override
  String get classic_spreads => 'פריסות קלאסיות';

  @override
  String get thematic_spreads => 'פריסות נושאיות';

  @override
  String get card_combination => 'שילוב קלפים';

  @override
  String get card_meanings => 'משמעות הקלפים';

  @override
  String get training => 'הדרכה';

  @override
  String get welcome => 'ברוכים הבאים';

  @override
  String get today => 'היום';

  @override
  String get view => 'צפה';

  @override
  String get select_card => 'בחר כרטיס';

  @override
  String get please_select_cards => 'אנא בחר כרטיסים שונים בכל השדות.';

  @override
  String get good_day =>
      'יום טוב,\nבחרו קלפים כדי לגלות את השילוב והמשמעות שלהם';

  @override
  String get language_hint => 'להתאמה אישית מלאה של הפירושים';

  @override
  String get quickReading => 'פירוש מהיר';

  @override
  String get comingSoon => 'זמין בקרוב';

  @override
  String get onboarding_notifications_title =>
      '🔔 רוצים לא לפספס את «קלף היום» ופירושים חדשים?';

  @override
  String get onboarding_notifications_subtitle =>
      'אנא הסכימו לקבלת התראות (ללא ספאם).';

  @override
  String get onboarding_notifications_allow => 'להסכים';

  @override
  String get onboarding_notifications_decline => 'לדחות';

  @override
  String get suggested_questions_chat_1 => 'ספר לי על חיי האהבה שלי';

  @override
  String get suggested_questions_chat_2 => 'מה יקרה בקריירה שלי?';

  @override
  String get suggested_questions_chat_3 => 'איך אני יכול להשתפר?';

  @override
  String get suggested_questions_chat_4 => 'אילו הזדמנויות מחכות לי בעתיד?';

  @override
  String get onboarding_final_title => 'הכל מוכן!';

  @override
  String get onboarding_final_subtitle =>
      'כדי לתמוך בפרויקט אנחנו מציגים פרסומות. אבל אם אינך רוצה, תוכל להירשם';

  @override
  String get onboarding_final_benefits =>
      'ללא פרסומות\nפריסות ללא הגבלה\nלמידה ללא הגבלה';

  @override
  String get onboarding_final_yearly => 'שנתי';

  @override
  String get onboarding_final_badge => 'חיסכון של 50%';

  @override
  String get onboarding_final_yearly_price => '249/שנה';

  @override
  String get onboarding_final_yearly_month => '24/חודש';

  @override
  String get onboarding_final_trial => '7 ימים חינם';

  @override
  String get onboarding_final_trial_price => 'אחר כך 9/חודש';

  @override
  String get onboarding_final_trial_month => 'חודשי';

  @override
  String get onboarding_final_note =>
      'המנוי אינו חובה ומתחדש אוטומטית. ניתן לבטל בכל עת';

  @override
  String get onboarding_final_choose_yearly => 'בחר שנתי';

  @override
  String get onboarding_final_choose_trial => 'בחר 7 ימים חינם';

  @override
  String get onboarding_final_or => 'או';

  @override
  String get onboarding_final_continue_ads => 'להמשיך עם פרסומות';

  @override
  String get main_screen_greeting => 'שלום';

  @override
  String main_screen_date_today(Object date) {
    return 'היום, $date';
  }

  @override
  String get main_screen_card_of_day_title => 'הקלף שלך להיום';

  @override
  String main_screen_card_of_day_description(Object cardName) {
    return 'קלף היום: $cardName';
  }

  @override
  String get main_screen_card_of_day_description_empty => 'קלף היום:';

  @override
  String get main_screen_card_of_day_status_viewed => 'פתוח';

  @override
  String get main_screen_card_of_day_status_view => 'לצפות';

  @override
  String get main_screen_section_spreads => 'פריסות';

  @override
  String get main_screen_section_training => 'לימוד';

  @override
  String get main_screen_section_entertainment => 'בידור';

  @override
  String get main_screen_quick_spread_title => 'פריסה מהירה';

  @override
  String get main_screen_quick_spread_description =>
      'בלחיצות ספורות תקבלו תשובה ברורה לשאלתכם עם קלף אחד';

  @override
  String get main_screen_thematic_spreads_title => 'פריסות נושאיות';

  @override
  String get main_screen_thematic_spreads_description =>
      'תבניות מוכנות לתחומים חשובים: אהבה, קריירה, בריאות, טיולים';

  @override
  String get main_screen_card_combination_title => 'שילוב קלפים';

  @override
  String get main_screen_fun_spread_title => 'פירוש קלפים מצחיק';

  @override
  String get main_screen_fun_spread_description =>
      'הרימו את המצב רוח, עשו פירוש קלפים מצחיק ושתפו ברשתות החברתיות';

  @override
  String get main_screen_love_badge => 'אהבה';

  @override
  String get card_combination_screen_title => 'שילוב קלפים';

  @override
  String get card_combination_screen_greeting =>
      'צהריים טובים, בחר קלפים כדי לגלות את השילוב והמשמעות';

  @override
  String get card_combination_screen_card_hint => 'קלף';

  @override
  String get card_combination_screen_get_combination_button => 'לגלות שילוב';

  @override
  String get card_combination_screen_new_spread_button => 'לעשות פריסה חדשה';

  @override
  String get card_combination_screen_fill_all_fields_error =>
      'אנא מלא את כל שדות הכרטיסים.';

  @override
  String get card_combination_screen_invalid_cards_error =>
      'אנא בחר כרטיסים רק מהרשימה המוצעת. כרטיסים שגויים:';

  @override
  String get card_combination_screen_duplicate_cards_error =>
      'אנא בחר כרטיסים שונים בכל השדות.';

  @override
  String get card_combination_screen_general_error =>
      'שגיאה: לא ניתן לקבל תגובה. נסה שוב.';

  @override
  String get card_combination_screen_disclaimer =>
      'האפליקציה משתמשת בבינה מלאכותית למטרות בידור בלבד. אנו לא אחראים על ההחלטות שלך. במידת הצורך פנה למומחה.';

  @override
  String card_combination_screen_prompt(Object cards, Object lang) {
    return 'נתח את שילוב קלפי הטארוט: $cards. ספק ניתוח מיסטי עמוק של האינטראקציה ביניהם ועצה כללית. התשובה תהיה כולה בשפה $lang. ללא ברכות וסיכומים.';
  }

  @override
  String get quick_reading_screen_title => 'פריסה מהירה';

  @override
  String get quick_reading_screen_select_card => 'בחר קלף';

  @override
  String get quick_reading_screen_get_answer_button => 'גלה את התשובה';

  @override
  String get quick_reading_screen_what_is_quick_spread => 'מהי פריסה מהירה?';

  @override
  String get quick_reading_screen_quick_spread_explanation =>
      'פריסה מהירה היא פריסת אקספרס (תשובה: כן או לא) שעוזרת לקבל מייד תשובה ברורה לשאלה מסוימת או לאווירה הכללית של היום. מושלם כשצריך השראה או עצה מהירה \"כאן ועכשיו\".';

  @override
  String get quick_reading_screen_understand_button => 'מובן';

  @override
  String get quick_reading_result_screen_generating_response => 'יוצר תשובה...';

  @override
  String quick_reading_result_screen_error_generating(Object error) {
    return 'שגיאה ביצירת התשובה: $error';
  }

  @override
  String quick_reading_result_screen_error_generating_response(Object e) {
    return 'שגיאה ביצירת התשובה: $e';
  }

  @override
  String get quick_reading_result_screen_what_is_quick_spread =>
      'מה זה פריסה מהירה?';

  @override
  String get quick_reading_result_screen_quick_spread_explanation =>
      'פריסה מהירה היא פריסת אקספרס (תשובה: כן או לא) שעוזרת לקבל מענה ברור מיידי לשאלה מסוימת או לאווירה הכללית של היום. מושלם כשצריך השראה או עצה מהירה \"כאן ועכשיו\".';

  @override
  String get quick_reading_result_screen_understand_button => 'מובן';

  @override
  String get quick_reading_result_screen_quick_spread_title => 'פריסה מהירה';

  @override
  String get quick_reading_result_screen_new_spread_button => 'פריסה חדשה';

  @override
  String get quick_reading_result_screen_disclaimer =>
      'האפליקציה משתמשת בבינה מלאכותית אך ורק למטרות בידור. אנו לא נושאים באחריות על ההחלטות שאתה מקבל. במידת הצורך פנה למומחה.';

  @override
  String quick_reading_result_screen_prompt(Object cardName, Object userName) {
    return 'אתה טארולוג מנוסה. המשתמש $userName שלף את הקלף — $cardName. תחילה כתוב בשורה חדשה את המשפט: תשובת הקלפים: ואחריו במילה אחת את התשובה \"כן\" או \"לא\". לאחר מכן הוסף פרשנות מקיפה של 120–150 מילים: 7–8 משפטים על למה האנרגיה של $cardName מובילה לתשובה כזו ומה זה אומר באופן אישי עבור $userName. הזכר את השם $userName לפחות פעמיים, הוסף 1–2 אימוג\'ים בנושא, הימנע מסימני *, # וכל סימון; כתוב בטון פשוט ודיבורי.';
  }

  @override
  String get career_finance_spread_screen_request_accepted =>
      'הבקשה שלך התקבלה. אנא פתח את הקלפים';

  @override
  String get career_finance_spread_screen_error_getting_value =>
      'שגיאה בקבלת ערך הפירוש. נסה שוב.';

  @override
  String get career_finance_spread_screen_what_is_career_finance =>
      'מהו הפירוש קריירה וכספים?';

  @override
  String get career_finance_spread_screen_career_finance_explanation =>
      'התפיסה הזו עוזרת לנתח את התחום המקצועי והכלכלי. תגלו על הזדמנויות, מכשולים ופרספקטיבות לצמיחה.';

  @override
  String get career_finance_spread_screen_understand_button => 'מובן';

  @override
  String get career_finance_spread_screen_learn_meaning_button =>
      'לגלות משמעות';

  @override
  String get career_finance_spread_screen_career_finance_title =>
      'קריירה וכספים';

  @override
  String get career_finance_spread_screen_new_spread_button =>
      'לעשות תפיסה חדשה';

  @override
  String get career_finance_spread_screen_disclaimer =>
      'האפליקציה משתמשת בבינה מלאכותית אך ורק למטרות בידור. אנו לא נושאים באחריות להחלטות שקיבלתם. במידת הצורך פנו למומחה.';

  @override
  String get career_finance_spread_screen_enter_question_hint =>
      'הקלד את שאלתך...';

  @override
  String get pros_cons_spread_screen_what_is_pros_cons =>
      'מהו הפירוש של הפירוש \"בעד ונגד\"?';

  @override
  String get pros_cons_spread_screen_pros_cons_title => 'פירוש \"בעד ונגד\"';

  @override
  String get pros_cons_spread_screen_enter_question_hint => 'הקלד את שאלתך...';

  @override
  String get self_development_balance_spread_screen_self_development_explanation =>
      'פיזור \"התפתחות עצמית ואיזון\" מורכב מ-7 קלפים, הממוקמים בצורת מעגל. כל קלף מסמל היבט מסוים של הצמיחה הרוחנית וההרמוניה הפנימית שלך.';

  @override
  String get card_meanings_screen_major_arcana => 'ארקנות גדולות';

  @override
  String get card_meanings_screen_wands => 'מטות';

  @override
  String get card_meanings_screen_cups => 'גביעים';

  @override
  String get card_meanings_screen_swords => 'חרבות';

  @override
  String get card_meanings_screen_pentacles => 'מטבעות';

  @override
  String get card_meanings_screen_title => 'משמעות הקלפים';

  @override
  String get love_spread_screen_new_spread_button => 'לעשות פריסה חדשה';

  @override
  String get love_spread_screen_enter_question_hint => 'הכנס את שאלתך...';

  @override
  String purchase_love_screen_test_stub(Object plan) {
    return 'תבנית בדיקה: התוכנית שנבחרה היא \"$plan\"';
  }

  @override
  String get purchase_love_screen_love_tariff_title => 'תעריף אהבה';

  @override
  String get ad_promo_block_tariff => 'תעריף';

  @override
  String get ad_promo_block_love => 'אהבה';

  @override
  String get ad_promo_block_promotion_70 => 'מבצע -50%';

  @override
  String get ad_promo_block_no_ads => '• ללא פרסומות';

  @override
  String get ad_promo_block_no_limits => '• ללא הגבלות';

  @override
  String three_cards_screen_title(Object cards) {
    return '3 קלפים בפריסה';
  }

  @override
  String get three_cards_screen_initial_message =>
      'שלום, אנא כתוב את הבקשה שלך למטה:';

  @override
  String get three_cards_screen_request_accepted =>
      'הבקשה שלך התקבלה. אנא פתח את הקלפים';

  @override
  String get three_cards_screen_suggested_questions_1 =>
      'מה הבעיה העיקרית שלי כרגע?';

  @override
  String get three_cards_screen_suggested_questions_2 =>
      'על מה כדאי לי להתמקד בעתיד הקרוב?';

  @override
  String get three_cards_screen_suggested_questions_3 => 'מה מוסתר ממני?';

  @override
  String get three_cards_screen_see_meaning_button => 'לגלות משמעות';

  @override
  String get three_cards_screen_new_spread_button => 'פריסה חדשה';

  @override
  String get three_cards_screen_enter_question_hint => 'הזן את הבקשה שלך...';

  @override
  String get three_cards_screen_what_is_three_cards =>
      'מה זה פריסה של 3 קלפים?';

  @override
  String get three_cards_screen_three_cards_explanation =>
      'פריסה קלאסית שמראה את העבר, ההווה והעתיד של המצב שלך. הקלף הראשון — העבר, השני — ההווה, השלישי — העתיד.';

  @override
  String get three_cards_screen_understand_button => 'מובן';

  @override
  String get three_cards_screen_error_getting_value =>
      'שגיאה בקבלת ערך הפריסה. נסה שוב.';

  @override
  String get three_cards_screen_disclaimer =>
      'האפליקציה משתמשת בבינה מלאכותית למטרות בידור בלבד. איננו אחראים על ההחלטות שתקבל. במידת הצורך, פנה למומחה.';

  @override
  String get five_cards_screen_title => '5 קלפים בפריסה';

  @override
  String get five_cards_screen_initial_message =>
      'שלום, אנא כתוב את בקשתך למטה:';

  @override
  String get five_cards_screen_request_accepted =>
      'הבקשה שלך התקבלה. אנא פתח את הקלפים';

  @override
  String get five_cards_screen_suggested_questions_1 => 'איזה דרך עלי לבחור?';

  @override
  String get five_cards_screen_suggested_questions_2 =>
      'מה מונע ממני להשיג את המטרה?';

  @override
  String get five_cards_screen_suggested_questions_3 => 'אילו אפשרויות יש לי?';

  @override
  String get five_cards_screen_see_meaning_button => 'לגלות את המשמעות';

  @override
  String get five_cards_screen_new_spread_button => 'לעשות פריסה חדשה';

  @override
  String get five_cards_screen_enter_question_hint => 'הזן את הבקשה שלך...';

  @override
  String get five_cards_screen_what_is_five_cards => 'מהי פריסה של 5 קלפים?';

  @override
  String get five_cards_screen_five_cards_explanation =>
      'פריסה של 5 קלפים היא סכימה קומפקטית שפותחת חמישה היבטים מרכזיים של המצב: העבר, ההווה, השפעות נסתרות, עוזר/מכשול ותוצאה סבירה.';

  @override
  String get five_cards_screen_understand_button => 'מובן';

  @override
  String get five_cards_screen_error_getting_value =>
      'שגיאה בקבלת ערך הפריסה. נסה שוב.';

  @override
  String get five_cards_screen_disclaimer =>
      'האפליקציה משתמשת בבינה מלאכותית אך ורק למטרות בידור. איננו אחראים על ההחלטות שתקבל. במידת הצורך פנה למומחה.';

  @override
  String get celtic_cross_screen_title => 'צלב קלטי';

  @override
  String get celtic_cross_screen_initial_message =>
      'שלום, אנא כתוב את הבקשה שלך למטה:';

  @override
  String get celtic_cross_screen_suggested_questions_1 =>
      'מה הבעיה העיקרית שלי כרגע?';

  @override
  String get celtic_cross_screen_suggested_questions_2 =>
      'על מה כדאי לי להתמקד בעתיד הקרוב?';

  @override
  String get celtic_cross_screen_suggested_questions_3 => 'מה מוסתר ממני?';

  @override
  String get celtic_cross_screen_see_meaning_button => 'לגלות משמעות';

  @override
  String get celtic_cross_screen_new_spread_button => 'לעשות פריסה חדשה';

  @override
  String get celtic_cross_screen_enter_question_hint => 'הזן את הבקשה שלך...';

  @override
  String get celtic_cross_screen_what_is_celtic_cross_dialog =>
      'מה זה צלב קלטי?';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_dialog =>
      '«צלב קלטי» הוא פריסה של 10 קלפים, שמנתחת את המצב מכל הצדדים: הנסיבות הנוכחיות, המכשולים, ההשפעות הפנימיות והחיצוניות, וכן הדינמיקה הקרובה והתוצאה הסופית. הקלפים מונחים לפי הסדר:\n1 - מצב — מהות השאלה כאן ועכשיו.\n2 - אתגר — מה שעוזר או מונע התקדמות.\n3 - תת-הכרה (שורש) — מניעים נסתרים וכוחות עמוקים.\n4 - עבר קרוב — אירועים שהובילו למצב הנוכחי.\n5 - מודע (מטרה) — מה שעליו מתמקדת תשומת הלב של הפונה כרגע.\n6 - עתיד קרוב — התפתחות צפויה בשבועות הקרובים.\n7 - «אני עצמי» — מצב פנימי, משאבים, יחס לשאלה.\n8 - סביבה — השפעות של אנשים ונסיבות סביב.\n9 - תקוות / פחדים — ציפיות, ספקות, רגשות חזקים.\n10 - סיכום — תוצאה אפשרית אם המגמות ימשיכו.\nפריסה זו מאפשרת לראות את «התמונה הגדולה»: איפה אתה עומד, מה מפריע או עוזר, אילו דחפים נסתרים פועלים מאחורי הקלעים ולאן הכל מתקדם הלאה.\nהתרשים של הפריסה מוצג בתמונה למטה.';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_image =>
      'assets/images/kelt.png';

  @override
  String get celtic_cross_screen_understand_button => 'מובן';

  @override
  String celtic_cross_screen_please_open_cards(Object cards) {
    return 'Your request has been received. Please open the cards';
  }

  @override
  String celtic_cross_screen_request_accepted(Object cards) {
    return 'הבקשה התקבלה, אנא פתח את $cards';
  }

  @override
  String get the_user => 'משתמש';

  @override
  String get good_day_please_write_your_question_below =>
      'צהריים טובים, אנא כתוב את הבקשה שלך למטה';

  @override
  String get errorGettingSpreadMeaning => 'שגיאה בקבלת ערך הפירוש. נסה שוב.';

  @override
  String get errorGettingSpreadMeaningPleaseTryAgain =>
      'שגיאה בקבלת ערך הפירוש. נסה שוב.';

  @override
  String get seeMeaning => 'לגלות את הערך';

  @override
  String get newSpread => 'לעשות פירוש חדש';

  @override
  String get enterYourQuestion => 'הזן את שאלתך...';

  @override
  String get enterQuestion => 'הזן את שאלתך...';

  @override
  String makeTarotReadingFor(Object lang) {
    return 'עשה עבור';
  }

  @override
  String get theUser => 'משתמש';

  @override
  String onTheseThreeCards(Object userName) {
    return 'פריסה לשלוש הקלפים האלה:';
  }

  @override
  String makeSelfDevelopmentAndBalanceTarotReadingFor(Object cards) {
    return 'עשה עבור $cards פריסת התפתחות עצמית ואיזון';
  }

  @override
  String get getAnswer => 'לגלות את התשובה';

  @override
  String get aboutTheSpread => 'על הפירוש';

  @override
  String get aboutSpreadDescription =>
      'פירוש זה עוזר לנתח את הצמיחה הרוחנית שלך ואת ההרמוניה הפנימית.';

  @override
  String get gotIt => 'מובן';

  @override
  String get selfDevelopmentAndBalance => 'התפתחות עצמית ואיזון';

  @override
  String get appUsageDisclaimer =>
      'האפליקציה משתמשת בבינה מלאכותית אך ורק למטרות בידור. אנו לא נושאים באחריות להחלטות שקיבלת. במידת הצורך פנה למומחה.';

  @override
  String get careerFinance => 'קריירה וכספים';

  @override
  String get fun_spread_screen_with_swear_words_title => 'עם קללות (18+)';

  @override
  String get fun_spread_screen_with_swear_words_subtitle => 'למי שאוהב ריגושים';

  @override
  String get fun_spread_screen_without_swear_words_title => 'ללא קללות';

  @override
  String get fun_spread_screen_without_swear_words_subtitle =>
      'פריסה שמחה ללא מילים גסות';

  @override
  String get fun_spread_screen_generating => 'מייצרים את הפריסה שלך...';

  @override
  String get card_name_the_fool => 'השוטה';

  @override
  String get card_name_the_magician => 'הקוסם';

  @override
  String get card_name_the_high_priestess => 'הכוהנת הגדולה';

  @override
  String get card_name_the_empress => 'הקיסרית';

  @override
  String get card_name_the_emperor => 'הקיסר';

  @override
  String get card_name_the_hierophant => 'הכוהן הגדול';

  @override
  String get card_name_the_lovers => 'המאוהבים';

  @override
  String get card_name_the_chariot => 'הרכב';

  @override
  String get card_name_strength => 'כוח';

  @override
  String get card_name_the_hermit => 'נזיר';

  @override
  String get ok_button => 'אישור';

  @override
  String get cancel_button => 'ביטול';

  @override
  String get analyzing_cards => 'מנתח קלפים...';

  @override
  String get yes_button => 'כן';

  @override
  String get no_button => 'לא';

  @override
  String get loading => 'טוען...';

  @override
  String get error => 'שגיאה';

  @override
  String get success => 'הצלחה';

  @override
  String get failed => 'נכשל';

  @override
  String get language_russian => 'רוסית';

  @override
  String get language_english_us => 'אנגלית (ארה\"ב)';

  @override
  String get language_english_gb => 'אנגלית (בריטניה)';

  @override
  String get card_name_wheel_of_fortune => 'גלגל המזל';

  @override
  String get card_name_justice => 'צדק';

  @override
  String get card_name_the_hanged_man => 'התלוי';

  @override
  String get card_name_death => 'מוות';

  @override
  String get card_name_temperance => 'מתינות';

  @override
  String get card_name_the_devil => 'השטן';

  @override
  String get card_name_the_tower => 'המגדל';

  @override
  String get card_name_the_star => 'כוכב';

  @override
  String get card_name_the_moon => 'ירח';

  @override
  String get card_name_the_sun => 'שמש';

  @override
  String get card_name_judgement => 'משפט';

  @override
  String get card_name_the_world => 'עולם';

  @override
  String get card_name_ace_of_wands => 'אס המטות';

  @override
  String get card_name_two_of_wands => 'שני המטות';

  @override
  String get card_name_three_of_wands => 'שלושת המטות';

  @override
  String get card_name_four_of_wands => 'ארבעת המטות';

  @override
  String get card_name_five_of_wands => 'חמשת המטות';

  @override
  String get card_name_six_of_wands => 'שש מטות';

  @override
  String get card_name_seven_of_wands => 'שבע מטות';

  @override
  String get card_name_eight_of_wands => 'שמונה מטות';

  @override
  String get card_name_nine_of_wands => 'תשעה מטות';

  @override
  String get card_name_ten_of_wands => 'עשר מטות';

  @override
  String get card_name_page_of_wands => 'נער המטות';

  @override
  String get card_name_knight_of_wands => 'אביר המטות';

  @override
  String get card_name_queen_of_wands => 'מלכת המטות';

  @override
  String get card_name_king_of_wands => 'מלך המטות';

  @override
  String get card_name_ace_of_cups => 'אס הגביעים';

  @override
  String get card_name_two_of_cups => 'שני גביעים';

  @override
  String get card_name_three_of_cups => 'שלושה גביעים';

  @override
  String get card_name_four_of_cups => 'ארבעה גביעים';

  @override
  String get card_name_five_of_cups => 'חמישה גביעים';

  @override
  String get card_name_six_of_cups => 'שישה גביעים';

  @override
  String get card_name_seven_of_cups => 'שבעת הגביעים';

  @override
  String get card_name_eight_of_cups => 'שמונת הגביעים';

  @override
  String get card_name_nine_of_cups => 'תשעת הגביעים';

  @override
  String get card_name_ten_of_cups => 'עשרת הגביעים';

  @override
  String get card_name_page_of_cups => 'הפייג\' של הגביעים';

  @override
  String get card_name_knight_of_cups => 'אביר הגביעים';

  @override
  String get card_name_queen_of_cups => 'מלכת הגביעים';

  @override
  String get card_name_king_of_cups => 'מלך הגביעים';

  @override
  String get card_name_ace_of_swords => 'אס החרבות';

  @override
  String get card_name_two_of_swords => 'שני החרבות';

  @override
  String get card_name_three_of_swords => 'שלוש חרבות';

  @override
  String get card_name_four_of_swords => 'ארבע חרבות';

  @override
  String get card_name_five_of_swords => 'חמש חרבות';

  @override
  String get card_name_six_of_swords => 'שש חרבות';

  @override
  String get card_name_seven_of_swords => 'שבע חרבות';

  @override
  String get card_name_eight_of_swords => 'שמונה חרבות';

  @override
  String get card_name_nine_of_swords => 'תשעה חרבות';

  @override
  String get card_name_ten_of_swords => 'עשר חרבות';

  @override
  String get card_name_page_of_swords => 'נער חרבות';

  @override
  String get card_name_knight_of_swords => 'אביר חרבות';

  @override
  String get card_name_queen_of_swords => 'מלכת החרבות';

  @override
  String get card_name_king_of_swords => 'מלך החרבות';

  @override
  String get card_name_ace_of_pentacles => 'אס המטבעות';

  @override
  String get card_name_two_of_pentacles => 'שני המטבעות';

  @override
  String get card_name_three_of_pentacles => 'שלושת המטבעות';

  @override
  String get card_name_four_of_pentacles => 'ארבע מטבעות';

  @override
  String get card_name_five_of_pentacles => 'חמש מטבעות';

  @override
  String get card_name_six_of_pentacles => 'שש מטבעות';

  @override
  String get card_name_seven_of_pentacles => 'שבע מטבעות';

  @override
  String get card_name_eight_of_pentacles => 'שמונה מטבעות';

  @override
  String get card_name_nine_of_pentacles => 'תשיעיית המטבעות';

  @override
  String get card_name_ten_of_pentacles => 'עשיריית המטבעות';

  @override
  String get card_name_page_of_pentacles => 'הפייג\' של המטבעות';

  @override
  String get card_name_knight_of_pentacles => 'האביר של המטבעות';

  @override
  String get card_name_queen_of_pentacles => 'מלכת המטבעות';

  @override
  String get card_name_king_of_pentacles => 'מלך המטבעות';

  @override
  String get quick_reading_screen_suggested_questions_1 =>
      'האם כדאי לי לעשות את זה?';

  @override
  String get quick_reading_screen_suggested_questions_2 =>
      'האם זה הנתיב הנכון?';

  @override
  String get quick_reading_screen_suggested_questions_3 => 'מה אני צריך לדעת?';

  @override
  String get monthly_forecast_spread_screen_see_meaning_button =>
      'לגלות משמעות';

  @override
  String get monthly_forecast_spread_screen_new_spread_button =>
      'לעשות פריסה חדשה';

  @override
  String get monthly_forecast_spread_screen_enter_question_hint =>
      'הזן את הבקשה שלך...';

  @override
  String get monthly_forecast_spread_screen_what_is_monthly_forecast =>
      'מה זה תחזית חודשית?';

  @override
  String get monthly_forecast_spread_screen_monthly_forecast_explanation =>
      'תחזית חודשית מציגה את האירועים והמגמות המרכזיים לחודש הקרוב. עוזרת להתכונן לשינויים ולנצל הזדמנויות.';

  @override
  String get monthly_forecast_spread_screen_understand_button => 'מובן';

  @override
  String get monthly_forecast_spread_screen_error_getting_value =>
      'שגיאה בקבלת ערך הפירוש. נסה שוב.';

  @override
  String get monthly_forecast_spread_screen_disclaimer =>
      'האפליקציה משתמשת בבינה מלאכותית אך ורק למטרות בידור. איננו אחראים על ההחלטות שאתה מקבל. במידת הצורך פנה למומחה.';

  @override
  String self_development_balance_spread_screen_prompt(
      Object cards, Object userName) {
    return 'עשה עבור $userName פירוש להתפתחות עצמית ואיזון עם שלוש הקלפים האלה: $cards';
  }

  @override
  String get error_getting_answer_try_again =>
      'שגיאה: לא ניתן לקבל תשובה. נסה שוב.';

  @override
  String get card_detail_screen_title => 'פרטי הקלף';

  @override
  String get card_detail_screen_general_meaning => 'משמעות כללית';

  @override
  String get card_detail_screen_reversed_meaning => 'משמעות הפוכה';

  @override
  String get card_detail_screen_symbolism => 'סימבוליזם';

  @override
  String get card_detail_screen_error_loading_text => 'שגיאת טעינת טקסט';

  @override
  String card_detail_screen_general_meaning_prompt(
      Object cardName, Object lang) {
    return 'תאר את המשמעות הכללית של קלף הטארוט \"$cardName\" בשפה $lang. כלול היסטוריה, סמליות ומשמעויות עיקריות.';
  }

  @override
  String card_detail_screen_reversed_meaning_prompt(
      Object cardName, Object lang) {
    return 'תאר את המשמעות ההפוכה של קלף הטארוט \"$cardName\" בשפה $lang. כלול משמעויות הפוכות ואזהרות.';
  }

  @override
  String card_detail_screen_symbolism_prompt(Object cardName, Object lang) {
    return 'תאר את הסימבוליזם של קלף הטארוט \"$cardName\" בשפה $lang. כלול פרטים על התמונה, הצבעים ומשמעותם.';
  }

  @override
  String card_detail_screen_description(Object cardName) {
    return 'תיאור קלף $cardName';
  }

  @override
  String get card_detail_screen_see_other_card_meaning =>
      'צפה במשמעות של קלף אחר';

  @override
  String get card_detail_screen_or => 'או';

  @override
  String get card_detail_screen_loading_language => 'טוען שפה...';

  @override
  String get card_detail_screen_see_card_meaning => 'צפה בערך הקלף';

  @override
  String get card_detail_screen_original_waite_text => 'הטקסט המקורי של וייט';

  @override
  String get card_detail_screen_no_original_text => 'אין טקסט מקורי';

  @override
  String card_of_the_day_screen_translate_card_name_prompt(
      Object cardName, Object languageCode) {
    return 'תרגם את שם הקלף טארוט \"$cardName\" ל-$languageCode. התשובה צריכה להכיל רק את השם המתורגם, ללא טקסט נוסף או סימני פיסוק.';
  }

  @override
  String card_of_the_day_screen_generate_description_prompt(
      Object cardName, Object name) {
    return 'אתה טארולוג מקצועי. כתוב מסר מעורר השראה \"קלף היום\" בשפת הבקשה הזו עבור המשתמש $name. שמור על המבנה והנפח.\n🌟 $name, קלף היום שלך הוא $cardName!\n🔑 מילות מפתח מרכזיות: <ציין 3–5 מילות מפתח קצרות>\n🃏 משמעות (≈45–50 מילים): תאר את האנרגיה העיקרית של הקלף וכיצד היא תתבטא היום אצל $name.\n💡 עצה (≈35–40 מילים): הצע פעולה או גישה ספציפית שתעזור ל-$name לנצל את האנרגיה הזו.\n✨ אישור חיובי (שורה אחת): אמירה חיובית שמתחילה ב\"אני…\".\nדרישות: אורך כולל 120–150 מילים, טון אזוטרי חם, 3–4 אימוג\'ים בנושא, ללא רשימות ב-HTML/Markdown; הפרד פסקאות בהפסקת שורה כפולה (\\n\\n).';
  }

  @override
  String get card_of_the_day_screen_title => 'קלף היום';

  @override
  String get card_of_the_day_screen_error_loading_card => 'שגיאה בטעינת הקלף';

  @override
  String career_finance_spread_screen_prompt(Object cards, Object userName) {
    return 'עשה ל-$userName פריסה לקריירה וכספים עם שלושת הקלפים האלה: $cards';
  }

  @override
  String get contact_us_title => 'כתוב לנו';

  @override
  String get contact_us_email_hint => 'האימייל שלך';

  @override
  String get contact_us_email_empty => 'הזן אימייל';

  @override
  String get contact_us_email_invalid => 'אימייל לא תקין';

  @override
  String get contact_us_message_hint => 'ההודעה שלך';

  @override
  String get contact_us_message_empty => 'הזן הודעה';

  @override
  String get contact_us_send_button => 'שלח';

  @override
  String get five_cards_spread_screen_what_is_five_cards_dialog =>
      'מה זה פריסה של 5 קלפים?';

  @override
  String get five_cards_spread_screen_five_cards_explanation_dialog =>
      'הפריסה הזו חושפת את כל הדרך של שאלתך:\nקלף 1 - העבר מראה את הנסיבות המקוריות,\nקלף 2 - ההווה — האנרגיה הנוכחית,\nקלף 3 - הנסתר חושף השפעות נסתרות,\nקלף 4 - העצה מציעה את הפעולה האופטימלית,\nקלף 5 - התוצאה חוזה את התוצאה הסבירה.';

  @override
  String get five_cards_spread_screen_understand_button => 'מובן';

  @override
  String get language_selection_screen_title => 'שפה';

  @override
  String get love_spread_screen_what_is_love_spread => 'מה זה פריסת אהבה?';

  @override
  String get love_spread_screen_love_spread_explanation =>
      'טריפלט אהבה הוא שלוש קלפים המסודרים משמאל לימין:\nקלף 1 - אתה — מראה את הרגשות, המוטיבציה והעמדה של השואל עצמו.\nקלף 2 - בן זוג — חושף את הרגשות, התכניות והנכונות של הצד השני.\nקלף 3 - דינמיקה / פוטנציאל — מתאר כיצד שתי האנרגיות מתקשרות כרגע ולאן היחסים עשויים להוביל בטווח הקרוב.';

  @override
  String get love_spread_screen_understand_button => 'מובן';

  @override
  String get main_screen_your_plan_trial => 'התכנית שלך: ניסיון (עם פרסומות)';

  @override
  String get main_screen_no_ads => '• ללא פרסומות';

  @override
  String get main_screen_no_limits => '• ללא הגבלות';

  @override
  String get main_screen_shop_soon => 'חנות (בקרוב)';

  @override
  String get main_screen_notification_settings => 'הגדרות התראות';

  @override
  String get main_screen_language_selection => 'בחירת שפה';

  @override
  String get main_screen_rate_app => 'דרג את האפליקציה';

  @override
  String get main_screen_contact_us => 'צור קשר';

  @override
  String get main_screen_classic_spreads_title => 'פריסות קלאסיות';

  @override
  String get main_screen_classic_spreads_description =>
      'פריסות של 2 / 3 / 5 קלפים וצלב קלטי מלא ומפורט';

  @override
  String get main_screen_card_meanings_title => 'משמעות הקלפים';

  @override
  String get main_screen_card_meanings_description =>
      'מדריך מלא למשמעויות הישרות וההפוכות של כל הארקנות הגדולות והקטנות';

  @override
  String get main_screen_card_combination_description =>
      '\"מחשבון טארוט\" בחרו קלפים וקבלו ניתוח מעמיק של הקשרים';

  @override
  String get notification_settings_screen_title => 'הגדרות התראות';

  @override
  String get notification_settings_screen_frequency_question =>
      'באיזו תדירות תרצה לקבל התראה על קלף היום?';

  @override
  String get notification_settings_screen_every_day => 'כל יום';

  @override
  String get notification_settings_screen_every_three_days =>
      'פעם בכל שלושה ימים';

  @override
  String get notification_settings_screen_every_week => 'פעם בשבוע';

  @override
  String get notification_settings_screen_time_question => 'באיזו שעה ביום?';

  @override
  String get notification_settings_screen_morning => 'בבוקר';

  @override
  String get notification_settings_screen_day => 'בצהריים';

  @override
  String get notification_settings_screen_evening => 'בערב';

  @override
  String get notification_settings_screen_save_button => 'שמור';

  @override
  String get onboarding_final_screen_yearly_price => '249/שנה';

  @override
  String get onboarding_final_screen_yearly_month_price => '24/חודש';

  @override
  String get onboarding_final_screen_monthly_price => '9/חודש';

  @override
  String get onboarding_final_screen_monthly_month_price => '9/חודש';

  @override
  String get onboarding_final_screen_yearly_plan => 'שנתי';

  @override
  String get onboarding_final_screen_free_trial => '7 ימים חינם';

  @override
  String get onboarding_final_screen_purchase_title => 'קנייה';

  @override
  String onboarding_final_screen_test_stub_message(Object plan) {
    return 'כיסוי ניסיוני: נבחר התעריף \"$plan\"';
  }

  @override
  String get onboarding_final_screen_ok_button => 'אישור';

  @override
  String get purchase_love_screen_yearly_price => '249/שנה';

  @override
  String get purchase_love_screen_yearly_month_price => '24/חודש';

  @override
  String get purchase_love_screen_monthly_price => 'חודשי';

  @override
  String get purchase_love_screen_monthly_month_price => '9/חודש';

  @override
  String get purchase_love_screen_title => 'קנייה';

  @override
  String get purchase_love_screen_ok_button => 'אישור';

  @override
  String quick_reading_screen_error_no_image_file_found(Object cardName) {
    return 'שגיאה: קובץ התמונה לא נמצא עבור הכרטיס: $cardName';
  }

  @override
  String get please_fill_all_fields => 'אנא מלא את כל שדות הכרטיסים.';

  @override
  String get please_select_cards_only_from_suggested_list =>
      'אנא בחר כרטיסים רק מהרשימה המוצעת. כרטיסים שגויים:';

  @override
  String get please_select_different_cards_in_all_fields =>
      'אנא בחר כרטיסים שונים בכל השדות.';

  @override
  String get card => 'קלף';

  @override
  String get get_combination => 'לגלות שילוב';

  @override
  String get new_spread => 'לעשות פריסה חדשה';

  @override
  String get app_uses_ai_for_entertainment_purposes =>
      'האפליקציה משתמשת בבינה מלאכותית למטרות בידור בלבד. אנו לא אחראים על ההחלטות שאתה מקבל. במידת הצורך פנה למומחה.';

  @override
  String get career_finance_spread_screen_what_is_career_finance_spread =>
      'מהי פריסת קריירה וכספים?';

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
      Object userQuestion) {
    return 'אתה טארולוג מנוסה. המשתמש $userName שואל: \"$userQuestion\". השב באמצעות פריסת \"צלב קלטי\" (הסכמה הקלאסית של וייט). הקלפים הועברו כך: מצב - $situationCard; אתגר - $challengeCard; תת מודע - $subconsciousCard; עבר קרוב - $pastCard; מודע - $consciousCard; עתיד קרוב - $hiddenCard; אני פנימי - $selfCard; סביבה - $environmentCard; תקוות או פחדים - $hopesCard; תוצאה - $outcomeCard. הזכר את השם $userName לפחות שש פעמים וחייב לקשר כל קלף לשאלה. שמור על המבנה:\n1) ברכה בשם $userName.\n2) כותרת: פריסה: מצב ($situationCard) / אתגר ($challengeCard) / תת מודע ($subconsciousCard) / עבר קרוב ($pastCard) / מודע ($consciousCard) / עתיד קרוב ($hiddenCard) / אני פנימי ($selfCard) / סביבה ($environmentCard) / תקוות/פחדים ($hopesCard) / תוצאה ($outcomeCard).\n3) מצב — $situationCard (45-55 מילים): שלוש מילים מפתח, סמליות הקלף ומצב נוכחי לגבי השאלה $userQuestion עבור $userName.\n4) אתגר — $challengeCard (45-55 מילים): המכשול המרכזי או העזרה עבור $userName.\n5) תת מודע — $subconsciousCard (45-55 מילים): מניעים נסתרים או אנרגיות המשפיעות על $userName.\n6) עבר קרוב — $pastCard (45-55 מילים): אירועים שהובילו את $userName למצב הנוכחי.\n7) מודע — $consciousCard (45-55 מילים): מטרות, ציפיות או מה ש-$userName מודע לו.\n8) עתיד קרוב — $hiddenCard (45-55 מילים): התפתחות צפויה בשבועות הקרובים.\n9) אני פנימי — $selfCard (45-55 מילים): מצב, משאבים של $userName.\n10) סביבה — $environmentCard (45-55 מילים): השפעת אנשים ונסיבות.\n11) תקוות / פחדים — $hopesCard (45-55 מילים): ציפיות או חששות של $userName.\n12) תוצאה — $outcomeCard (45-55 מילים): תוצאה סבירה בהתחשב בעצת הפריסה.\n13) סיכום: תמיכה ידידותית ואישור חיובי (30-35 מילים) ל-$userName.\nדרישות: אורך כולל 400-500 מילים, טון שיחה חי ודינמי, 4-6 אימוג\'ים אזוטריים; הפרד כל בלוק בשורה ריקה כפולה (\n); אל תשתמש בסימני *, # או סימוני עיצוב אחרים; כתוב טקסט פשוט בלבד.';
  }

  @override
  String get celtic_cross_screen_unable_to_load_card => 'לא ניתן לטעון את הקלף';

  @override
  String get celticCrossTitle => 'צלב קלטי';

  @override
  String get chat_with_tarot_reader_screen_request_received =>
      'הבקשה שלך התקבלה. אנא פתח את הקלפים';

  @override
  String chat_with_tarot_reader_screen_prompt(
      Object hiddenCard,
      Object pastCard,
      Object presentCard,
      Object userName,
      Object userQuestion) {
    return 'אתה טארולוג מנוסה. המשתמש $userName שואל: \"$userQuestion\". השב באמצעות פריסת \"עבר - הווה - עתיד\". הקלפים הועברו כך: עבר - $pastCard; הווה - $presentCard; עתיד - $hiddenCard. הזכר את השם $userName לפחות ארבע פעמים וחייב לקשר את משמעות הקלפים לשאלה. שמור על המבנה:\n1) ברכה בשם $userName.\n2) כותרת: פריסה: עבר ($pastCard) - הווה ($presentCard) - עתיד ($hiddenCard).\n3) בלוק עבר — $pastCard (40-50 מילים): שלוש מילים מפתח, סמליות הקלף והסבר כיצד עובדות העבר משפיעות על תוצאת השאלה $userQuestion עבור $userName.\n4) בלוק הווה — $presentCard (40-50 מילים): מילים מפתח, סמליות הקלף והגורמים הנוכחיים המשפיעים על התשובה לשאלה $userQuestion.\n5) בלוק עתיד — $hiddenCard (40-50 מילים): מילים מפתח, סמליות הקלף ותסריט סביר להתפתחות המצב לגבי השאלה של $userName.\n6) סיכום: עצה קצרה, אישור חיובי (20-30 מילים) וסיכום ברור של הסיכויים.\nדרישות: אורך כולל 180-220 מילים, טון אזוטרי חם, 3-5 אימוג\'ים נושאיים; הפרד כל בלוק בשורה ריקה כפולה (\n); אסור להשתמש בסימני *, # או סימוני עיצוב אחרים; כתוב טקסט פשוט בלבד.';
  }

  @override
  String get see_meaning_button => 'לגלות את המשמעות';

  @override
  String three_cards_title(Object cards) {
    return '3 קלפים בפריסה';
  }

  @override
  String get new_spread_button => 'לעשות פריסה חדשה';

  @override
  String get disclaimer_text =>
      'האפליקציה משתמשת בבינה מלאכותית למטרות בידור בלבד. איננו אחראים על ההחלטות שתקבלו. במידת הצורך פנו למומחה.';

  @override
  String get enter_your_question => 'הקלד את שאלתך...';

  @override
  String get classic_spreads_screen_title => 'פריסות קלאסיות';

  @override
  String get classic_spreads_screen_three_cards_title => '3 קלפים';

  @override
  String get classic_spreads_screen_three_cards_description =>
      'עבר, הווה, עתיד';

  @override
  String get classic_spreads_screen_five_cards_title => '5 קלפים';

  @override
  String get classic_spreads_screen_five_cards_description =>
      'ניתוח מעמיק של המצב';

  @override
  String get classic_spreads_screen_celtic_cross_title => 'צלב קלטי';

  @override
  String get classic_spreads_screen_celtic_cross_description =>
      'פירוש מלא של 10 קלפים';

  @override
  String five_cards_screen_prompt(
      Object adviceCard,
      Object hiddenCard,
      Object outcomeCard,
      Object pastCard,
      Object presentCard,
      Object userName,
      Object userQuestion) {
    return 'אתה קורא טארוט מנוסה. המשתמש $userName שואל: \"$userQuestion\". השב באמצעות פריסת \"5 קלפים\". הקלפים ניתנים לפי הסדר: עבר - $pastCard; הווה - $presentCard; עתיד - $hiddenCard; סיבה - $adviceCard; תוצאה אפשרית - $outcomeCard. הסבר את המשמעות של כל קלף והסבר את המשמעות המשולבת שלהם.';
  }

  @override
  String get fiveCardsInSpread => '5 קלפים בפיזור';

  @override
  String get makeNewSpread => 'לעשות פיזור חדש';

  @override
  String get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMake =>
      'האפליקציה משתמשת בבינה מלאכותית אך ורק למטרות בידור. אנו לא נושאים באחריות להחלטות שקיבלת. במידת הצורך פנה למומחה.';

  @override
  String get requestReceivedPleaseOpenCards =>
      'הבקשה שלך התקבלה. אנא פתח את הקלפים';

  @override
  String love_spread_prompt(Object dynamicCard, Object partnerCard,
      Object userName, Object userQuestion, Object youCard) {
    return 'אתה טארולוג מנוסה. המשתמש $userName שואל: «$userQuestion». השב בעזרת פריסת אהבה משלוש קלפים. הקלפים הם כך: רגשות $userName — $youCard; רגשות השותף — $partnerCard; דינמיקה או פוטנציאל הקשר — $dynamicCard. הזכר את השם $userName לפחות שלוש פעמים וקשר כל קלף לשאלה. שמור על המבנה:\n1) ברכה בשם $userName.\n2) כותרת: פריסה: $youCard | $partnerCard | $dynamicCard.\n3) $youCard — 40–50 מילים: תאר מה הקלף אומר על רגשות והציפיות של $userName.\n4) $partnerCard — 40–50 מילים: חשוף את הרגשות והכוונות של השותף לגבי השאלה של $userName.\n5) $dynamicCard — 40–50 מילים: הצג כיצד שתי האנרגיות האלה מתקשרות ולאן הקשר יכול להוביל.\n6) סיכום: עצה חמה ואישור חיובי (20–25 מילים) עבור $userName.\nדרישות: אורך כולל 150–180 מילים, טון ידידותי ורומנטי, 2–4 אימוג\'ים בנושא; הפרד פסקאות בשתי שורות ריקות (\\n\\n); הימנע מסמלים *, # וכל סימון.';
  }

  @override
  String get loveSpread => 'פריסת אהבה';

  @override
  String get applicationUsesAIExclusivelyForEntertainmentWeDoNotTakeResponsibilityForDecisionsYouHaveMadeIfNeededPleaseConsultSpecialist =>
      'האפליקציה משתמשת בבינה מלאכותית אך ורק למטרות בידור. אנו לא נושאים באחריות להחלטות שקיבלת. במידת הצורך פנה למומחה.';

  @override
  String main_screen_greeting_with_name(Object name) {
    return 'שלום, $name';
  }

  @override
  String get main_screen_monday => 'יום שני';

  @override
  String get main_screen_tuesday => 'יום שלישי';

  @override
  String get main_screen_wednesday => 'יום רביעי';

  @override
  String get main_screen_thursday => 'יום חמישי';

  @override
  String get main_screen_friday => 'יום שישי';

  @override
  String get main_screen_saturday => 'שבת';

  @override
  String get main_screen_sunday => 'יום ראשון';

  @override
  String get main_screen_your_card_of_the_day => 'הקלף היומי שלך';

  @override
  String main_screen_card_of_the_day_with_name(Object cardName) {
    return 'קלף היום: $cardName';
  }

  @override
  String get main_screen_card_of_the_day => 'קלף היום:';

  @override
  String get main_screen_viewed => 'פתוח';

  @override
  String get main_screen_not_viewed => 'לצפות';

  @override
  String get main_screen_spreads => 'פריסות';

  @override
  String get main_screen_training => 'הדרכה';

  @override
  String get main_screen_entertainment => 'בידור';

  @override
  String get main_screen_glad_to_see_you_here => 'שמח לראות אותך כאן!';

  @override
  String get main_screen_quick_reading_title => 'פריסה מהירה';

  @override
  String get main_screen_quick_reading_description =>
      'בכמה נגיעות בלבד קבל תשובה ברורה לשאלתך עם קלף אחד';

  @override
  String get monthly_forecast_spread_screen_request_accepted =>
      'הבקשה שלך התקבלה. אנא פתח את הקלפים';

  @override
  String monthly_forecast_spread_screen_prompt(Object cards, Object userName) {
    return 'עשה עבור $userName תחזית חודשית לפי הקלפים האלה: $cards';
  }

  @override
  String get aboutSpread => 'על הפירוש';

  @override
  String get monthlyForecast => 'תחזית חודשית';

  @override
  String get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNecessaryPleaseConsultSpecialist =>
      'האפליקציה משתמשת בבינה מלאכותית למטרות בידור בלבד. אנו לא אחראים להחלטות שתקבלו. במידת הצורך פנו למומחה.';

  @override
  String purchase_love_screen_test_message(Object planName) {
    return 'כיסוי בדיקה: התוכנית שנבחרה היא \"$planName\"';
  }

  @override
  String get quick_reading_screen_what_is_quick_reading => 'מה זה פריסה מהירה?';

  @override
  String get quick_reading_screen_quick_reading_explanation =>
      'פריסה מהירה היא פריסת אקספרס (תשובה: כן או לא) שעוזרת לקבל מענה ברור מיידי לשאלה מסוימת או לאווירה הכללית של היום. מושלם כשצריך השראה או עצה מהירה \"כאן ועכשיו\".';

  @override
  String get self_development_balance_spread_screen_request_accepted =>
      'הבקשה שלך התקבלה. אנא פתח את הקלפים';

  @override
  String get self_development_balance_spread_screen_error_getting_value =>
      'שגיאה בקבלת ערך הפריסה. נסה שוב.';

  @override
  String get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNeededConsultSpecialist =>
      'האפליקציה משתמשת בבינה מלאכותית למטרות בידור בלבד. איננו אחראים על ההחלטות שאתה מקבל. במידת הצורך פנה למומחה.';

  @override
  String get thematic_spreads_screen_title => 'פריסות נושאיות';

  @override
  String get thematic_spreads_screen_love_spread_title => 'פריסת אהבה';

  @override
  String get thematic_spreads_screen_love_spread_description =>
      'ניתוח מערכות יחסים ורגשות';

  @override
  String get thematic_spreads_screen_career_finance_title => 'קריירה וכספים';

  @override
  String get thematic_spreads_screen_career_finance_description =>
      'ניתוח מקצועי וכספי';

  @override
  String get thematic_spreads_screen_pros_cons_title => 'בעד ונגד';

  @override
  String get thematic_spreads_screen_pros_cons_description =>
      'ניתוח יתרונות וחסרונות';

  @override
  String get thematic_spreads_screen_monthly_forecast_title => 'תחזית חודשית';

  @override
  String get thematic_spreads_screen_monthly_forecast_description =>
      'תחזית לפי חודשים';

  @override
  String get thematic_spreads_screen_self_development_title =>
      'התפתחות עצמית ואיזון';

  @override
  String get thematic_spreads_screen_self_development_description =>
      'צמיחה רוחנית והרמוניה';

  @override
  String get requestReceived => 'הבקשה שלך התקבלה. אנא פתח את הקלפים';

  @override
  String pros_cons_spread_prompt(Object cards, Object userName) {
    return 'עשה עבור $userName פריסה של בעד ונגד עם הקלפים האלה: $cards';
  }

  @override
  String get pros_cons_spread_screen_what_is_pros_cons_spread =>
      'מהי פריסת \"בעד ונגד\"?';

  @override
  String get pros_cons_spread_screen_pros_cons_spread_explanation =>
      'פריסת \"בעד ונגד\" עוזרת לנתח את היתרונות והחסרונות של המצב, כדי לקבל החלטה שקולה.';

  @override
  String get pros_cons_spread_screen_understand_button => 'מובן';

  @override
  String get prosConsSpreadTitle => 'פריסת \"בעד ונגד\"';

  @override
  String get spreadDisclaimer =>
      'האפליקציה משתמשת בבינה מלאכותית אך ורק למטרות בידור. אנו לא אחראים על ההחלטות שתקבלו. במידת הצורך פנו למומחה.';

  @override
  String get fun_spread_screen_generation_error =>
      'שגיאה ביצירת הפריסה. נסה שוב.';

  @override
  String get fun_spread_screen_share_error => 'שגיאה בשמירת התמונה.';

  @override
  String get fun_spread_screen_about_fun_spread => 'מה זה פריסה משעשעת?';

  @override
  String get fun_spread_screen_fun_spread_explanation =>
      'פריסה משעשעת היא שיטת חיזוי מיוחדת בקלפי טארוט, שמשלבת את העומק של פריסות מסורתיות עם גישה קלה וחיובית. היא תעזור לך להסתכל על המצב מזווית חדשה ולמצוא שמחה בחיים היומיומיים.';

  @override
  String get fun_spread_screen_understand_button => 'מובן';

  @override
  String get fun_spread_screen_title => 'פריסה משעשעת';

  @override
  String get fun_spread_screen_generate_button => 'צור פריסה';

  @override
  String get fun_spread_screen_share_button => 'לשתף';

  @override
  String get fun_spread_screen_new_button => 'פריסה חדשה';

  @override
  String get fun_spread_screen_share_text =>
      'תראו איזו פריסת טארוט מצחיקה קיבלתי באפליקציית Tarot AI!';

  @override
  String get ad_promo_tariff => 'תעריף';

  @override
  String get ad_promo_love => 'אהבה';

  @override
  String get ad_promo_discount => 'מבצע -50%';

  @override
  String get ad_promo_no_ads => '• ללא פרסומות';

  @override
  String get ad_promo_no_limits => '• ללא הגבלות';

  @override
  String get no_internet_error =>
      'האפליקציה שלנו פועלת רק עם אינטרנט. אנא הפעל Wi-Fi או אינטרנט נייד.';

  @override
  String fun_spread_screen_mate_prompt_3cards(Object userName) {
    return 'עשה פיזור טארוט מצחיק, חצוף ומלא קללות עם 3 קלפים עבור $userName. לכל קלף תן שם מצחיק וכתוב פסקה נפרדת: הקלף הראשון: <שם> — <תיאור מצחיק קצר>, הקלף השני: <שם> — <תיאור מצחיק קצר>, הקלף השלישי: <שם> — <תיאור מצחיק קצר>. השתמש בשפה גסה כדי להוסיף הומור, אבל אל תעליב. כל הטקסט לא יעלה על 7 משפטים.';
  }

  @override
  String fun_spread_screen_no_mate_prompt_3cards(Object userName) {
    return 'צור פיזור טארוט מצחיק עבור $userName עם 3 קלפים. עבור כל קלף המצא שם מצחיק וכתוב פסקה נפרדת: הקלף הראשון: <שם> — <תיאור קצר ומצחיק>, הקלף השני: <שם> — <תיאור קצר ומצחיק>, הקלף השלישי: <שם> — <תיאור קצר ומצחיק>. הפיזור צריך להיות משעשע אך עם משמעות עמוקה. רק 3 קלפים. כל הטקסט לא יעלה על 7 משפטים.';
  }

  @override
  String get fun_spread_screen_title_top => 'פיזור טארוט';

  @override
  String fun_spread_screen_title_for_name(Object name) {
    return 'ל-$name';
  }

  @override
  String get contact_us_screen_message_sent => 'ההודעה שלך התקבלה, תודה!';

  @override
  String get contact_us_screen_message_error => 'שגיאה בשליחת ההודעה';

  @override
  String get love_spread_screen_initial_message =>
      'שלום, אנא כתוב את שאלתך למטה:';

  @override
  String get main_screen_tariff => 'תעריף';

  @override
  String get main_screen_promo_50 => 'מבצע -50%';

  @override
  String get main_screen_rate_hint =>
      'אם חלון ההערכה לא הופיע, תוכל להשאיר ביקורת ב-Google Play.';

  @override
  String get main_screen_rate_error =>
      'לא ניתן לפתוח את Google Play. נסה שוב מאוחר יותר.';

  @override
  String get love_spread_screen_suggested_questions_1 =>
      'אילו רגשות יש לי כלפי האדם הזה?';

  @override
  String get love_spread_screen_suggested_questions_2 =>
      'מה מפריע למערכת היחסים שלנו?';

  @override
  String get love_spread_screen_suggested_questions_3 =>
      'איזה עתיד מחכה למערכת היחסים שלנו?';

  @override
  String get career_finance_spread_screen_suggested_questions_1 =>
      'אילו הזדמנויות מחכות לי בקריירה?';

  @override
  String get career_finance_spread_screen_suggested_questions_2 =>
      'איך לשפר את המצב הכלכלי שלי?';

  @override
  String get career_finance_spread_screen_suggested_questions_3 =>
      'האם כדאי לשנות עבודה?';

  @override
  String get pros_cons_spread_screen_suggested_questions_1 =>
      'האם כדאי לי לקבל את ההחלטה הזו?';

  @override
  String get pros_cons_spread_screen_suggested_questions_2 =>
      'מהם היתרונות והחסרונות של הבחירה הזו?';

  @override
  String get pros_cons_spread_screen_suggested_questions_3 =>
      'מה חשוב יותר במצב הזה?';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_1 =>
      'מה מחכה לי החודש הזה?';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_2 =>
      'אילו אירועים יקרו בקרוב?';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_3 =>
      'על מה כדאי להתמקד החודש?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_1 =>
      'איך להתפתח רוחנית?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_2 =>
      'מה מפריע לאיזון הפנימי שלי?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_3 =>
      'איך למצוא הרמוניה בחיים?';

  @override
  String career_three_card_prompt(Object adviceCard, Object challengeCard,
      Object situationCard, Object userName, Object userQuestion) {
    return 'אתה קורא קלפים ומאמן מנוסה. המשתמש $userName שואל: «$userQuestion». עשה פריסה של שלוש קלפים לקריירה וכספים. הקלפים מועברים כך: 1) מצב — $situationCard; 2) מכשול או הזדמנות מרכזית — $challengeCard; 3) עצה ופוטנציאל — $adviceCard. קבע את מין המשתמש לפי השם $userName ופנה אליו עם סיומות וכינויים נכונים. דבר עם $userName בחברותיות ובענייניות: הראה איפה הוא עומד, מה חוסם את הצמיחה (או איזו הזדמנות חשוב לשים לב אליה) ואיזה צעד מעשי יוביל להכנסה הרצויה. הזכר את השם $userName לפחות שלוש פעמים. שמור על המבנה:\n1) ברכה — משפט אחד.\n2) כותרת: פריסה: $situationCard | $challengeCard | $adviceCard.\n3) $situationCard — 45–55 מילים: תאר את המצב הנוכחי של $userName (עבודה, עסק או רקע כלכלי כללי) ואת הסמליות של הקלף.\n4) $challengeCard — 45–55 מילים: חשוף את המחסום העיקרי או הזדמנות לא ברורה; ציין כיצד זה משתקף בקלף ובשאלה של $userName.\n5) $adviceCard — 45–55 מילים: הצע פעולה קונקרטית (למשל, לבדוק מחדש את התקציב, לבקש העלאה, ללמוד מיומנות חדשה) ותאר את התוצאה האפשרית.\n6) סיום — 20–25 מילים: מסקנה ידידותית, אמירה חיובית ו-2 אימוג\'ים עסקיים.\nדרישות: אורך כולל 160–185 מילים, טון ברור ועסקי ללא סלנג, 2–3 אימוג\'ים; הפרד פסקאות עם שורה ריקה כפולה \\n\\n; אל תשתמש ב-*, # או סימני עיצוב אחרים.';
  }

  @override
  String pros_cons_three_card_prompt(Object adviceCard, Object conCard,
      Object proCard, Object userName, Object userQuestion) {
    return 'אתה קורא קלפים מנוסה. המשתמש $userName שואל: «$userQuestion». עשה פריסת \"בעד ונגד\" משלושה קלפים. הקלפים מועברים כך: יתרונות — $proCard; חסרונות — $conCard; עצה/סיכום — $adviceCard. קבע את מין המשתמש לפי השם $userName ופנה אליו עם סיומות וכינויים נכונים. הזכר את השם $userName לפחות שלוש פעמים וקשר כל קלף לשאלה. שמור על המבנה:\n1) ברכה בשם $userName.\n2) כותרת: פריסה: $proCard | $conCard | $adviceCard.\n3) יתרונות: $proCard — 45–55 מילים. חשוף את היתרונות המרכזיים או המשאבים החיוביים שהקלף מביא למצב של $userName.\n4) חסרונות: $conCard — 45–55 מילים. תאר סיכונים, עלויות נסתרות או נקודות תורפה של ההחלטה עבור $userName.\n5) עצה: $adviceCard — 45–55 מילים. שקול את היתרונות והחסרונות, הצע פעולה קונקרטית אחת (פועל + מושא) ואמר כיצד זה ישנה את התוצאה עבור $userName.\n6) סיכום — במילה אחת \"כן\" או \"לא\", אחריה משפט הסבר ואמירה מעודדת (20–25 מילים) עם 1–2 אימוג\'ים.\nדרישות: אורך כולל 150–180 מילים, טון ידידותי ושיחתי; הפרד כל בלוק עם שורה ריקה כפולה \\n\\n; ללא סימני *, # או עיצוב אחר.';
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
      Object userQuestion) {
    return 'אתה קורא קלפים מקצועי. המשתמש $userName שואל: «$userQuestion». הרכב פריסת \"גלגל החודש\" ל-$month. הקלפים לפי הסדר: 1 — $card1, 2 — $card2, 3 — $card3, 4 — $card4, 5 — $card5, 6 — $card6, 7 — $card7, 8 — $card8, 9 — $card9, 10 — $card10, 11 — $card11, 12 — $card12. קבע את מין $userName לפי השם והשתמש בסיומות וכינויים נכונים. הזכר את השם לפחות חמש פעמים, אך **אל תכניס אותו אחרי כל תאריך** — הזכר אותו רק בתוך הטקסט של העצות. השתמש ברשת לוח שנה של תאריכים: 1–3, 4–6, 7–9, 10–12, 13–15, 16–18, 19–21, 22–24, 25–26, 27–28, 29–30, 31 (אם בחודש יש 30 ימים — הקלף ה-12 שייך גם ליום ה-30). פורמט:\n1) ברכה בשם $userName (1–2 משפטים).\n2) הקדמה קצרה על מטרת הפריסה (משפט אחד).\n3–14) עבור כל קלף השתמש בשורה כמו \"1–3 $month — $card1\" (ללא שם): לאחר מכן 2–3 משפטים על האנרגיה המרכזית של התקופה ועצה מעשית, תוך הזכרת $userName באופן טבעי.\n15) סיכום: עצה כללית לחודש (כ-40 מילים) ואמירה מעוררת השראה עם 2–3 אימוג\'ים.\nדרישות: סך הכל 360–400 מילים; טון ידידותי ומעורר מוטיבציה; הפרד בלוקים עם שורה ריקה כפולה \\n\\n; ללא סימני *, #, רשימות או הערות טכניות.';
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
      Object userQuestion) {
    return 'אתה קורא קלפים ומאמן מנוסה. המשתמש $userName שואל: «$userQuestion». עשה פריסת \"התפתחות עצמית ואיזון\" משבעה קלפים. הקלפים ניתנים כך: ליבה — $coreCard; שכל — $mindCard; רגשות — $emotionCard; גוף — $bodyCard; משאב — $strengthCard; חסם — $challengeCard; עצה — $adviceCard. קבע את מין המשתמש לפי השם $userName ופנה אליו עם סיומות וכינויים נכונים. דבר בחיות ותמיכה, הזכר את השם $userName לפחות ארבע פעמים וחייב לקשר כל קלף לשאלה. שמור על המבנה והפורמט:\n1) ברכה בשם $userName.\n2) כותרת: פריסה: $coreCard | $mindCard | $emotionCard | $bodyCard | $strengthCard | $challengeCard | $adviceCard.\n3) $coreCard — תאר את המוקד המרכזי של ההתפתחות העצמית של $userName.\n4) $mindCard — ספר כיצד לכוון את המחשבה ומה ללמוד.\n5) $emotionCard — חשוף את המשאב הרגשי והמוטיבציה.\n6) $bodyCard — הצע כיצד לטפל בגוף ובאנרגיה.\n7) $strengthCard — הצג מתנה פנימית או תמיכה חיצונית.\n8) $challengeCard — ציין את חוסר האיזון המרכזי וסיבותיו.\n9) $adviceCard — הצע פעולה קונקרטית שמאחדת את כל ההיבטים.\n10) סיום: אמירה מעוררת השראה וברכת דרך חמה עם 2–3 אימוג\'ים.\nדרישות: כל סעיף 2–3 משפטים; הפרד בין סעיפים עם שורה ריקה כפולה \\n\\n; אל תשתמש ב-*, # או סימני עיצוב אחרים.';
  }

  @override
  String get main_screen_suggest_spread => 'איזו פריסה להוסיף? כתבו לנו';

  @override
  String get main_screen_disclaimer =>
      'האפליקציה משתמשת בבינה מלאכותית אך ורק למטרות בידור. אנחנו לא אחראים על ההחלטות שאתה מקבל. במידת הצורך, פנה למומחה.';

  @override
  String get month_january => 'ינואר';

  @override
  String get month_february => 'פברואר';

  @override
  String get month_march => 'מרץ';

  @override
  String get month_april => 'אפריל';

  @override
  String get month_may => 'מאי';

  @override
  String get month_june => 'יוני';

  @override
  String get month_july => 'יולי';

  @override
  String get month_august => 'אוגוסט';

  @override
  String get month_september => 'ספטמבר';

  @override
  String get month_october => 'אוקטובר';

  @override
  String get month_november => 'נובמבר';

  @override
  String get month_december => 'דצמבר';

  @override
  String get fun_share_button => 'שתף';

  @override
  String get fun_new_spread_button => 'פיזור חדש';
}

/// The translations for Hebrew, as used in Israel (`he_IL`).
class AppLocalizationsHeIl extends AppLocalizationsHe {
  AppLocalizationsHeIl() : super('he_IL');

  @override
  String get main_title => 'חזה ולמד טארוט';

  @override
  String get your_name => 'השם שלך';

  @override
  String get personalization_hint =>
      'שאל שאלות ל-AI טארולוג וקבל פריסות מותאמות אישית';

  @override
  String get start_button => 'התחל';

  @override
  String get language => 'שפה';

  @override
  String get continueBtn => 'המשך';

  @override
  String get card_of_the_day => 'קלף היום';

  @override
  String get description => 'תיאור';

  @override
  String get spreads => 'פריסות';

  @override
  String get quick_spread => 'פריסה מהירה';

  @override
  String get classic_spreads => 'פריסות קלאסיות';

  @override
  String get thematic_spreads => 'פריסות נושאיות';

  @override
  String get card_combination => 'שילוב קלפים';

  @override
  String get card_meanings => 'משמעות הקלפים';

  @override
  String get training => 'הדרכה';

  @override
  String get welcome => 'ברוכים הבאים';

  @override
  String get today => 'היום';

  @override
  String get view => 'צפה';

  @override
  String get select_card => 'בחר כרטיס';

  @override
  String get please_select_cards => 'אנא בחר כרטיסים שונים בכל השדות.';

  @override
  String get good_day =>
      'יום טוב,\nבחרו קלפים כדי לגלות את השילוב והמשמעות שלהם';

  @override
  String get language_hint => 'להתאמה אישית מלאה של הפירושים';

  @override
  String get quickReading => 'פירוש מהיר';

  @override
  String get comingSoon => 'זמין בקרוב';

  @override
  String get onboarding_notifications_title =>
      '🔔 רוצים לא לפספס את «קלף היום» ופירושים חדשים?';

  @override
  String get onboarding_notifications_subtitle =>
      'אנא הסכימו לקבלת התראות (ללא ספאם).';

  @override
  String get onboarding_notifications_allow => 'להסכים';

  @override
  String get onboarding_notifications_decline => 'לדחות';

  @override
  String get suggested_questions_chat_1 => 'ספר לי על חיי האהבה שלי';

  @override
  String get suggested_questions_chat_2 => 'מה יקרה בקריירה שלי?';

  @override
  String get suggested_questions_chat_3 => 'איך אני יכול להשתפר?';

  @override
  String get suggested_questions_chat_4 => 'אילו הזדמנויות מחכות לי בעתיד?';

  @override
  String get onboarding_final_title => 'הכל מוכן!';

  @override
  String get onboarding_final_subtitle =>
      'כדי לתמוך בפרויקט אנחנו מציגים פרסומות. אבל אם אינך רוצה, תוכל להירשם';

  @override
  String get onboarding_final_benefits =>
      'ללא פרסומות\nפריסות ללא הגבלה\nלמידה ללא הגבלה';

  @override
  String get onboarding_final_yearly => 'שנתי';

  @override
  String get onboarding_final_badge => 'חיסכון של 50%';

  @override
  String get onboarding_final_yearly_price => '249/שנה';

  @override
  String get onboarding_final_yearly_month => '24/חודש';

  @override
  String get onboarding_final_trial => '7 ימים חינם';

  @override
  String get onboarding_final_trial_price => 'אחר כך 9/חודש';

  @override
  String get onboarding_final_trial_month => 'חודשי';

  @override
  String get onboarding_final_note =>
      'המנוי אינו חובה ומתחדש אוטומטית. ניתן לבטל בכל עת';

  @override
  String get onboarding_final_choose_yearly => 'בחר שנתי';

  @override
  String get onboarding_final_choose_trial => 'בחר 7 ימים חינם';

  @override
  String get onboarding_final_or => 'או';

  @override
  String get onboarding_final_continue_ads => 'להמשיך עם פרסומות';

  @override
  String get main_screen_greeting => 'שלום';

  @override
  String main_screen_date_today(Object date) {
    return 'היום, $date';
  }

  @override
  String get main_screen_card_of_day_title => 'הקלף שלך להיום';

  @override
  String main_screen_card_of_day_description(Object cardName) {
    return 'קלף היום: $cardName';
  }

  @override
  String get main_screen_card_of_day_description_empty => 'קלף היום:';

  @override
  String get main_screen_card_of_day_status_viewed => 'פתוח';

  @override
  String get main_screen_card_of_day_status_view => 'לצפות';

  @override
  String get main_screen_section_spreads => 'פריסות';

  @override
  String get main_screen_section_training => 'לימוד';

  @override
  String get main_screen_section_entertainment => 'בידור';

  @override
  String get main_screen_quick_spread_title => 'פריסה מהירה';

  @override
  String get main_screen_quick_spread_description =>
      'בלחיצות ספורות תקבלו תשובה ברורה לשאלתכם עם קלף אחד';

  @override
  String get main_screen_thematic_spreads_title => 'פריסות נושאיות';

  @override
  String get main_screen_thematic_spreads_description =>
      'תבניות מוכנות לתחומים חשובים: אהבה, קריירה, בריאות, טיולים';

  @override
  String get main_screen_card_combination_title => 'שילוב קלפים';

  @override
  String get main_screen_fun_spread_title => 'פירוש קלפים מצחיק';

  @override
  String get main_screen_fun_spread_description =>
      'הרימו את המצב רוח, עשו פירוש קלפים מצחיק ושתפו ברשתות החברתיות';

  @override
  String get main_screen_love_badge => 'אהבה';

  @override
  String get card_combination_screen_title => 'שילוב קלפים';

  @override
  String get card_combination_screen_greeting =>
      'צהריים טובים, בחר קלפים כדי לגלות את השילוב והמשמעות';

  @override
  String get card_combination_screen_card_hint => 'קלף';

  @override
  String get card_combination_screen_get_combination_button => 'לגלות שילוב';

  @override
  String get card_combination_screen_new_spread_button => 'לעשות פריסה חדשה';

  @override
  String get card_combination_screen_fill_all_fields_error =>
      'אנא מלא את כל שדות הכרטיסים.';

  @override
  String get card_combination_screen_invalid_cards_error =>
      'אנא בחר כרטיסים רק מהרשימה המוצעת. כרטיסים שגויים:';

  @override
  String get card_combination_screen_duplicate_cards_error =>
      'אנא בחר כרטיסים שונים בכל השדות.';

  @override
  String get card_combination_screen_general_error =>
      'שגיאה: לא ניתן לקבל תגובה. נסה שוב.';

  @override
  String get card_combination_screen_disclaimer =>
      'האפליקציה משתמשת בבינה מלאכותית למטרות בידור בלבד. אנו לא אחראים על ההחלטות שלך. במידת הצורך פנה למומחה.';

  @override
  String card_combination_screen_prompt(Object cards, Object lang) {
    return 'נתח את שילוב קלפי הטארוט: $cards. ספק ניתוח מיסטי עמוק של האינטראקציה ביניהם ועצה כללית. התשובה תהיה כולה בשפה $lang. ללא ברכות וסיכומים.';
  }

  @override
  String get quick_reading_screen_title => 'פריסה מהירה';

  @override
  String get quick_reading_screen_select_card => 'בחר קלף';

  @override
  String get quick_reading_screen_get_answer_button => 'גלה את התשובה';

  @override
  String get quick_reading_screen_what_is_quick_spread => 'מהי פריסה מהירה?';

  @override
  String get quick_reading_screen_quick_spread_explanation =>
      'פריסה מהירה היא פריסת אקספרס (תשובה: כן או לא) שעוזרת לקבל מייד תשובה ברורה לשאלה מסוימת או לאווירה הכללית של היום. מושלם כשצריך השראה או עצה מהירה \"כאן ועכשיו\".';

  @override
  String get quick_reading_screen_understand_button => 'מובן';

  @override
  String get quick_reading_result_screen_generating_response => 'יוצר תשובה...';

  @override
  String quick_reading_result_screen_error_generating(Object error) {
    return 'שגיאה ביצירת התשובה: $error';
  }

  @override
  String quick_reading_result_screen_error_generating_response(Object e) {
    return 'שגיאה ביצירת התשובה: $e';
  }

  @override
  String get quick_reading_result_screen_what_is_quick_spread =>
      'מה זה פריסה מהירה?';

  @override
  String get quick_reading_result_screen_quick_spread_explanation =>
      'פריסה מהירה היא פריסת אקספרס (תשובה: כן או לא) שעוזרת לקבל מענה ברור מיידי לשאלה מסוימת או לאווירה הכללית של היום. מושלם כשצריך השראה או עצה מהירה \"כאן ועכשיו\".';

  @override
  String get quick_reading_result_screen_understand_button => 'מובן';

  @override
  String get quick_reading_result_screen_quick_spread_title => 'פריסה מהירה';

  @override
  String get quick_reading_result_screen_new_spread_button => 'פריסה חדשה';

  @override
  String get quick_reading_result_screen_disclaimer =>
      'האפליקציה משתמשת בבינה מלאכותית אך ורק למטרות בידור. אנו לא נושאים באחריות על ההחלטות שאתה מקבל. במידת הצורך פנה למומחה.';

  @override
  String quick_reading_result_screen_prompt(Object cardName, Object userName) {
    return 'אתה טארולוג מנוסה. המשתמש $userName שלף את הקלף — $cardName. תחילה כתוב בשורה חדשה את המשפט: תשובת הקלפים: ואחריו במילה אחת את התשובה \"כן\" או \"לא\". לאחר מכן הוסף פרשנות מקיפה של 120–150 מילים: 7–8 משפטים על למה האנרגיה של $cardName מובילה לתשובה כזו ומה זה אומר באופן אישי עבור $userName. הזכר את השם $userName לפחות פעמיים, הוסף 1–2 אימוג\'ים בנושא, הימנע מסימני *, # וכל סימון; כתוב בטון פשוט ודיבורי.';
  }

  @override
  String get career_finance_spread_screen_request_accepted =>
      'הבקשה שלך התקבלה. אנא פתח את הקלפים';

  @override
  String get career_finance_spread_screen_error_getting_value =>
      'שגיאה בקבלת ערך הפירוש. נסה שוב.';

  @override
  String get career_finance_spread_screen_what_is_career_finance =>
      'מהו הפירוש קריירה וכספים?';

  @override
  String get career_finance_spread_screen_career_finance_explanation =>
      'התפיסה הזו עוזרת לנתח את התחום המקצועי והכלכלי. תגלו על הזדמנויות, מכשולים ופרספקטיבות לצמיחה.';

  @override
  String get career_finance_spread_screen_understand_button => 'מובן';

  @override
  String get career_finance_spread_screen_learn_meaning_button =>
      'לגלות משמעות';

  @override
  String get career_finance_spread_screen_career_finance_title =>
      'קריירה וכספים';

  @override
  String get career_finance_spread_screen_new_spread_button =>
      'לעשות תפיסה חדשה';

  @override
  String get career_finance_spread_screen_disclaimer =>
      'האפליקציה משתמשת בבינה מלאכותית אך ורק למטרות בידור. אנו לא נושאים באחריות להחלטות שקיבלתם. במידת הצורך פנו למומחה.';

  @override
  String get career_finance_spread_screen_enter_question_hint =>
      'הקלד את שאלתך...';

  @override
  String get pros_cons_spread_screen_what_is_pros_cons =>
      'מהו הפירוש של הפירוש \"בעד ונגד\"?';

  @override
  String get pros_cons_spread_screen_pros_cons_title => 'פירוש \"בעד ונגד\"';

  @override
  String get pros_cons_spread_screen_enter_question_hint => 'הקלד את שאלתך...';

  @override
  String get self_development_balance_spread_screen_self_development_explanation =>
      'פיזור \"התפתחות עצמית ואיזון\" מורכב מ-7 קלפים, הממוקמים בצורת מעגל. כל קלף מסמל היבט מסוים של הצמיחה הרוחנית וההרמוניה הפנימית שלך.';

  @override
  String get card_meanings_screen_major_arcana => 'ארקנות גדולות';

  @override
  String get card_meanings_screen_wands => 'מטות';

  @override
  String get card_meanings_screen_cups => 'גביעים';

  @override
  String get card_meanings_screen_swords => 'חרבות';

  @override
  String get card_meanings_screen_pentacles => 'מטבעות';

  @override
  String get card_meanings_screen_title => 'משמעות הקלפים';

  @override
  String get love_spread_screen_new_spread_button => 'לעשות פריסה חדשה';

  @override
  String get love_spread_screen_enter_question_hint => 'הכנס את שאלתך...';

  @override
  String purchase_love_screen_test_stub(Object plan) {
    return 'תבנית בדיקה: התוכנית שנבחרה היא \"$plan\"';
  }

  @override
  String get purchase_love_screen_love_tariff_title => 'תעריף אהבה';

  @override
  String get ad_promo_block_tariff => 'תעריף';

  @override
  String get ad_promo_block_love => 'אהבה';

  @override
  String get ad_promo_block_promotion_70 => 'מבצע -50%';

  @override
  String get ad_promo_block_no_ads => '• ללא פרסומות';

  @override
  String get ad_promo_block_no_limits => '• ללא הגבלות';

  @override
  String three_cards_screen_title(Object cards) {
    return '3 קלפים בפריסה';
  }

  @override
  String get three_cards_screen_initial_message =>
      'שלום, אנא כתוב את הבקשה שלך למטה:';

  @override
  String get three_cards_screen_request_accepted =>
      'הבקשה שלך התקבלה. אנא פתח את הקלפים';

  @override
  String get three_cards_screen_suggested_questions_1 =>
      'מה הבעיה העיקרית שלי כרגע?';

  @override
  String get three_cards_screen_suggested_questions_2 =>
      'על מה כדאי לי להתמקד בעתיד הקרוב?';

  @override
  String get three_cards_screen_suggested_questions_3 => 'מה מוסתר ממני?';

  @override
  String get three_cards_screen_see_meaning_button => 'לגלות משמעות';

  @override
  String get three_cards_screen_new_spread_button => 'פריסה חדשה';

  @override
  String get three_cards_screen_enter_question_hint => 'הזן את הבקשה שלך...';

  @override
  String get three_cards_screen_what_is_three_cards =>
      'מה זה פריסה של 3 קלפים?';

  @override
  String get three_cards_screen_three_cards_explanation =>
      'פריסה קלאסית שמראה את העבר, ההווה והעתיד של המצב שלך. הקלף הראשון — העבר, השני — ההווה, השלישי — העתיד.';

  @override
  String get three_cards_screen_understand_button => 'מובן';

  @override
  String get three_cards_screen_error_getting_value =>
      'שגיאה בקבלת ערך הפריסה. נסה שוב.';

  @override
  String get three_cards_screen_disclaimer =>
      'האפליקציה משתמשת בבינה מלאכותית למטרות בידור בלבד. איננו אחראים על ההחלטות שתקבל. במידת הצורך, פנה למומחה.';

  @override
  String get five_cards_screen_title => '5 קלפים בפריסה';

  @override
  String get five_cards_screen_initial_message =>
      'שלום, אנא כתוב את בקשתך למטה:';

  @override
  String get five_cards_screen_request_accepted =>
      'הבקשה שלך התקבלה. אנא פתח את הקלפים';

  @override
  String get five_cards_screen_suggested_questions_1 => 'איזה דרך עלי לבחור?';

  @override
  String get five_cards_screen_suggested_questions_2 =>
      'מה מונע ממני להשיג את המטרה?';

  @override
  String get five_cards_screen_suggested_questions_3 => 'אילו אפשרויות יש לי?';

  @override
  String get five_cards_screen_see_meaning_button => 'לגלות את המשמעות';

  @override
  String get five_cards_screen_new_spread_button => 'לעשות פריסה חדשה';

  @override
  String get five_cards_screen_enter_question_hint => 'הזן את הבקשה שלך...';

  @override
  String get five_cards_screen_what_is_five_cards => 'מהי פריסה של 5 קלפים?';

  @override
  String get five_cards_screen_five_cards_explanation =>
      'פריסה של 5 קלפים היא סכימה קומפקטית שפותחת חמישה היבטים מרכזיים של המצב: העבר, ההווה, השפעות נסתרות, עוזר/מכשול ותוצאה סבירה.';

  @override
  String get five_cards_screen_understand_button => 'מובן';

  @override
  String get five_cards_screen_error_getting_value =>
      'שגיאה בקבלת ערך הפריסה. נסה שוב.';

  @override
  String get five_cards_screen_disclaimer =>
      'האפליקציה משתמשת בבינה מלאכותית אך ורק למטרות בידור. איננו אחראים על ההחלטות שתקבל. במידת הצורך פנה למומחה.';

  @override
  String get celtic_cross_screen_title => 'צלב קלטי';

  @override
  String get celtic_cross_screen_initial_message =>
      'שלום, אנא כתוב את הבקשה שלך למטה:';

  @override
  String get celtic_cross_screen_suggested_questions_1 =>
      'מה הבעיה העיקרית שלי כרגע?';

  @override
  String get celtic_cross_screen_suggested_questions_2 =>
      'על מה כדאי לי להתמקד בעתיד הקרוב?';

  @override
  String get celtic_cross_screen_suggested_questions_3 => 'מה מוסתר ממני?';

  @override
  String get celtic_cross_screen_see_meaning_button => 'לגלות משמעות';

  @override
  String get celtic_cross_screen_new_spread_button => 'לעשות פריסה חדשה';

  @override
  String get celtic_cross_screen_enter_question_hint => 'הזן את הבקשה שלך...';

  @override
  String get celtic_cross_screen_what_is_celtic_cross_dialog =>
      'מה זה צלב קלטי?';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_dialog =>
      '«צלב קלטי» הוא פריסה של 10 קלפים, שמנתחת את המצב מכל הצדדים: הנסיבות הנוכחיות, המכשולים, ההשפעות הפנימיות והחיצוניות, וכן הדינמיקה הקרובה והתוצאה הסופית. הקלפים מונחים לפי הסדר:\n1 - מצב — מהות השאלה כאן ועכשיו.\n2 - אתגר — מה שעוזר או מונע התקדמות.\n3 - תת-הכרה (שורש) — מניעים נסתרים וכוחות עמוקים.\n4 - עבר קרוב — אירועים שהובילו למצב הנוכחי.\n5 - מודע (מטרה) — מה שעליו מתמקדת תשומת הלב של הפונה כרגע.\n6 - עתיד קרוב — התפתחות צפויה בשבועות הקרובים.\n7 - «אני עצמי» — מצב פנימי, משאבים, יחס לשאלה.\n8 - סביבה — השפעות של אנשים ונסיבות סביב.\n9 - תקוות / פחדים — ציפיות, ספקות, רגשות חזקים.\n10 - סיכום — תוצאה אפשרית אם המגמות ימשיכו.\nפריסה זו מאפשרת לראות את «התמונה הגדולה»: איפה אתה עומד, מה מפריע או עוזר, אילו דחפים נסתרים פועלים מאחורי הקלעים ולאן הכל מתקדם הלאה.\nהתרשים של הפריסה מוצג בתמונה למטה.';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_image =>
      'assets/images/kelt.png';

  @override
  String get celtic_cross_screen_understand_button => 'מובן';

  @override
  String celtic_cross_screen_please_open_cards(Object cards) {
    return 'Your request has been received. Please open the cards';
  }

  @override
  String celtic_cross_screen_request_accepted(Object cards) {
    return 'הבקשה התקבלה, אנא פתח את $cards';
  }

  @override
  String get the_user => 'משתמש';

  @override
  String get good_day_please_write_your_question_below =>
      'צהריים טובים, אנא כתוב את הבקשה שלך למטה';

  @override
  String get errorGettingSpreadMeaning => 'שגיאה בקבלת ערך הפירוש. נסה שוב.';

  @override
  String get errorGettingSpreadMeaningPleaseTryAgain =>
      'שגיאה בקבלת ערך הפירוש. נסה שוב.';

  @override
  String get seeMeaning => 'לגלות את הערך';

  @override
  String get newSpread => 'לעשות פירוש חדש';

  @override
  String get enterYourQuestion => 'הזן את שאלתך...';

  @override
  String get enterQuestion => 'הזן את שאלתך...';

  @override
  String makeTarotReadingFor(Object lang) {
    return 'עשה עבור';
  }

  @override
  String get theUser => 'משתמש';

  @override
  String onTheseThreeCards(Object userName) {
    return 'פריסה לשלוש הקלפים האלה:';
  }

  @override
  String makeSelfDevelopmentAndBalanceTarotReadingFor(Object cards) {
    return 'עשה עבור $cards פריסת התפתחות עצמית ואיזון';
  }

  @override
  String get getAnswer => 'לגלות את התשובה';

  @override
  String get aboutTheSpread => 'על הפירוש';

  @override
  String get aboutSpreadDescription =>
      'פירוש זה עוזר לנתח את הצמיחה הרוחנית שלך ואת ההרמוניה הפנימית.';

  @override
  String get gotIt => 'מובן';

  @override
  String get selfDevelopmentAndBalance => 'התפתחות עצמית ואיזון';

  @override
  String get appUsageDisclaimer =>
      'האפליקציה משתמשת בבינה מלאכותית אך ורק למטרות בידור. אנו לא נושאים באחריות להחלטות שקיבלת. במידת הצורך פנה למומחה.';

  @override
  String get careerFinance => 'קריירה וכספים';

  @override
  String get fun_spread_screen_with_swear_words_title => 'עם קללות (18+)';

  @override
  String get fun_spread_screen_with_swear_words_subtitle => 'למי שאוהב ריגושים';

  @override
  String get fun_spread_screen_without_swear_words_title => 'ללא קללות';

  @override
  String get fun_spread_screen_without_swear_words_subtitle =>
      'פריסה שמחה ללא מילים גסות';

  @override
  String get fun_spread_screen_generating => 'מייצרים את הפריסה שלך...';

  @override
  String get card_name_the_fool => 'השוטה';

  @override
  String get card_name_the_magician => 'הקוסם';

  @override
  String get card_name_the_high_priestess => 'הכוהנת הגדולה';

  @override
  String get card_name_the_empress => 'הקיסרית';

  @override
  String get card_name_the_emperor => 'הקיסר';

  @override
  String get card_name_the_hierophant => 'הכוהן הגדול';

  @override
  String get card_name_the_lovers => 'המאוהבים';

  @override
  String get card_name_the_chariot => 'הרכב';

  @override
  String get card_name_strength => 'כוח';

  @override
  String get card_name_the_hermit => 'נזיר';

  @override
  String get ok_button => 'אישור';

  @override
  String get cancel_button => 'ביטול';

  @override
  String get analyzing_cards => 'מנתח קלפים...';

  @override
  String get yes_button => 'כן';

  @override
  String get no_button => 'לא';

  @override
  String get loading => 'טוען...';

  @override
  String get error => 'שגיאה';

  @override
  String get success => 'הצלחה';

  @override
  String get failed => 'נכשל';

  @override
  String get language_russian => 'רוסית';

  @override
  String get language_english_us => 'אנגלית (ארה\"ב)';

  @override
  String get language_english_gb => 'אנגלית (בריטניה)';

  @override
  String get card_name_wheel_of_fortune => 'גלגל המזל';

  @override
  String get card_name_justice => 'צדק';

  @override
  String get card_name_the_hanged_man => 'התלוי';

  @override
  String get card_name_death => 'מוות';

  @override
  String get card_name_temperance => 'מתינות';

  @override
  String get card_name_the_devil => 'השטן';

  @override
  String get card_name_the_tower => 'המגדל';

  @override
  String get card_name_the_star => 'כוכב';

  @override
  String get card_name_the_moon => 'ירח';

  @override
  String get card_name_the_sun => 'שמש';

  @override
  String get card_name_judgement => 'משפט';

  @override
  String get card_name_the_world => 'עולם';

  @override
  String get card_name_ace_of_wands => 'אס המטות';

  @override
  String get card_name_two_of_wands => 'שני המטות';

  @override
  String get card_name_three_of_wands => 'שלושת המטות';

  @override
  String get card_name_four_of_wands => 'ארבעת המטות';

  @override
  String get card_name_five_of_wands => 'חמשת המטות';

  @override
  String get card_name_six_of_wands => 'שש מטות';

  @override
  String get card_name_seven_of_wands => 'שבע מטות';

  @override
  String get card_name_eight_of_wands => 'שמונה מטות';

  @override
  String get card_name_nine_of_wands => 'תשעה מטות';

  @override
  String get card_name_ten_of_wands => 'עשר מטות';

  @override
  String get card_name_page_of_wands => 'נער המטות';

  @override
  String get card_name_knight_of_wands => 'אביר המטות';

  @override
  String get card_name_queen_of_wands => 'מלכת המטות';

  @override
  String get card_name_king_of_wands => 'מלך המטות';

  @override
  String get card_name_ace_of_cups => 'אס הגביעים';

  @override
  String get card_name_two_of_cups => 'שני גביעים';

  @override
  String get card_name_three_of_cups => 'שלושה גביעים';

  @override
  String get card_name_four_of_cups => 'ארבעה גביעים';

  @override
  String get card_name_five_of_cups => 'חמישה גביעים';

  @override
  String get card_name_six_of_cups => 'שישה גביעים';

  @override
  String get card_name_seven_of_cups => 'שבעת הגביעים';

  @override
  String get card_name_eight_of_cups => 'שמונת הגביעים';

  @override
  String get card_name_nine_of_cups => 'תשעת הגביעים';

  @override
  String get card_name_ten_of_cups => 'עשרת הגביעים';

  @override
  String get card_name_page_of_cups => 'הפייג\' של הגביעים';

  @override
  String get card_name_knight_of_cups => 'אביר הגביעים';

  @override
  String get card_name_queen_of_cups => 'מלכת הגביעים';

  @override
  String get card_name_king_of_cups => 'מלך הגביעים';

  @override
  String get card_name_ace_of_swords => 'אס החרבות';

  @override
  String get card_name_two_of_swords => 'שני החרבות';

  @override
  String get card_name_three_of_swords => 'שלוש חרבות';

  @override
  String get card_name_four_of_swords => 'ארבע חרבות';

  @override
  String get card_name_five_of_swords => 'חמש חרבות';

  @override
  String get card_name_six_of_swords => 'שש חרבות';

  @override
  String get card_name_seven_of_swords => 'שבע חרבות';

  @override
  String get card_name_eight_of_swords => 'שמונה חרבות';

  @override
  String get card_name_nine_of_swords => 'תשעה חרבות';

  @override
  String get card_name_ten_of_swords => 'עשר חרבות';

  @override
  String get card_name_page_of_swords => 'נער חרבות';

  @override
  String get card_name_knight_of_swords => 'אביר חרבות';

  @override
  String get card_name_queen_of_swords => 'מלכת החרבות';

  @override
  String get card_name_king_of_swords => 'מלך החרבות';

  @override
  String get card_name_ace_of_pentacles => 'אס המטבעות';

  @override
  String get card_name_two_of_pentacles => 'שני המטבעות';

  @override
  String get card_name_three_of_pentacles => 'שלושת המטבעות';

  @override
  String get card_name_four_of_pentacles => 'ארבע מטבעות';

  @override
  String get card_name_five_of_pentacles => 'חמש מטבעות';

  @override
  String get card_name_six_of_pentacles => 'שש מטבעות';

  @override
  String get card_name_seven_of_pentacles => 'שבע מטבעות';

  @override
  String get card_name_eight_of_pentacles => 'שמונה מטבעות';

  @override
  String get card_name_nine_of_pentacles => 'תשיעיית המטבעות';

  @override
  String get card_name_ten_of_pentacles => 'עשיריית המטבעות';

  @override
  String get card_name_page_of_pentacles => 'הפייג\' של המטבעות';

  @override
  String get card_name_knight_of_pentacles => 'האביר של המטבעות';

  @override
  String get card_name_queen_of_pentacles => 'מלכת המטבעות';

  @override
  String get card_name_king_of_pentacles => 'מלך המטבעות';

  @override
  String get quick_reading_screen_suggested_questions_1 =>
      'האם כדאי לי לעשות את זה?';

  @override
  String get quick_reading_screen_suggested_questions_2 =>
      'האם זה הנתיב הנכון?';

  @override
  String get quick_reading_screen_suggested_questions_3 => 'מה אני צריך לדעת?';

  @override
  String get monthly_forecast_spread_screen_see_meaning_button =>
      'לגלות משמעות';

  @override
  String get monthly_forecast_spread_screen_new_spread_button =>
      'לעשות פריסה חדשה';

  @override
  String get monthly_forecast_spread_screen_enter_question_hint =>
      'הזן את הבקשה שלך...';

  @override
  String get monthly_forecast_spread_screen_what_is_monthly_forecast =>
      'מה זה תחזית חודשית?';

  @override
  String get monthly_forecast_spread_screen_monthly_forecast_explanation =>
      'תחזית חודשית מציגה את האירועים והמגמות המרכזיים לחודש הקרוב. עוזרת להתכונן לשינויים ולנצל הזדמנויות.';

  @override
  String get monthly_forecast_spread_screen_understand_button => 'מובן';

  @override
  String get monthly_forecast_spread_screen_error_getting_value =>
      'שגיאה בקבלת ערך הפירוש. נסה שוב.';

  @override
  String get monthly_forecast_spread_screen_disclaimer =>
      'האפליקציה משתמשת בבינה מלאכותית אך ורק למטרות בידור. איננו אחראים על ההחלטות שאתה מקבל. במידת הצורך פנה למומחה.';

  @override
  String self_development_balance_spread_screen_prompt(
      Object cards, Object userName) {
    return 'עשה עבור $userName פירוש להתפתחות עצמית ואיזון עם שלוש הקלפים האלה: $cards';
  }

  @override
  String get error_getting_answer_try_again =>
      'שגיאה: לא ניתן לקבל תשובה. נסה שוב.';

  @override
  String get card_detail_screen_title => 'פרטי הקלף';

  @override
  String get card_detail_screen_general_meaning => 'משמעות כללית';

  @override
  String get card_detail_screen_reversed_meaning => 'משמעות הפוכה';

  @override
  String get card_detail_screen_symbolism => 'סימבוליזם';

  @override
  String get card_detail_screen_error_loading_text => 'שגיאת טעינת טקסט';

  @override
  String card_detail_screen_general_meaning_prompt(
      Object cardName, Object lang) {
    return 'תאר את המשמעות הכללית של קלף הטארוט \"$cardName\" בשפה $lang. כלול היסטוריה, סמליות ומשמעויות עיקריות.';
  }

  @override
  String card_detail_screen_reversed_meaning_prompt(
      Object cardName, Object lang) {
    return 'תאר את המשמעות ההפוכה של קלף הטארוט \"$cardName\" בשפה $lang. כלול משמעויות הפוכות ואזהרות.';
  }

  @override
  String card_detail_screen_symbolism_prompt(Object cardName, Object lang) {
    return 'תאר את הסימבוליזם של קלף הטארוט \"$cardName\" בשפה $lang. כלול פרטים על התמונה, הצבעים ומשמעותם.';
  }

  @override
  String card_detail_screen_description(Object cardName) {
    return 'תיאור קלף $cardName';
  }

  @override
  String get card_detail_screen_see_other_card_meaning =>
      'צפה במשמעות של קלף אחר';

  @override
  String get card_detail_screen_or => 'או';

  @override
  String get card_detail_screen_loading_language => 'טוען שפה...';

  @override
  String get card_detail_screen_see_card_meaning => 'צפה בערך הקלף';

  @override
  String get card_detail_screen_original_waite_text => 'הטקסט המקורי של וייט';

  @override
  String get card_detail_screen_no_original_text => 'אין טקסט מקורי';

  @override
  String card_of_the_day_screen_translate_card_name_prompt(
      Object cardName, Object languageCode) {
    return 'תרגם את שם הקלף טארוט \"$cardName\" ל-$languageCode. התשובה צריכה להכיל רק את השם המתורגם, ללא טקסט נוסף או סימני פיסוק.';
  }

  @override
  String card_of_the_day_screen_generate_description_prompt(
      Object cardName, Object name) {
    return 'אתה טארולוג מקצועי. כתוב מסר מעורר השראה \"קלף היום\" בשפת הבקשה הזו עבור המשתמש $name. שמור על המבנה והנפח.\n🌟 $name, קלף היום שלך הוא $cardName!\n🔑 מילות מפתח מרכזיות: <ציין 3–5 מילות מפתח קצרות>\n🃏 משמעות (≈45–50 מילים): תאר את האנרגיה העיקרית של הקלף וכיצד היא תתבטא היום אצל $name.\n💡 עצה (≈35–40 מילים): הצע פעולה או גישה ספציפית שתעזור ל-$name לנצל את האנרגיה הזו.\n✨ אישור חיובי (שורה אחת): אמירה חיובית שמתחילה ב\"אני…\".\nדרישות: אורך כולל 120–150 מילים, טון אזוטרי חם, 3–4 אימוג\'ים בנושא, ללא רשימות ב-HTML/Markdown; הפרד פסקאות בהפסקת שורה כפולה (\\n\\n).';
  }

  @override
  String get card_of_the_day_screen_title => 'קלף היום';

  @override
  String get card_of_the_day_screen_error_loading_card => 'שגיאה בטעינת הקלף';

  @override
  String career_finance_spread_screen_prompt(Object cards, Object userName) {
    return 'עשה ל-$userName פריסה לקריירה וכספים עם שלושת הקלפים האלה: $cards';
  }

  @override
  String get contact_us_title => 'כתוב לנו';

  @override
  String get contact_us_email_hint => 'האימייל שלך';

  @override
  String get contact_us_email_empty => 'הזן אימייל';

  @override
  String get contact_us_email_invalid => 'אימייל לא תקין';

  @override
  String get contact_us_message_hint => 'ההודעה שלך';

  @override
  String get contact_us_message_empty => 'הזן הודעה';

  @override
  String get contact_us_send_button => 'שלח';

  @override
  String get five_cards_spread_screen_what_is_five_cards_dialog =>
      'מה זה פריסה של 5 קלפים?';

  @override
  String get five_cards_spread_screen_five_cards_explanation_dialog =>
      'הפריסה הזו חושפת את כל הדרך של שאלתך:\nקלף 1 - העבר מראה את הנסיבות המקוריות,\nקלף 2 - ההווה — האנרגיה הנוכחית,\nקלף 3 - הנסתר חושף השפעות נסתרות,\nקלף 4 - העצה מציעה את הפעולה האופטימלית,\nקלף 5 - התוצאה חוזה את התוצאה הסבירה.';

  @override
  String get five_cards_spread_screen_understand_button => 'מובן';

  @override
  String get language_selection_screen_title => 'שפה';

  @override
  String get love_spread_screen_what_is_love_spread => 'מה זה פריסת אהבה?';

  @override
  String get love_spread_screen_love_spread_explanation =>
      'טריפלט אהבה הוא שלוש קלפים המסודרים משמאל לימין:\nקלף 1 - אתה — מראה את הרגשות, המוטיבציה והעמדה של השואל עצמו.\nקלף 2 - בן זוג — חושף את הרגשות, התכניות והנכונות של הצד השני.\nקלף 3 - דינמיקה / פוטנציאל — מתאר כיצד שתי האנרגיות מתקשרות כרגע ולאן היחסים עשויים להוביל בטווח הקרוב.';

  @override
  String get love_spread_screen_understand_button => 'מובן';

  @override
  String get main_screen_your_plan_trial => 'התכנית שלך: ניסיון (עם פרסומות)';

  @override
  String get main_screen_no_ads => '• ללא פרסומות';

  @override
  String get main_screen_no_limits => '• ללא הגבלות';

  @override
  String get main_screen_shop_soon => 'חנות (בקרוב)';

  @override
  String get main_screen_notification_settings => 'הגדרות התראות';

  @override
  String get main_screen_language_selection => 'בחירת שפה';

  @override
  String get main_screen_rate_app => 'דרג את האפליקציה';

  @override
  String get main_screen_contact_us => 'צור קשר';

  @override
  String get main_screen_classic_spreads_title => 'פריסות קלאסיות';

  @override
  String get main_screen_classic_spreads_description =>
      'פריסות של 2 / 3 / 5 קלפים וצלב קלטי מלא ומפורט';

  @override
  String get main_screen_card_meanings_title => 'משמעות הקלפים';

  @override
  String get main_screen_card_meanings_description =>
      'מדריך מלא למשמעויות הישרות וההפוכות של כל הארקנות הגדולות והקטנות';

  @override
  String get main_screen_card_combination_description =>
      '\"מחשבון טארוט\" בחרו קלפים וקבלו ניתוח מעמיק של הקשרים';

  @override
  String get notification_settings_screen_title => 'הגדרות התראות';

  @override
  String get notification_settings_screen_frequency_question =>
      'באיזו תדירות תרצה לקבל התראה על קלף היום?';

  @override
  String get notification_settings_screen_every_day => 'כל יום';

  @override
  String get notification_settings_screen_every_three_days =>
      'פעם בכל שלושה ימים';

  @override
  String get notification_settings_screen_every_week => 'פעם בשבוע';

  @override
  String get notification_settings_screen_time_question => 'באיזו שעה ביום?';

  @override
  String get notification_settings_screen_morning => 'בבוקר';

  @override
  String get notification_settings_screen_day => 'בצהריים';

  @override
  String get notification_settings_screen_evening => 'בערב';

  @override
  String get notification_settings_screen_save_button => 'שמור';

  @override
  String get onboarding_final_screen_yearly_price => '249/שנה';

  @override
  String get onboarding_final_screen_yearly_month_price => '24/חודש';

  @override
  String get onboarding_final_screen_monthly_price => '9/חודש';

  @override
  String get onboarding_final_screen_monthly_month_price => '9/חודש';

  @override
  String get onboarding_final_screen_yearly_plan => 'שנתי';

  @override
  String get onboarding_final_screen_free_trial => '7 ימים חינם';

  @override
  String get onboarding_final_screen_purchase_title => 'קנייה';

  @override
  String onboarding_final_screen_test_stub_message(Object plan) {
    return 'כיסוי ניסיוני: נבחר התעריף \"$plan\"';
  }

  @override
  String get onboarding_final_screen_ok_button => 'אישור';

  @override
  String get purchase_love_screen_yearly_price => '249/שנה';

  @override
  String get purchase_love_screen_yearly_month_price => '24/חודש';

  @override
  String get purchase_love_screen_monthly_price => 'חודשי';

  @override
  String get purchase_love_screen_monthly_month_price => '9/חודש';

  @override
  String get purchase_love_screen_title => 'קנייה';

  @override
  String get purchase_love_screen_ok_button => 'אישור';

  @override
  String quick_reading_screen_error_no_image_file_found(Object cardName) {
    return 'שגיאה: קובץ התמונה לא נמצא עבור הכרטיס: $cardName';
  }

  @override
  String get please_fill_all_fields => 'אנא מלא את כל שדות הכרטיסים.';

  @override
  String get please_select_cards_only_from_suggested_list =>
      'אנא בחר כרטיסים רק מהרשימה המוצעת. כרטיסים שגויים:';

  @override
  String get please_select_different_cards_in_all_fields =>
      'אנא בחר כרטיסים שונים בכל השדות.';

  @override
  String get card => 'קלף';

  @override
  String get get_combination => 'לגלות שילוב';

  @override
  String get new_spread => 'לעשות פריסה חדשה';

  @override
  String get app_uses_ai_for_entertainment_purposes =>
      'האפליקציה משתמשת בבינה מלאכותית למטרות בידור בלבד. אנו לא אחראים על ההחלטות שאתה מקבל. במידת הצורך פנה למומחה.';

  @override
  String get career_finance_spread_screen_what_is_career_finance_spread =>
      'מהי פריסת קריירה וכספים?';

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
      Object userQuestion) {
    return 'אתה טארולוג מנוסה. המשתמש $userName שואל: \"$userQuestion\". השב באמצעות פריסת \"צלב קלטי\" (הסכמה הקלאסית של וייט). הקלפים הועברו כך: מצב - $situationCard; אתגר - $challengeCard; תת מודע - $subconsciousCard; עבר קרוב - $pastCard; מודע - $consciousCard; עתיד קרוב - $hiddenCard; אני פנימי - $selfCard; סביבה - $environmentCard; תקוות או פחדים - $hopesCard; תוצאה - $outcomeCard. הזכר את השם $userName לפחות שש פעמים וחייב לקשר כל קלף לשאלה. שמור על המבנה:\n1) ברכה בשם $userName.\n2) כותרת: פריסה: מצב ($situationCard) / אתגר ($challengeCard) / תת מודע ($subconsciousCard) / עבר קרוב ($pastCard) / מודע ($consciousCard) / עתיד קרוב ($hiddenCard) / אני פנימי ($selfCard) / סביבה ($environmentCard) / תקוות/פחדים ($hopesCard) / תוצאה ($outcomeCard).\n3) מצב — $situationCard (45-55 מילים): שלוש מילים מפתח, סמליות הקלף ומצב נוכחי לגבי השאלה $userQuestion עבור $userName.\n4) אתגר — $challengeCard (45-55 מילים): המכשול המרכזי או העזרה עבור $userName.\n5) תת מודע — $subconsciousCard (45-55 מילים): מניעים נסתרים או אנרגיות המשפיעות על $userName.\n6) עבר קרוב — $pastCard (45-55 מילים): אירועים שהובילו את $userName למצב הנוכחי.\n7) מודע — $consciousCard (45-55 מילים): מטרות, ציפיות או מה ש-$userName מודע לו.\n8) עתיד קרוב — $hiddenCard (45-55 מילים): התפתחות צפויה בשבועות הקרובים.\n9) אני פנימי — $selfCard (45-55 מילים): מצב, משאבים של $userName.\n10) סביבה — $environmentCard (45-55 מילים): השפעת אנשים ונסיבות.\n11) תקוות / פחדים — $hopesCard (45-55 מילים): ציפיות או חששות של $userName.\n12) תוצאה — $outcomeCard (45-55 מילים): תוצאה סבירה בהתחשב בעצת הפריסה.\n13) סיכום: תמיכה ידידותית ואישור חיובי (30-35 מילים) ל-$userName.\nדרישות: אורך כולל 400-500 מילים, טון שיחה חי ודינמי, 4-6 אימוג\'ים אזוטריים; הפרד כל בלוק בשורה ריקה כפולה (\n); אל תשתמש בסימני *, # או סימוני עיצוב אחרים; כתוב טקסט פשוט בלבד.';
  }

  @override
  String get celtic_cross_screen_unable_to_load_card => 'לא ניתן לטעון את הקלף';

  @override
  String get celticCrossTitle => 'צלב קלטי';

  @override
  String get chat_with_tarot_reader_screen_request_received =>
      'הבקשה שלך התקבלה. אנא פתח את הקלפים';

  @override
  String chat_with_tarot_reader_screen_prompt(
      Object hiddenCard,
      Object pastCard,
      Object presentCard,
      Object userName,
      Object userQuestion) {
    return 'אתה טארולוג מנוסה. המשתמש $userName שואל: \"$userQuestion\". השב באמצעות פריסת \"עבר - הווה - עתיד\". הקלפים הועברו כך: עבר - $pastCard; הווה - $presentCard; עתיד - $hiddenCard. הזכר את השם $userName לפחות ארבע פעמים וחייב לקשר את משמעות הקלפים לשאלה. שמור על המבנה:\n1) ברכה בשם $userName.\n2) כותרת: פריסה: עבר ($pastCard) - הווה ($presentCard) - עתיד ($hiddenCard).\n3) בלוק עבר — $pastCard (40-50 מילים): שלוש מילים מפתח, סמליות הקלף והסבר כיצד עובדות העבר משפיעות על תוצאת השאלה $userQuestion עבור $userName.\n4) בלוק הווה — $presentCard (40-50 מילים): מילים מפתח, סמליות הקלף והגורמים הנוכחיים המשפיעים על התשובה לשאלה $userQuestion.\n5) בלוק עתיד — $hiddenCard (40-50 מילים): מילים מפתח, סמליות הקלף ותסריט סביר להתפתחות המצב לגבי השאלה של $userName.\n6) סיכום: עצה קצרה, אישור חיובי (20-30 מילים) וסיכום ברור של הסיכויים.\nדרישות: אורך כולל 180-220 מילים, טון אזוטרי חם, 3-5 אימוג\'ים נושאיים; הפרד כל בלוק בשורה ריקה כפולה (\n); אסור להשתמש בסימני *, # או סימוני עיצוב אחרים; כתוב טקסט פשוט בלבד.';
  }

  @override
  String get see_meaning_button => 'לגלות את המשמעות';

  @override
  String three_cards_title(Object cards) {
    return '3 קלפים בפריסה';
  }

  @override
  String get new_spread_button => 'לעשות פריסה חדשה';

  @override
  String get disclaimer_text =>
      'האפליקציה משתמשת בבינה מלאכותית למטרות בידור בלבד. איננו אחראים על ההחלטות שתקבלו. במידת הצורך פנו למומחה.';

  @override
  String get enter_your_question => 'הקלד את שאלתך...';

  @override
  String get classic_spreads_screen_title => 'פריסות קלאסיות';

  @override
  String get classic_spreads_screen_three_cards_title => '3 קלפים';

  @override
  String get classic_spreads_screen_three_cards_description =>
      'עבר, הווה, עתיד';

  @override
  String get classic_spreads_screen_five_cards_title => '5 קלפים';

  @override
  String get classic_spreads_screen_five_cards_description =>
      'ניתוח מעמיק של המצב';

  @override
  String get classic_spreads_screen_celtic_cross_title => 'צלב קלטי';

  @override
  String get classic_spreads_screen_celtic_cross_description =>
      'פירוש מלא של 10 קלפים';

  @override
  String five_cards_screen_prompt(
      Object adviceCard,
      Object hiddenCard,
      Object outcomeCard,
      Object pastCard,
      Object presentCard,
      Object userName,
      Object userQuestion) {
    return 'אתה קורא טארוט מנוסה. המשתמש $userName שואל: \"$userQuestion\". השב באמצעות פריסת \"5 קלפים\". הקלפים ניתנים לפי הסדר: עבר - $pastCard; הווה - $presentCard; עתיד - $hiddenCard; סיבה - $adviceCard; תוצאה אפשרית - $outcomeCard. הסבר את המשמעות של כל קלף והסבר את המשמעות המשולבת שלהם.';
  }

  @override
  String get fiveCardsInSpread => '5 קלפים בפיזור';

  @override
  String get makeNewSpread => 'לעשות פיזור חדש';

  @override
  String get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMake =>
      'האפליקציה משתמשת בבינה מלאכותית אך ורק למטרות בידור. אנו לא נושאים באחריות להחלטות שקיבלת. במידת הצורך פנה למומחה.';

  @override
  String get requestReceivedPleaseOpenCards =>
      'הבקשה שלך התקבלה. אנא פתח את הקלפים';

  @override
  String love_spread_prompt(Object dynamicCard, Object partnerCard,
      Object userName, Object userQuestion, Object youCard) {
    return 'אתה טארולוג מנוסה. המשתמש $userName שואל: «$userQuestion». השב בעזרת פריסת אהבה משלוש קלפים. הקלפים הם כך: רגשות $userName — $youCard; רגשות השותף — $partnerCard; דינמיקה או פוטנציאל הקשר — $dynamicCard. הזכר את השם $userName לפחות שלוש פעמים וקשר כל קלף לשאלה. שמור על המבנה:\n1) ברכה בשם $userName.\n2) כותרת: פריסה: $youCard | $partnerCard | $dynamicCard.\n3) $youCard — 40–50 מילים: תאר מה הקלף אומר על רגשות והציפיות של $userName.\n4) $partnerCard — 40–50 מילים: חשוף את הרגשות והכוונות של השותף לגבי השאלה של $userName.\n5) $dynamicCard — 40–50 מילים: הצג כיצד שתי האנרגיות האלה מתקשרות ולאן הקשר יכול להוביל.\n6) סיכום: עצה חמה ואישור חיובי (20–25 מילים) עבור $userName.\nדרישות: אורך כולל 150–180 מילים, טון ידידותי ורומנטי, 2–4 אימוג\'ים בנושא; הפרד פסקאות בשתי שורות ריקות (\\n\\n); הימנע מסמלים *, # וכל סימון.';
  }

  @override
  String get loveSpread => 'פריסת אהבה';

  @override
  String get applicationUsesAIExclusivelyForEntertainmentWeDoNotTakeResponsibilityForDecisionsYouHaveMadeIfNeededPleaseConsultSpecialist =>
      'האפליקציה משתמשת בבינה מלאכותית אך ורק למטרות בידור. אנו לא נושאים באחריות להחלטות שקיבלת. במידת הצורך פנה למומחה.';

  @override
  String main_screen_greeting_with_name(Object name) {
    return 'שלום, $name';
  }

  @override
  String get main_screen_monday => 'יום שני';

  @override
  String get main_screen_tuesday => 'יום שלישי';

  @override
  String get main_screen_wednesday => 'יום רביעי';

  @override
  String get main_screen_thursday => 'יום חמישי';

  @override
  String get main_screen_friday => 'יום שישי';

  @override
  String get main_screen_saturday => 'שבת';

  @override
  String get main_screen_sunday => 'יום ראשון';

  @override
  String get main_screen_your_card_of_the_day => 'הקלף היומי שלך';

  @override
  String main_screen_card_of_the_day_with_name(Object cardName) {
    return 'קלף היום: $cardName';
  }

  @override
  String get main_screen_card_of_the_day => 'קלף היום:';

  @override
  String get main_screen_viewed => 'פתוח';

  @override
  String get main_screen_not_viewed => 'לצפות';

  @override
  String get main_screen_spreads => 'פריסות';

  @override
  String get main_screen_training => 'הדרכה';

  @override
  String get main_screen_entertainment => 'בידור';

  @override
  String get main_screen_glad_to_see_you_here => 'שמח לראות אותך כאן!';

  @override
  String get main_screen_quick_reading_title => 'פריסה מהירה';

  @override
  String get main_screen_quick_reading_description =>
      'בכמה נגיעות בלבד קבל תשובה ברורה לשאלתך עם קלף אחד';

  @override
  String get monthly_forecast_spread_screen_request_accepted =>
      'הבקשה שלך התקבלה. אנא פתח את הקלפים';

  @override
  String monthly_forecast_spread_screen_prompt(Object cards, Object userName) {
    return 'עשה עבור $userName תחזית חודשית לפי הקלפים האלה: $cards';
  }

  @override
  String get aboutSpread => 'על הפירוש';

  @override
  String get monthlyForecast => 'תחזית חודשית';

  @override
  String get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNecessaryPleaseConsultSpecialist =>
      'האפליקציה משתמשת בבינה מלאכותית למטרות בידור בלבד. אנו לא אחראים להחלטות שתקבלו. במידת הצורך פנו למומחה.';

  @override
  String purchase_love_screen_test_message(Object planName) {
    return 'כיסוי בדיקה: התוכנית שנבחרה היא \"$planName\"';
  }

  @override
  String get quick_reading_screen_what_is_quick_reading => 'מה זה פריסה מהירה?';

  @override
  String get quick_reading_screen_quick_reading_explanation =>
      'פריסה מהירה היא פריסת אקספרס (תשובה: כן או לא) שעוזרת לקבל מענה ברור מיידי לשאלה מסוימת או לאווירה הכללית של היום. מושלם כשצריך השראה או עצה מהירה \"כאן ועכשיו\".';

  @override
  String get self_development_balance_spread_screen_request_accepted =>
      'הבקשה שלך התקבלה. אנא פתח את הקלפים';

  @override
  String get self_development_balance_spread_screen_error_getting_value =>
      'שגיאה בקבלת ערך הפריסה. נסה שוב.';

  @override
  String get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNeededConsultSpecialist =>
      'האפליקציה משתמשת בבינה מלאכותית למטרות בידור בלבד. איננו אחראים על ההחלטות שאתה מקבל. במידת הצורך פנה למומחה.';

  @override
  String get thematic_spreads_screen_title => 'פריסות נושאיות';

  @override
  String get thematic_spreads_screen_love_spread_title => 'פריסת אהבה';

  @override
  String get thematic_spreads_screen_love_spread_description =>
      'ניתוח מערכות יחסים ורגשות';

  @override
  String get thematic_spreads_screen_career_finance_title => 'קריירה וכספים';

  @override
  String get thematic_spreads_screen_career_finance_description =>
      'ניתוח מקצועי וכספי';

  @override
  String get thematic_spreads_screen_pros_cons_title => 'בעד ונגד';

  @override
  String get thematic_spreads_screen_pros_cons_description =>
      'ניתוח יתרונות וחסרונות';

  @override
  String get thematic_spreads_screen_monthly_forecast_title => 'תחזית חודשית';

  @override
  String get thematic_spreads_screen_monthly_forecast_description =>
      'תחזית לפי חודשים';

  @override
  String get thematic_spreads_screen_self_development_title =>
      'התפתחות עצמית ואיזון';

  @override
  String get thematic_spreads_screen_self_development_description =>
      'צמיחה רוחנית והרמוניה';

  @override
  String get requestReceived => 'הבקשה שלך התקבלה. אנא פתח את הקלפים';

  @override
  String pros_cons_spread_prompt(Object cards, Object userName) {
    return 'עשה עבור $userName פריסה של בעד ונגד עם הקלפים האלה: $cards';
  }

  @override
  String get pros_cons_spread_screen_what_is_pros_cons_spread =>
      'מהי פריסת \"בעד ונגד\"?';

  @override
  String get pros_cons_spread_screen_pros_cons_spread_explanation =>
      'פריסת \"בעד ונגד\" עוזרת לנתח את היתרונות והחסרונות של המצב, כדי לקבל החלטה שקולה.';

  @override
  String get pros_cons_spread_screen_understand_button => 'מובן';

  @override
  String get prosConsSpreadTitle => 'פריסת \"בעד ונגד\"';

  @override
  String get spreadDisclaimer =>
      'האפליקציה משתמשת בבינה מלאכותית אך ורק למטרות בידור. אנו לא אחראים על ההחלטות שתקבלו. במידת הצורך פנו למומחה.';

  @override
  String get fun_spread_screen_generation_error =>
      'שגיאה ביצירת הפריסה. נסה שוב.';

  @override
  String get fun_spread_screen_share_error => 'שגיאה בשמירת התמונה.';

  @override
  String get fun_spread_screen_about_fun_spread => 'מה זה פריסה משעשעת?';

  @override
  String get fun_spread_screen_fun_spread_explanation =>
      'פריסה משעשעת היא שיטת חיזוי מיוחדת בקלפי טארוט, שמשלבת את העומק של פריסות מסורתיות עם גישה קלה וחיובית. היא תעזור לך להסתכל על המצב מזווית חדשה ולמצוא שמחה בחיים היומיומיים.';

  @override
  String get fun_spread_screen_understand_button => 'מובן';

  @override
  String get fun_spread_screen_title => 'פריסה משעשעת';

  @override
  String get fun_spread_screen_generate_button => 'צור פריסה';

  @override
  String get fun_spread_screen_share_button => 'לשתף';

  @override
  String get fun_spread_screen_new_button => 'פריסה חדשה';

  @override
  String get fun_spread_screen_share_text =>
      'תראו איזו פריסת טארוט מצחיקה קיבלתי באפליקציית Tarot AI!';

  @override
  String get ad_promo_tariff => 'תעריף';

  @override
  String get ad_promo_love => 'אהבה';

  @override
  String get ad_promo_discount => 'מבצע -50%';

  @override
  String get ad_promo_no_ads => '• ללא פרסומות';

  @override
  String get ad_promo_no_limits => '• ללא הגבלות';

  @override
  String get no_internet_error =>
      'האפליקציה שלנו פועלת רק עם אינטרנט. אנא הפעל Wi-Fi או אינטרנט נייד.';

  @override
  String fun_spread_screen_mate_prompt_3cards(Object userName) {
    return 'עשה פיזור טארוט מצחיק, חצוף ומלא קללות עם 3 קלפים עבור $userName. לכל קלף תן שם מצחיק וכתוב פסקה נפרדת: הקלף הראשון: <שם> — <תיאור מצחיק קצר>, הקלף השני: <שם> — <תיאור מצחיק קצר>, הקלף השלישי: <שם> — <תיאור מצחיק קצר>. השתמש בשפה גסה כדי להוסיף הומור, אבל אל תעליב. כל הטקסט לא יעלה על 7 משפטים.';
  }

  @override
  String fun_spread_screen_no_mate_prompt_3cards(Object userName) {
    return 'צור פיזור טארוט מצחיק עבור $userName עם 3 קלפים. עבור כל קלף המצא שם מצחיק וכתוב פסקה נפרדת: הקלף הראשון: <שם> — <תיאור קצר ומצחיק>, הקלף השני: <שם> — <תיאור קצר ומצחיק>, הקלף השלישי: <שם> — <תיאור קצר ומצחיק>. הפיזור צריך להיות משעשע אך עם משמעות עמוקה. רק 3 קלפים. כל הטקסט לא יעלה על 7 משפטים.';
  }

  @override
  String get fun_spread_screen_title_top => 'פיזור טארוט';

  @override
  String fun_spread_screen_title_for_name(Object name) {
    return 'ל-$name';
  }

  @override
  String get contact_us_screen_message_sent => 'ההודעה שלך התקבלה, תודה!';

  @override
  String get contact_us_screen_message_error => 'שגיאה בשליחת ההודעה';

  @override
  String get love_spread_screen_initial_message =>
      'שלום, אנא כתוב את שאלתך למטה:';

  @override
  String get main_screen_tariff => 'תעריף';

  @override
  String get main_screen_promo_50 => 'מבצע -50%';

  @override
  String get main_screen_rate_hint =>
      'אם חלון ההערכה לא הופיע, תוכל להשאיר ביקורת ב-Google Play.';

  @override
  String get main_screen_rate_error =>
      'לא ניתן לפתוח את Google Play. נסה שוב מאוחר יותר.';

  @override
  String get love_spread_screen_suggested_questions_1 =>
      'אילו רגשות יש לי כלפי האדם הזה?';

  @override
  String get love_spread_screen_suggested_questions_2 =>
      'מה מפריע למערכת היחסים שלנו?';

  @override
  String get love_spread_screen_suggested_questions_3 =>
      'איזה עתיד מחכה למערכת היחסים שלנו?';

  @override
  String get career_finance_spread_screen_suggested_questions_1 =>
      'אילו הזדמנויות מחכות לי בקריירה?';

  @override
  String get career_finance_spread_screen_suggested_questions_2 =>
      'איך לשפר את המצב הכלכלי שלי?';

  @override
  String get career_finance_spread_screen_suggested_questions_3 =>
      'האם כדאי לשנות עבודה?';

  @override
  String get pros_cons_spread_screen_suggested_questions_1 =>
      'האם כדאי לי לקבל את ההחלטה הזו?';

  @override
  String get pros_cons_spread_screen_suggested_questions_2 =>
      'מהם היתרונות והחסרונות של הבחירה הזו?';

  @override
  String get pros_cons_spread_screen_suggested_questions_3 =>
      'מה חשוב יותר במצב הזה?';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_1 =>
      'מה מחכה לי החודש הזה?';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_2 =>
      'אילו אירועים יקרו בקרוב?';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_3 =>
      'על מה כדאי להתמקד החודש?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_1 =>
      'איך להתפתח רוחנית?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_2 =>
      'מה מפריע לאיזון הפנימי שלי?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_3 =>
      'איך למצוא הרמוניה בחיים?';

  @override
  String career_three_card_prompt(Object adviceCard, Object challengeCard,
      Object situationCard, Object userName, Object userQuestion) {
    return 'אתה קורא קלפים ומאמן מנוסה. המשתמש $userName שואל: «$userQuestion». עשה פריסה של שלוש קלפים לקריירה וכספים. הקלפים מועברים כך: 1) מצב — $situationCard; 2) מכשול או הזדמנות מרכזית — $challengeCard; 3) עצה ופוטנציאל — $adviceCard. קבע את מין המשתמש לפי השם $userName ופנה אליו עם סיומות וכינויים נכונים. דבר עם $userName בחברותיות ובענייניות: הראה איפה הוא עומד, מה חוסם את הצמיחה (או איזו הזדמנות חשוב לשים לב אליה) ואיזה צעד מעשי יוביל להכנסה הרצויה. הזכר את השם $userName לפחות שלוש פעמים. שמור על המבנה:\n1) ברכה — משפט אחד.\n2) כותרת: פריסה: $situationCard | $challengeCard | $adviceCard.\n3) $situationCard — 45–55 מילים: תאר את המצב הנוכחי של $userName (עבודה, עסק או רקע כלכלי כללי) ואת הסמליות של הקלף.\n4) $challengeCard — 45–55 מילים: חשוף את המחסום העיקרי או הזדמנות לא ברורה; ציין כיצד זה משתקף בקלף ובשאלה של $userName.\n5) $adviceCard — 45–55 מילים: הצע פעולה קונקרטית (למשל, לבדוק מחדש את התקציב, לבקש העלאה, ללמוד מיומנות חדשה) ותאר את התוצאה האפשרית.\n6) סיום — 20–25 מילים: מסקנה ידידותית, אמירה חיובית ו-2 אימוג\'ים עסקיים.\nדרישות: אורך כולל 160–185 מילים, טון ברור ועסקי ללא סלנג, 2–3 אימוג\'ים; הפרד פסקאות עם שורה ריקה כפולה \\n\\n; אל תשתמש ב-*, # או סימני עיצוב אחרים.';
  }

  @override
  String pros_cons_three_card_prompt(Object adviceCard, Object conCard,
      Object proCard, Object userName, Object userQuestion) {
    return 'אתה קורא קלפים מנוסה. המשתמש $userName שואל: «$userQuestion». עשה פריסת \"בעד ונגד\" משלושה קלפים. הקלפים מועברים כך: יתרונות — $proCard; חסרונות — $conCard; עצה/סיכום — $adviceCard. קבע את מין המשתמש לפי השם $userName ופנה אליו עם סיומות וכינויים נכונים. הזכר את השם $userName לפחות שלוש פעמים וקשר כל קלף לשאלה. שמור על המבנה:\n1) ברכה בשם $userName.\n2) כותרת: פריסה: $proCard | $conCard | $adviceCard.\n3) יתרונות: $proCard — 45–55 מילים. חשוף את היתרונות המרכזיים או המשאבים החיוביים שהקלף מביא למצב של $userName.\n4) חסרונות: $conCard — 45–55 מילים. תאר סיכונים, עלויות נסתרות או נקודות תורפה של ההחלטה עבור $userName.\n5) עצה: $adviceCard — 45–55 מילים. שקול את היתרונות והחסרונות, הצע פעולה קונקרטית אחת (פועל + מושא) ואמר כיצד זה ישנה את התוצאה עבור $userName.\n6) סיכום — במילה אחת \"כן\" או \"לא\", אחריה משפט הסבר ואמירה מעודדת (20–25 מילים) עם 1–2 אימוג\'ים.\nדרישות: אורך כולל 150–180 מילים, טון ידידותי ושיחתי; הפרד כל בלוק עם שורה ריקה כפולה \\n\\n; ללא סימני *, # או עיצוב אחר.';
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
      Object userQuestion) {
    return 'אתה קורא טארוט מקצועי. המשתמש $userName שואל: \"$userQuestion\". ערוך פריסת \"גלגל החודש\" עבור $month. הקלפים בסדר הבא: 1 — $card1, 2 — $card2, 3 — $card3, 4 — $card4, 5 — $card5, 6 — $card6, 7 — $card7, 8 — $card8, 9 — $card9, 10 — $card10, 11 — $card11, 12 — $card12. קבע את מגדר $userName לפי השם והשתמש בסיומות ובכינויים המתאימים. הזכר את השם לפחות חמש פעמים, אך **אל תכניס אותו אחרי כל תאריך** — רק בטקסט של העצות. השתמש ברשת התאריכים: 1–3, 4–6, 7–9, 10–12, 13–15, 16–18, 19–21, 22–24, 25–26, 27–28, 29–30, 31 (אם החודש כולל 30 יום, הקלף ה-12 מתאים גם ל-30). פורמט:\n1) ברכה בשם $userName (1–2 משפטים).\n2) הקדמה קצרה על מטרת הפריסה (משפט אחד).\n3–14) לכל קלף, \"1–3 $month — $card1\" (ללא שם): ואז 2–3 משפטים על האנרגיה המרכזית של התקופה, ועצה אישית עבור $userName.\n15) סיום: עצה מרכזית לחודש (1–2 משפטים).\n\nהתשובה צריכה להיות כולה בעברית, בסגנון פשוט ושיחתי. הימנע מכל סימון, *, #, אימוג\'י, תגיות, html.';
  }

  @override
  String get month_january => 'ינואר';

  @override
  String get month_february => 'פברואר';

  @override
  String get month_march => 'מרץ';

  @override
  String get month_april => 'אפריל';

  @override
  String get month_may => 'מאי';

  @override
  String get month_june => 'יוני';

  @override
  String get month_july => 'יולי';

  @override
  String get month_august => 'אוגוסט';

  @override
  String get month_september => 'ספטמבר';

  @override
  String get month_october => 'אוקטובר';

  @override
  String get month_november => 'נובמבר';

  @override
  String get month_december => 'דצמבר';

  @override
  String get fun_share_button => 'שתף';

  @override
  String get fun_new_spread_button => 'פיזור חדש';
}
