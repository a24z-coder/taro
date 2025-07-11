// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get main_title => 'Guess and study Tarot';

  @override
  String get your_name => 'Your name';

  @override
  String get personalization_hint =>
      'Ask questions to the AI Tarot reader and receive personalized spreads.';

  @override
  String get start_button => 'START';

  @override
  String get language => 'Language';

  @override
  String get continueBtn => 'Continue';

  @override
  String get card_of_the_day => 'Card of the Day';

  @override
  String get description => 'Description';

  @override
  String get spreads => 'Spreads';

  @override
  String get quick_spread => 'Quick spread';

  @override
  String get classic_spreads => 'Classic spreads';

  @override
  String get thematic_spreads => 'Thematic spreads';

  @override
  String get card_combination => 'Combination of cards';

  @override
  String get card_meanings => 'Card meanings';

  @override
  String get training => 'Training';

  @override
  String get welcome => 'Welcome';

  @override
  String get today => 'Today';

  @override
  String get view => 'Watch';

  @override
  String get select_card => 'Choose a card';

  @override
  String get please_select_cards =>
      'Please select different cards in all fields.';

  @override
  String get good_day =>
      'Have a nice day,  \nChoose cards to discover their combination and meaning.';

  @override
  String get language_hint => 'For complete personalization of spreads';

  @override
  String get quickReading => 'Quick spread';

  @override
  String get comingSoon => 'Coming soon';

  @override
  String get onboarding_notifications_title =>
      '🔔 Do you want to not miss the \"Card of the Day\" and new spreads?';

  @override
  String get onboarding_notifications_subtitle =>
      'Please agree to receive notifications (no spam).';

  @override
  String get onboarding_notifications_allow => 'AGREE';

  @override
  String get onboarding_notifications_decline => 'REFUSE';

  @override
  String get suggested_questions_chat_1 => 'Tell me about my love life.';

  @override
  String get suggested_questions_chat_2 => 'What will happen in my career?';

  @override
  String get suggested_questions_chat_3 => 'How can I improve myself?';

  @override
  String get suggested_questions_chat_4 =>
      'What opportunities await me in the future?';

  @override
  String get onboarding_final_title => 'Everything is ready!';

  @override
  String get onboarding_final_subtitle =>
      'To support the project\'s operation, we show advertisements. BUT if you don\'t want to, you can subscribe.';

  @override
  String get onboarding_final_benefits =>
      'No ads  \nLayouts without limits  \nTraining without limits';

  @override
  String get onboarding_final_yearly => 'Annually';

  @override
  String get onboarding_final_badge => 'Benefit 50%';

  @override
  String get onboarding_final_yearly_price => '249/year';

  @override
  String get onboarding_final_yearly_month => '24/month';

  @override
  String get onboarding_final_trial => '7 days free';

  @override
  String get onboarding_final_trial_price => 'then 9/month';

  @override
  String get onboarding_final_trial_month => 'Monthly';

  @override
  String get onboarding_final_note =>
      'Subscription is not mandatory and renews automatically. You can cancel at any time.';

  @override
  String get onboarding_final_choose_yearly => 'Choose annually';

  @override
  String get onboarding_final_choose_trial => 'Choose 7 days for free';

  @override
  String get onboarding_final_or => 'OR';

  @override
  String get onboarding_final_continue_ads => 'CONTINUE WITH ADVERTISING';

  @override
  String get main_screen_greeting => 'Hello';

  @override
  String main_screen_date_today(Object date) {
    return 'Today, $date';
  }

  @override
  String get main_screen_card_of_day_title => 'Your card of the day';

  @override
  String main_screen_card_of_day_description(Object cardName) {
    return 'Card of the day: $cardName';
  }

  @override
  String get main_screen_card_of_day_description_empty => 'Card of the day:';

  @override
  String get main_screen_card_of_day_status_viewed => 'Open';

  @override
  String get main_screen_card_of_day_status_view => 'Look';

  @override
  String get main_screen_section_spreads => 'Spreads';

  @override
  String get main_screen_section_training => 'Training';

  @override
  String get main_screen_section_entertainment => 'Entertainment';

  @override
  String get main_screen_quick_spread_title => 'Quick spread';

  @override
  String get main_screen_quick_spread_description =>
      'with just a couple of taps, get a clear answer to your question with one card';

  @override
  String get main_screen_thematic_spreads_title => 'Thematic spreads';

  @override
  String get main_screen_thematic_spreads_description =>
      'ready-made layouts for important areas: love, career, health, travel';

  @override
  String get main_screen_card_combination_title => 'Combination of cards';

  @override
  String get main_screen_fun_spread_title => 'Joke spread';

  @override
  String get main_screen_fun_spread_description =>
      'lift your spirits, make a humorous spread and share it on social media';

  @override
  String get main_screen_love_badge => 'LOVE';

  @override
  String get card_combination_screen_title => 'Combination of cards';

  @override
  String get card_combination_screen_greeting =>
      'Good afternoon, choose cards to discover the combination and meaning.';

  @override
  String get card_combination_screen_card_hint => 'Card';

  @override
  String get card_combination_screen_get_combination_button =>
      'Find the combination';

  @override
  String get card_combination_screen_new_spread_button => 'Make a new spread';

  @override
  String get card_combination_screen_fill_all_fields_error =>
      'Please fill in all the fields of the cards.';

  @override
  String get card_combination_screen_invalid_cards_error =>
      'Please select cards only from the provided list. Invalid cards:';

  @override
  String get card_combination_screen_duplicate_cards_error =>
      'Please select different cards in all fields.';

  @override
  String get card_combination_screen_general_error =>
      'Error: failed to get a response. Please try again.';

  @override
  String get card_combination_screen_disclaimer =>
      'The application uses AI solely for entertainment purposes. We are not responsible for the decisions you make. If necessary, consult a specialist.';

  @override
  String get quick_reading_screen_title => 'Quick spread';

  @override
  String get quick_reading_screen_select_card => 'Choose a card';

  @override
  String get quick_reading_screen_get_answer_button => 'Find out the answer';

  @override
  String get quick_reading_screen_what_is_quick_spread =>
      'What is a quick spread?';

  @override
  String get quick_reading_screen_quick_spread_explanation =>
      'A quick spread is an express spread (answer: YES or NO) that helps to instantly get a clear answer to a specific question or the general atmosphere of the day. It\'s perfect when you need quick inspiration or advice \"here and now.\"';

  @override
  String get quick_reading_screen_understand_button => 'Understood';

  @override
  String get quick_reading_result_screen_generating_response =>
      'Generating response...';

  @override
  String quick_reading_result_screen_error_generating(Object error) {
    return 'Error generating response: $error';
  }

  @override
  String quick_reading_result_screen_error_generating_response(Object e) {
    return 'Error generating response: $e';
  }

  @override
  String get quick_reading_result_screen_what_is_quick_spread =>
      'What is a quick spread?';

  @override
  String get quick_reading_result_screen_quick_spread_explanation =>
      'A quick spread is an express spread (answer: YES or NO) that helps to instantly get a clear answer to a specific question or the general atmosphere of the day. It\'s perfect when you need quick inspiration or advice \"here and now.\"';

  @override
  String get quick_reading_result_screen_understand_button => 'Understood';

  @override
  String get quick_reading_result_screen_quick_spread_title => 'Quick spread';

  @override
  String get quick_reading_result_screen_new_spread_button => 'New spread';

  @override
  String get quick_reading_result_screen_disclaimer =>
      'The application uses AI solely for entertainment purposes. We are not responsible for the decisions you make. If necessary, consult a specialist.';

  @override
  String get career_finance_spread_screen_request_accepted =>
      'Your request has been accepted. Please open the cards.';

  @override
  String get career_finance_spread_screen_error_getting_value =>
      'Error retrieving the spread value. Please try again.';

  @override
  String get career_finance_spread_screen_what_is_career_finance =>
      'What is the Career and Finances spread?';

  @override
  String get career_finance_spread_screen_career_finance_explanation =>
      'This spread helps to analyze the professional and financial sphere. You will learn about opportunities, obstacles, and growth prospects.';

  @override
  String get career_finance_spread_screen_understand_button => 'Understood';

  @override
  String get career_finance_spread_screen_learn_meaning_button =>
      'Find out the meaning';

  @override
  String get career_finance_spread_screen_career_finance_title =>
      'Career and finances';

  @override
  String get career_finance_spread_screen_new_spread_button =>
      'Make a new spread';

  @override
  String get career_finance_spread_screen_disclaimer =>
      'The application uses AI solely for entertainment purposes. We are not responsible for the decisions you make. If necessary, consult a specialist.';

  @override
  String get career_finance_spread_screen_enter_question_hint =>
      'Enter your question...';

  @override
  String get pros_cons_spread_screen_what_is_pros_cons =>
      'What is the \"Pros and Cons\" spread?';

  @override
  String get pros_cons_spread_screen_pros_cons_title =>
      'Spread \"Pros and Cons\"';

  @override
  String get pros_cons_spread_screen_enter_question_hint =>
      'Enter your question...';

  @override
  String get self_development_balance_spread_screen_self_development_explanation =>
      'The \"Self-Development and Balance\" spread consists of 7 cards arranged in a circular shape. Each card symbolizes a specific aspect of your spiritual growth and inner harmony.';

  @override
  String get card_meanings_screen_major_arcana => 'Major Arcana';

  @override
  String get card_meanings_screen_wands => 'Wands';

  @override
  String get card_meanings_screen_cups => 'Cups';

  @override
  String get card_meanings_screen_swords => 'Swords';

  @override
  String get card_meanings_screen_pentacles => 'Pentacles';

  @override
  String get card_meanings_screen_title => 'Meaning of the cards';

  @override
  String get love_spread_screen_new_spread_button => 'Make a new spread';

  @override
  String get love_spread_screen_enter_question_hint => 'Enter your question...';

  @override
  String purchase_love_screen_test_stub(Object plan) {
    return 'Test placeholder: selected tariff \"$plan\"';
  }

  @override
  String get purchase_love_screen_love_tariff_title => 'LOVE tariff';

  @override
  String get ad_promo_block_tariff => 'TARIFF';

  @override
  String get ad_promo_block_love => 'LOVE';

  @override
  String get ad_promo_block_promotion_70 => 'SALE -50%';

  @override
  String get ad_promo_block_no_ads => '• without advertising';

  @override
  String get ad_promo_block_no_limits => '• without restrictions';

  @override
  String get three_cards_screen_title => '3 cards in the spread';

  @override
  String get three_cards_screen_initial_message =>
      'Good afternoon, please write your request below:';

  @override
  String get three_cards_screen_request_accepted =>
      'Your request has been accepted. Please open the cards.';

  @override
  String get three_cards_screen_suggested_questions_1 =>
      'What is my main problem right now?';

  @override
  String get three_cards_screen_suggested_questions_2 =>
      'What should I focus on in the near future?';

  @override
  String get three_cards_screen_suggested_questions_3 =>
      'What is hidden from me?';

  @override
  String get three_cards_screen_see_meaning_button => 'Find out the meaning';

  @override
  String get three_cards_screen_new_spread_button => 'New spread';

  @override
  String get three_cards_screen_enter_question_hint => 'Enter your request...';

  @override
  String get three_cards_screen_what_is_three_cards =>
      'What is a 3-card spread?';

  @override
  String get three_cards_screen_three_cards_explanation =>
      'A classic spread that shows the past, present, and future of your situation. The first card represents the past, the second the present, and the third the future.';

  @override
  String get three_cards_screen_understand_button => 'Understood';

  @override
  String get three_cards_screen_error_getting_value =>
      'Error retrieving the spread value. Please try again.';

  @override
  String get three_cards_screen_disclaimer =>
      'The application uses AI solely for entertainment purposes. We are not responsible for the decisions you make. If necessary, consult a specialist.';

  @override
  String get five_cards_screen_title => '5 cards in the spread';

  @override
  String get five_cards_screen_initial_message =>
      'Good afternoon, please write your request below:';

  @override
  String get five_cards_screen_request_accepted =>
      'Your request has been accepted. Please open the cards.';

  @override
  String get five_cards_screen_suggested_questions_1 =>
      'Which path should I choose?';

  @override
  String get five_cards_screen_suggested_questions_2 =>
      'What prevents me from achieving my goal?';

  @override
  String get five_cards_screen_suggested_questions_3 =>
      'What opportunities do I have?';

  @override
  String get five_cards_screen_see_meaning_button => 'Find out the meaning';

  @override
  String get five_cards_screen_new_spread_button => 'Make a new spread';

  @override
  String get five_cards_screen_enter_question_hint => 'Enter your request...';

  @override
  String get five_cards_screen_what_is_five_cards => 'What is a 5-card spread?';

  @override
  String get five_cards_screen_five_cards_explanation =>
      'The 5-card spread is a compact layout that reveals five key aspects of the situation: past, present, hidden influences, helper/obstacle, and likely outcome.';

  @override
  String get five_cards_screen_understand_button => 'Understood';

  @override
  String get five_cards_screen_error_getting_value =>
      'Error retrieving the spread value. Please try again.';

  @override
  String get five_cards_screen_disclaimer =>
      'The application uses AI solely for entertainment purposes. We are not responsible for the decisions you make. If necessary, consult a specialist.';

  @override
  String get celtic_cross_screen_title => 'Celtic Cross';

  @override
  String get celtic_cross_screen_initial_message =>
      'Good afternoon, please write your request below:';

  @override
  String get celtic_cross_screen_suggested_questions_1 =>
      'What internal resources are available to me?';

  @override
  String get celtic_cross_screen_suggested_questions_2 =>
      'What should I focus on right now?';

  @override
  String get celtic_cross_screen_suggested_questions_3 =>
      'What can help me move forward?';

  @override
  String get celtic_cross_screen_see_meaning_button => 'Find out the meaning';

  @override
  String get celtic_cross_screen_new_spread_button => 'Make a new spread';

  @override
  String get celtic_cross_screen_enter_question_hint => 'Enter your request...';

  @override
  String get celtic_cross_screen_what_is_celtic_cross_dialog =>
      'What is the Celtic Cross?';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_dialog =>
      'The \"Celtic Cross\" is a 10-card spread that thoroughly examines the situation from all angles: current circumstances, obstacles, internal and external influences, as well as the near dynamics and final outcome. The cards are laid out in order:\n\n1 - Situation — the essence of the question here-and-now.\n2 - Challenge — what helps or hinders progress.\n3 - Subconscious (root) — hidden motives and deep forces.\n4 - Recent past — events that led to the current position.\n5 - Conscious (goal) — what the querent is currently focused on.\n6 - Near future — likely developments in the coming weeks.\n7 - \"Myself\" — internal state, resources, attitude towards the question.\n8 - Environment — influences of people and circumstances around.\n9 - Hopes / fears — expectations, doubts, strong emotions.\n10 - Outcome — possible result if trends continue.\n\nThis spread allows you to see the \"big picture\": where you stand, what hinders or helps, what hidden impulses are working behind the scenes, and where everything is heading next.\n\nThe layout of the spread is shown in the image below.';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_image =>
      'assets/images/kelt.png';

  @override
  String get celtic_cross_screen_understand_button => 'Understood';

  @override
  String get celtic_cross_screen_please_open_cards =>
      'Your request has been accepted. Please open the cards.';

  @override
  String get celtic_cross_screen_request_accepted =>
      'Request accepted, please open the cards.';

  @override
  String get the_user => 'user';

  @override
  String get good_day_please_write_your_question_below =>
      'Good afternoon, please write your request below.';

  @override
  String get errorGettingSpreadMeaning =>
      'Error retrieving the spread value. Please try again.';

  @override
  String get errorGettingSpreadMeaningPleaseTryAgain =>
      'Error retrieving the spread value. Please try again.';

  @override
  String get seeMeaning => 'Find out the meaning';

  @override
  String get newSpread => 'Make a new spread';

  @override
  String get enterYourQuestion => 'Enter your question...';

  @override
  String get enterQuestion => 'Enter your question...';

  @override
  String get makeTarotReadingFor => 'Make for';

  @override
  String get theUser => 'user';

  @override
  String get onTheseThreeCards => 'spread for these three cards:';

  @override
  String makeSelfDevelopmentAndBalanceTarotReadingFor(Object cards) {
    return 'Make a $cards spread for Self-Development and Balance.';
  }

  @override
  String get getAnswer => 'Find out the answer';

  @override
  String get aboutTheSpread => 'About the spread';

  @override
  String get aboutSpreadDescription =>
      'This spread helps analyze your spiritual growth and inner harmony.';

  @override
  String get gotIt => 'Understood';

  @override
  String get selfDevelopmentAndBalance => 'Self-development and balance';

  @override
  String get appUsageDisclaimer =>
      'The application uses AI solely for entertainment purposes. We are not responsible for the decisions you make. If necessary, consult a specialist.';

  @override
  String get careerFinance => 'Career and finances';

  @override
  String get fun_spread_screen_with_swear_words_title => 'With swear words';

  @override
  String get fun_spread_screen_with_swear_words_subtitle =>
      'For those who love thrills';

  @override
  String get fun_spread_screen_without_swear_words_title => 'Without swearing';

  @override
  String get fun_spread_screen_without_swear_words_subtitle =>
      'A cheerful spread without swear words';

  @override
  String get fun_spread_screen_generating => 'Generating your spread...';

  @override
  String get card_name_the_fool => 'Jester';

  @override
  String get card_name_the_magician => 'Mage';

  @override
  String get card_name_the_high_priestess => 'The High Priestess';

  @override
  String get card_name_the_empress => 'The Empress';

  @override
  String get card_name_the_emperor => 'The Emperor';

  @override
  String get card_name_the_hierophant => 'Hierophant';

  @override
  String get card_name_the_lovers => 'The Lovers';

  @override
  String get card_name_the_chariot => 'Chariot';

  @override
  String get card_name_strength => 'Strength';

  @override
  String get card_name_the_hermit => 'The Hermit';

  @override
  String get ok_button => 'OK';

  @override
  String get cancel_button => 'Cancellation';

  @override
  String get analyzing_cards => 'I\'m analyzing the cards...';

  @override
  String get yes_button => 'Yes';

  @override
  String get no_button => 'No';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get success => 'Successfully';

  @override
  String get failed => 'Failed';

  @override
  String get language_russian => 'Russian';

  @override
  String get language_english_us => 'English (US)';

  @override
  String get language_english_gb => 'English (GB)';

  @override
  String get card_name_wheel_of_fortune => 'Wheel of Fortune';

  @override
  String get card_name_justice => 'Justice';

  @override
  String get card_name_the_hanged_man => 'The Hanged Man';

  @override
  String get card_name_death => 'Death';

  @override
  String get card_name_temperance => 'Moderation';

  @override
  String get card_name_the_devil => 'The Devil';

  @override
  String get card_name_the_tower => 'Tower';

  @override
  String get card_name_the_star => 'Star';

  @override
  String get card_name_the_moon => 'Moon';

  @override
  String get card_name_the_sun => 'Sun';

  @override
  String get card_name_judgement => 'Court';

  @override
  String get card_name_the_world => 'World';

  @override
  String get card_name_ace_of_wands => 'Ace of Wands';

  @override
  String get card_name_two_of_wands => 'Two of Wands';

  @override
  String get card_name_three_of_wands => 'Three of Wands';

  @override
  String get card_name_four_of_wands => 'Four of Wands';

  @override
  String get card_name_five_of_wands => 'Five of Wands';

  @override
  String get card_name_six_of_wands => 'Six of Wands';

  @override
  String get card_name_seven_of_wands => 'Seven of Wands';

  @override
  String get card_name_eight_of_wands => 'Eight of Wands';

  @override
  String get card_name_nine_of_wands => 'Nine of Wands';

  @override
  String get card_name_ten_of_wands => 'Ten of Wands';

  @override
  String get card_name_page_of_wands => 'Page of Wands';

  @override
  String get card_name_knight_of_wands => 'Knight of Wands';

  @override
  String get card_name_queen_of_wands => 'Queen of Wands';

  @override
  String get card_name_king_of_wands => 'King of Wands';

  @override
  String get card_name_ace_of_cups => 'Ace of Cups';

  @override
  String get card_name_two_of_cups => 'Two of Cups';

  @override
  String get card_name_three_of_cups => 'Three of Cups';

  @override
  String get card_name_four_of_cups => 'Four of Cups';

  @override
  String get card_name_five_of_cups => 'Five of Cups';

  @override
  String get card_name_six_of_cups => 'Six of Cups';

  @override
  String get card_name_seven_of_cups => 'Seven of Cups';

  @override
  String get card_name_eight_of_cups => 'Eight of Cups';

  @override
  String get card_name_nine_of_cups => 'Nine of Cups';

  @override
  String get card_name_ten_of_cups => 'Ten of Cups';

  @override
  String get card_name_page_of_cups => 'Page of Cups';

  @override
  String get card_name_knight_of_cups => 'Knight of Cups';

  @override
  String get card_name_queen_of_cups => 'Queen of Cups';

  @override
  String get card_name_king_of_cups => 'King of Cups';

  @override
  String get card_name_ace_of_swords => 'Ace of Swords';

  @override
  String get card_name_two_of_swords => 'Two of Swords';

  @override
  String get card_name_three_of_swords => 'Three of Swords';

  @override
  String get card_name_four_of_swords => 'Four of Swords';

  @override
  String get card_name_five_of_swords => 'Five of Swords';

  @override
  String get card_name_six_of_swords => 'Six of Swords';

  @override
  String get card_name_seven_of_swords => 'Seven of Swords';

  @override
  String get card_name_eight_of_swords => 'Eight of Swords';

  @override
  String get card_name_nine_of_swords => 'Nine of Swords';

  @override
  String get card_name_ten_of_swords => 'Ten of Swords';

  @override
  String get card_name_page_of_swords => 'Page of Swords';

  @override
  String get card_name_knight_of_swords => 'Knight of Swords';

  @override
  String get card_name_queen_of_swords => 'Queen of Swords';

  @override
  String get card_name_king_of_swords => 'King of Swords';

  @override
  String get card_name_ace_of_pentacles => 'Ace of Pentacles';

  @override
  String get card_name_two_of_pentacles => 'Two of Pentacles';

  @override
  String get card_name_three_of_pentacles => 'Three of Pentacles';

  @override
  String get card_name_four_of_pentacles => 'Four of Pentacles';

  @override
  String get card_name_five_of_pentacles => 'Five of Pentacles';

  @override
  String get card_name_six_of_pentacles => 'Six of Pentacles';

  @override
  String get card_name_seven_of_pentacles => 'Seven of Pentacles';

  @override
  String get card_name_eight_of_pentacles => 'Eight of Pentacles';

  @override
  String get card_name_nine_of_pentacles => 'Nine of Pentacles';

  @override
  String get card_name_ten_of_pentacles => 'Ten of Pentacles';

  @override
  String get card_name_page_of_pentacles => 'Page of Pentacles';

  @override
  String get card_name_knight_of_pentacles => 'Knight of Pentacles';

  @override
  String get card_name_queen_of_pentacles => 'Queen of Pentacles';

  @override
  String get card_name_king_of_pentacles => 'King of Pentacles';

  @override
  String get quick_reading_screen_suggested_questions_1 => 'Should I do it?';

  @override
  String get quick_reading_screen_suggested_questions_2 =>
      'Is this the right path?';

  @override
  String get quick_reading_screen_suggested_questions_3 =>
      'What do I need to know?';

  @override
  String get monthly_forecast_spread_screen_see_meaning_button =>
      'Find out the meaning';

  @override
  String get monthly_forecast_spread_screen_new_spread_button =>
      'Make a new spread';

  @override
  String get monthly_forecast_spread_screen_enter_question_hint =>
      'Enter your request...';

  @override
  String get monthly_forecast_spread_screen_what_is_monthly_forecast =>
      'What is a monthly forecast?';

  @override
  String get monthly_forecast_spread_screen_monthly_forecast_explanation =>
      'The monthly forecast shows the main events and trends for the upcoming month. It helps to prepare for changes and take advantage of opportunities.';

  @override
  String get monthly_forecast_spread_screen_understand_button => 'Understood';

  @override
  String get monthly_forecast_spread_screen_error_getting_value =>
      'Error retrieving the spread value. Please try again.';

  @override
  String get monthly_forecast_spread_screen_disclaimer =>
      'The application uses AI solely for entertainment purposes. We are not responsible for the decisions you make. If necessary, consult a specialist.';

  @override
  String get error_getting_answer_try_again =>
      'Error: failed to get a response. Please try again.';

  @override
  String get card_detail_screen_title => 'Card details';

  @override
  String get card_detail_screen_general_meaning => 'General meaning';

  @override
  String get card_detail_screen_reversed_meaning => 'Inverted value';

  @override
  String get card_detail_screen_symbolism => 'Symbolism';

  @override
  String get card_detail_screen_error_loading_text => 'Error loading text';

  @override
  String card_detail_screen_description(Object cardName) {
    return 'Description of the card $cardName';
  }

  @override
  String get card_detail_screen_see_other_card_meaning =>
      'View the meaning of another card.';

  @override
  String get card_detail_screen_or => 'or';

  @override
  String get card_detail_screen_loading_language => 'Loading language...';

  @override
  String get card_detail_screen_see_card_meaning => 'View the card\'s meaning';

  @override
  String get card_detail_screen_original_waite_text =>
      'The original text of Waite';

  @override
  String get card_detail_screen_no_original_text => 'No original text.';

  @override
  String get card_of_the_day_screen_title => 'Card of the Day';

  @override
  String get card_of_the_day_screen_error_loading_card => 'Error loading card';

  @override
  String get contact_us_title => 'Write to us';

  @override
  String get contact_us_email_hint => 'Your e-mail';

  @override
  String get contact_us_email_empty => 'Enter e-mail';

  @override
  String get contact_us_email_invalid => 'Incorrect e-mail';

  @override
  String get contact_us_message_hint => 'Your message';

  @override
  String get contact_us_message_empty => 'Enter a message';

  @override
  String get contact_us_send_button => 'Send';

  @override
  String get five_cards_spread_screen_what_is_five_cards_dialog =>
      'What is a 5-card spread?';

  @override
  String get five_cards_spread_screen_five_cards_explanation_dialog =>
      'This spread reveals the entire journey of your question:  \nCard 1 - Past shows the initial circumstances,  \nCard 2 - Present — the current energy,  \nCard 3 - Hidden reveals hidden influences,  \nCard 4 - Advice suggests the optimal action,  \nCard 5 - Outcome predicts the likely result.';

  @override
  String get five_cards_spread_screen_understand_button => 'Understood';

  @override
  String get language_selection_screen_title => 'Language';

  @override
  String get love_spread_screen_what_is_love_spread => 'What is a love spread?';

  @override
  String get love_spread_screen_love_spread_explanation =>
      'The love triplet consists of three cards laid out from left to right:  \nCard 1 - You - shows the feelings, motivation, and position of the querent.  \nCard 2 - Partner - reveals the emotions, plans, and readiness of the other party.  \nCard 3 - Dynamics / potential - describes how the two energies interact now and what the relationship is capable of leading to in the near future.';

  @override
  String get love_spread_screen_understand_button => 'Understood';

  @override
  String get main_screen_your_plan_trial =>
      'Your plan: Trial (with advertising)';

  @override
  String get main_screen_no_ads => '• without advertising';

  @override
  String get main_screen_no_limits => '• without restrictions';

  @override
  String get main_screen_shop_soon => 'Store (soon)';

  @override
  String get main_screen_notification_settings => 'Notification settings';

  @override
  String get main_screen_language_selection => 'Language selection';

  @override
  String get main_screen_rate_app => 'Rate the app';

  @override
  String get main_screen_contact_us => 'Contact us';

  @override
  String get main_screen_classic_spreads_title => 'Classic spreads';

  @override
  String get main_screen_classic_spreads_description =>
      'spreads of 2 / 3 / 5 cards and a full detailed Celtic cross';

  @override
  String get main_screen_card_meanings_title => 'Meaning of the cards';

  @override
  String get main_screen_card_meanings_description =>
      'a complete guide to the upright and reversed meanings of all major and minor arcana';

  @override
  String get main_screen_card_combination_description =>
      '\"tarot calculator\" choose cards and get a deep analysis of connections';

  @override
  String get notification_settings_screen_title => 'Notification settings';

  @override
  String get notification_settings_screen_frequency_question =>
      'How often would you like to receive notifications about the card of the day?';

  @override
  String get notification_settings_screen_every_day => 'Every day';

  @override
  String get notification_settings_screen_every_three_days =>
      'Once every three days';

  @override
  String get notification_settings_screen_every_week => 'Once a week';

  @override
  String get notification_settings_screen_time_question =>
      'At what time of day?';

  @override
  String get notification_settings_screen_morning => 'In the morning';

  @override
  String get notification_settings_screen_day => 'During the day';

  @override
  String get notification_settings_screen_evening => 'In the evening';

  @override
  String get notification_settings_screen_save_button => 'Save';

  @override
  String get onboarding_final_screen_yearly_price => '249/year';

  @override
  String get onboarding_final_screen_yearly_month_price => '24/month';

  @override
  String get onboarding_final_screen_monthly_price => '9/month';

  @override
  String get onboarding_final_screen_monthly_month_price => '9/month';

  @override
  String get onboarding_final_screen_yearly_plan => 'Annually';

  @override
  String get onboarding_final_screen_free_trial => '7 days free';

  @override
  String get onboarding_final_screen_purchase_title => 'Purchase';

  @override
  String onboarding_final_screen_test_stub_message(Object plan) {
    return 'Test placeholder: selected tariff \"$plan\"';
  }

  @override
  String get onboarding_final_screen_ok_button => 'OK';

  @override
  String get purchase_love_screen_yearly_price => '249/year';

  @override
  String get purchase_love_screen_yearly_month_price => '24/month';

  @override
  String get purchase_love_screen_monthly_price => '9/month';

  @override
  String get purchase_love_screen_monthly_month_price => '9/month';

  @override
  String get purchase_love_screen_title => 'Purchase';

  @override
  String get purchase_love_screen_ok_button => 'OK';

  @override
  String quick_reading_screen_error_no_image_file_found(Object cardName) {
    return 'ERROR: Image file not found for card: $cardName';
  }

  @override
  String get please_fill_all_fields =>
      'Please fill in all the fields of the cards.';

  @override
  String get please_select_cards_only_from_suggested_list =>
      'Please select cards only from the provided list. Invalid cards:';

  @override
  String get please_select_different_cards_in_all_fields =>
      'Please select different cards in all fields.';

  @override
  String get card => 'Card';

  @override
  String get get_combination => 'Find the combination';

  @override
  String get new_spread => 'Make a new spread';

  @override
  String get app_uses_ai_for_entertainment_purposes =>
      'The application uses AI solely for entertainment purposes. We are not responsible for the decisions you make. If necessary, consult a specialist.';

  @override
  String get career_finance_spread_screen_what_is_career_finance_spread =>
      'What is the Career and Finances spread?';

  @override
  String get celtic_cross_screen_unable_to_load_card =>
      'Failed to load the card';

  @override
  String get celticCrossTitle => 'Celtic Cross';

  @override
  String get chat_with_tarot_reader_screen_request_received =>
      'Your request has been accepted. Please open the cards.';

  @override
  String get see_meaning_button => 'Find out the meaning';

  @override
  String get three_cards_title => '3 cards in the spread';

  @override
  String get new_spread_button => 'Make a new spread';

  @override
  String get disclaimer_text =>
      'The application uses AI solely for entertainment purposes. We are not responsible for the decisions you make. If necessary, consult a specialist.';

  @override
  String get enter_your_question => 'Enter your question...';

  @override
  String get classic_spreads_screen_title => 'Classic spreads';

  @override
  String get classic_spreads_screen_three_cards_title => '3 cards';

  @override
  String get classic_spreads_screen_three_cards_description =>
      'Past, present, future';

  @override
  String get classic_spreads_screen_five_cards_title => '5 cards';

  @override
  String get classic_spreads_screen_five_cards_description =>
      'Deep analysis of the situation';

  @override
  String get classic_spreads_screen_celtic_cross_title => 'Celtic Cross';

  @override
  String get classic_spreads_screen_celtic_cross_description =>
      'Full spread of 10 cards';

  @override
  String get fiveCardsInSpread => '5 cards in the spread';

  @override
  String get makeNewSpread => 'Make a new spread';

  @override
  String get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMake =>
      'The application uses AI solely for entertainment purposes. We are not responsible for the decisions you make. If necessary, please consult a specialist.';

  @override
  String get requestReceivedPleaseOpenCards =>
      'Your request has been accepted. Please open the cards.';

  @override
  String get loveSpread => 'Love spread';

  @override
  String get applicationUsesAIExclusivelyForEntertainmentWeDoNotTakeResponsibilityForDecisionsYouHaveMadeIfNeededPleaseConsultSpecialist =>
      'The application uses AI solely for entertainment purposes. We are not responsible for the decisions you make. If necessary, consult a specialist.';

  @override
  String main_screen_greeting_with_name(Object name) {
    return 'Hello, $name';
  }

  @override
  String get main_screen_monday => 'Monday';

  @override
  String get main_screen_tuesday => 'Tuesday';

  @override
  String get main_screen_wednesday => 'Wednesday';

  @override
  String get main_screen_thursday => 'Thursday';

  @override
  String get main_screen_friday => 'Friday';

  @override
  String get main_screen_saturday => 'Saturday';

  @override
  String get main_screen_sunday => 'Sunday';

  @override
  String get main_screen_your_card_of_the_day => 'Your card of the day';

  @override
  String main_screen_card_of_the_day_with_name(Object cardName) {
    return 'Card of the day: $cardName';
  }

  @override
  String get main_screen_card_of_the_day => 'Card of the day:';

  @override
  String get main_screen_viewed => 'Open';

  @override
  String get main_screen_not_viewed => 'Look';

  @override
  String get main_screen_spreads => 'Spreads';

  @override
  String get main_screen_training => 'Training';

  @override
  String get main_screen_entertainment => 'Entertainment';

  @override
  String get main_screen_glad_to_see_you_here => 'Glad to see you here!';

  @override
  String get main_screen_quick_reading_title => 'Quick spread';

  @override
  String get main_screen_quick_reading_description =>
      'with just a couple of taps, get a clear answer to your question with one card';

  @override
  String get monthly_forecast_spread_screen_request_accepted =>
      'Your request has been accepted. Please open the cards.';

  @override
  String get aboutSpread => 'About the spread';

  @override
  String get monthlyForecast => 'Monthly forecast';

  @override
  String get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNecessaryPleaseConsultSpecialist =>
      'The application uses AI solely for entertainment purposes. We are not responsible for the decisions you make. If necessary, consult a specialist.';

  @override
  String purchase_love_screen_test_message(Object planName) {
    return 'Test placeholder: selected tariff \"$planName\"';
  }

  @override
  String get quick_reading_screen_what_is_quick_reading =>
      'What is a quick spread?';

  @override
  String get quick_reading_screen_quick_reading_explanation =>
      'A quick spread is an express spread (answer: YES or NO) that helps to instantly get a clear answer to a specific question or the general atmosphere of the day. It\'s perfect when you need quick inspiration or advice \"here and now.\"';

  @override
  String get self_development_balance_spread_screen_request_accepted =>
      'Your request has been accepted. Please open the cards.';

  @override
  String get self_development_balance_spread_screen_error_getting_value =>
      'Error retrieving the spread value. Please try again.';

  @override
  String get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNeededConsultSpecialist =>
      'The application uses AI solely for entertainment purposes. We are not responsible for the decisions you make. If necessary, consult a specialist.';

  @override
  String get thematic_spreads_screen_title => 'Thematic spreads';

  @override
  String get thematic_spreads_screen_love_spread_title => 'Love spread';

  @override
  String get thematic_spreads_screen_love_spread_description =>
      'Analysis of relationships and feelings';

  @override
  String get thematic_spreads_screen_career_finance_title =>
      'Career and finances';

  @override
  String get thematic_spreads_screen_career_finance_description =>
      'Professional and financial analysis';

  @override
  String get thematic_spreads_screen_pros_cons_title => 'Pros and Cons';

  @override
  String get thematic_spreads_screen_pros_cons_description =>
      'Analysis of pros and cons';

  @override
  String get thematic_spreads_screen_monthly_forecast_title =>
      'Monthly forecast';

  @override
  String get thematic_spreads_screen_monthly_forecast_description =>
      'Monthly forecast';

  @override
  String get thematic_spreads_screen_self_development_title =>
      'Self-development and balance';

  @override
  String get thematic_spreads_screen_self_development_description =>
      'Spiritual growth and harmony';

  @override
  String get requestReceived =>
      'Your request has been accepted. Please open the cards.';

  @override
  String get pros_cons_spread_screen_what_is_pros_cons_spread =>
      'What is the \"Pros and Cons\" spread?';

  @override
  String get pros_cons_spread_screen_pros_cons_spread_explanation =>
      'The \"Pros and Cons\" spread helps analyze the advantages and disadvantages of a situation in order to make a balanced decision.';

  @override
  String get pros_cons_spread_screen_understand_button => 'Understood';

  @override
  String get prosConsSpreadTitle => '\"Pros and Cons\" spread';

  @override
  String get spreadDisclaimer =>
      'The application uses AI solely for entertainment purposes. We are not responsible for the decisions you make. If necessary, consult a specialist.';

  @override
  String get fun_spread_screen_generation_error =>
      'Error generating the spread. Please try again.';

  @override
  String get fun_spread_screen_share_error => 'Error saving image.';

  @override
  String get fun_spread_screen_about_fun_spread => 'What is a funny spread?';

  @override
  String get fun_spread_screen_fun_spread_explanation =>
      'A fun spread is a special way of divination using tarot cards that combines the depth of traditional spreads with a light and positive approach. It will help you look at the situation from a new perspective and find joy in everyday life.';

  @override
  String get fun_spread_screen_understand_button => 'Understood';

  @override
  String get fun_spread_screen_title => 'Funny spread';

  @override
  String get fun_spread_screen_generate_button => 'Create a spread';

  @override
  String get fun_spread_screen_share_button => 'Share';

  @override
  String get fun_spread_screen_new_button => 'New spread';

  @override
  String get fun_spread_screen_share_text =>
      'Look at what a funny tarot spread I got in the Tarot AI app!';

  @override
  String get ad_promo_tariff => 'TARIFF';

  @override
  String get ad_promo_love => 'LOVE';

  @override
  String get ad_promo_discount => 'SALE -50%';

  @override
  String get ad_promo_no_ads => '• without advertising';

  @override
  String get ad_promo_no_limits => '• without restrictions';

  @override
  String get no_internet_error =>
      'Our app works only with the internet. Please turn on Wi-Fi or mobile data.';

  @override
  String get fun_spread_screen_title_top => 'TAROT spread';

  @override
  String fun_spread_screen_title_for_name(Object name) {
    return 'for $name';
  }

  @override
  String get contact_us_screen_message_sent =>
      'Your message has been received, thank you!';

  @override
  String get contact_us_screen_message_error => 'Message sending error';

  @override
  String get love_spread_screen_initial_message =>
      'Good afternoon, please write your question below:';

  @override
  String get main_screen_tariff => 'TARIFF';

  @override
  String get main_screen_promo_50 => 'SALE -50%';

  @override
  String get main_screen_rate_hint =>
      'If the rating window did not appear, you can leave a review on Google Play.';

  @override
  String get main_screen_rate_error =>
      'Failed to open Google Play. Please try again later.';

  @override
  String get love_spread_screen_suggested_questions_1 =>
      'What are my feelings for this person?';

  @override
  String get love_spread_screen_suggested_questions_2 =>
      'What is hindering our relationship?';

  @override
  String get love_spread_screen_suggested_questions_3 =>
      'What future awaits our relationship?';

  @override
  String get career_finance_spread_screen_suggested_questions_1 =>
      'What opportunities await me in my career?';

  @override
  String get career_finance_spread_screen_suggested_questions_2 =>
      'How can I improve my financial situation?';

  @override
  String get career_finance_spread_screen_suggested_questions_3 =>
      'Is it worth changing jobs?';

  @override
  String get pros_cons_spread_screen_suggested_questions_1 =>
      'Should I make this decision?';

  @override
  String get pros_cons_spread_screen_suggested_questions_2 =>
      'What are the pros and cons of this choice?';

  @override
  String get pros_cons_spread_screen_suggested_questions_3 =>
      'What is more important in this situation?';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_1 =>
      'What awaits me this month?';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_2 =>
      'What events will happen in the near future?';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_3 =>
      'What should I focus on this month?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_1 =>
      'How can I develop spiritually?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_2 =>
      'What hinders my inner balance?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_3 =>
      'How to find harmony in life?';

  @override
  String get main_screen_suggest_spread => 'What spread to add? Write to us.';

  @override
  String get main_screen_disclaimer =>
      'The application uses AI solely for entertainment purposes. We are not responsible for the decisions you make. If necessary, consult a specialist.';

  @override
  String get month_january => 'January';

  @override
  String get month_february => 'February';

  @override
  String get month_march => 'March';

  @override
  String get month_april => 'April';

  @override
  String get month_may => 'May';

  @override
  String get month_june => 'June';

  @override
  String get month_july => 'July';

  @override
  String get month_august => 'August';

  @override
  String get month_september => 'September';

  @override
  String get month_october => 'October';

  @override
  String get month_november => 'November';

  @override
  String get month_december => 'December';

  @override
  String get fun_share_button => 'Share';

  @override
  String get fun_new_spread_button => 'New spread';

  @override
  String get reflection_voice_permission_denied =>
      'Voice input requires permission to access the microphone.';

  @override
  String reflection_voice_error(Object error) {
    return 'Speech recognition error: $error';
  }

  @override
  String get reflection_voice_unavailable =>
      'Speech recognition is not available on this device.';

  @override
  String get reflection_voice_hint =>
      'Press the microphone and start speaking your thoughts...';

  @override
  String get reflection_voice_ios_microphone =>
      'For voice input of reflections';

  @override
  String get reflection_voice_ios_speech =>
      'For speech recognition in your reflections';

  @override
  String get reflection_summary_see_analysis_button => 'See the analysis';

  @override
  String get reflection_summary_error_getting_analysis =>
      'Error retrieving analysis. Please try again.';

  @override
  String get reflection_summary_ai_recommendations_title =>
      'Personal recommendations';

  @override
  String get quick_reading_result_screen_quick_spread_type =>
      'Quick divination';

  @override
  String get quick_reading_result_screen_microphone_permission_error =>
      'Voice input requires permission to access the microphone.';

  @override
  String quick_reading_result_screen_speech_recognition_error(Object errorMsg) {
    return 'Speech recognition error: $errorMsg';
  }

  @override
  String get quick_reading_result_screen_speech_not_available =>
      'Speech recognition is not available on this device.';

  @override
  String quick_reading_result_screen_your_card(Object cardName) {
    return 'Your card: $cardName';
  }

  @override
  String get quick_reading_result_screen_reflection_intro =>
      'Let\'s reflect and write down your thoughts so that I can give you better recommendations later. Please answer two questions.';

  @override
  String get quick_reading_result_screen_reflection_question =>
      'What did this spread make you feel right now? Think about how you can apply this spread in your life right now?';

  @override
  String get quick_reading_result_screen_reflection_final =>
      'Thank you. Keep doing the spreads and recording your thoughts. Whenever you want, check the \"Diary\" section, and I will give you personalized recommendations based on your inner journey.';

  @override
  String get quick_reading_result_screen_input_hint => '...';

  @override
  String get quick_reading_result_screen_please_write_thoughts =>
      'Please write your thoughts';

  @override
  String get quick_reading_result_screen_write_thoughts_hint =>
      'Write your thoughts...';

  @override
  String get quick_reading_result_screen_save_reflection => 'Save reflection';

  @override
  String get quick_reading_result_screen_l10n_null_error =>
      'Error: l10n is null';

  @override
  String get quick_reading_result_screen_prompt_empty_error =>
      'Error: prompt is empty';

  @override
  String quick_reading_result_screen_general_error(Object error) {
    return 'Error: $error';
  }

  @override
  String get server_temporarily_unavailable =>
      'The server is temporarily unavailable. Please try again in a few seconds.';

  @override
  String get onboarding_final_error_title => 'Error';

  @override
  String get onboarding_final_error_ok => 'OK';

  @override
  String onboarding_final_purchase_error(Object error) {
    return 'Purchase error: $error';
  }

  @override
  String get purchase_love_error_title => 'Error';

  @override
  String get purchase_love_error_ok => 'OK';

  @override
  String purchase_love_purchase_error(Object error) {
    return 'Purchase error: $error';
  }

  @override
  String get purchase_love_restore_success =>
      'Your subscription has been restored!';

  @override
  String purchase_love_restore_error(Object error) {
    return 'Recovery error: $error';
  }

  @override
  String get purchase_love_restore_button => 'Restore';

  @override
  String get purchase_love_loading => 'Loading...';

  @override
  String get purchase_love_per_month => '/month';

  @override
  String get reflection_screen_title => 'Self-reflection';

  @override
  String reflection_screen_card_of_day(Object cardName) {
    return 'Card of the day: $cardName';
  }

  @override
  String get reflection_screen_tarologist_name => 'Tarot reader';

  @override
  String get reflection_screen_write_thoughts_hint => 'Write your thoughts...';

  @override
  String get reflection_screen_continue_button => 'Continue';

  @override
  String get reflection_screen_save_button => 'Save';

  @override
  String get reflection_screen_finish_button => 'Complete';

  @override
  String get reflection_screen_please_write_thoughts =>
      'Please write your thoughts';

  @override
  String get reflection_screen_saved_success =>
      'Your reflections have been saved.';

  @override
  String reflection_screen_save_error(Object error) {
    return 'Error saving: $error';
  }

  @override
  String get reflection_screen_intro_message =>
      'Let\'s reflect and write down your thoughts so that I can give you better recommendations later. Please answer two questions.';

  @override
  String get reflection_screen_question_message =>
      'What did this spread make you feel right now? Think about how you can apply this spread in your life right now?';

  @override
  String get reflection_screen_final_message =>
      'Thank you. Keep doing the spreads and recording your thoughts.\n\nWhenever you want, check the \"My Reflections\" section, and I will give you personalized recommendations based on your inner journey.';

  @override
  String reflection_summary_load_error(Object error) {
    return 'Loading error: $error';
  }

  @override
  String get reflection_summary_need_7_entries =>
      'Need 7 entries to receive recommendations.';

  @override
  String get reflection_summary_ok_button => 'OK';

  @override
  String get reflection_summary_screen_title => 'My reflections';

  @override
  String reflection_summary_left_to_analyze(Object count) {
    return 'Time left for analysis: $count spreads';
  }

  @override
  String get reflection_summary_instruction_text =>
      'In order for me to analyze and give advice on your thoughts, please do 7 spreads and write down your thoughts. Then come back here to find out the advice.';

  @override
  String reflection_summary_spread_label(Object spreadName) {
    return '🃏 Spread: $spreadName';
  }

  @override
  String get reflection_summary_cards_label => '🗂️ Cards in the spread:';

  @override
  String get reflection_summary_thoughts_label => '💭 Thoughts:';

  @override
  String get reflection_summary_date_label => '📅 Date:';

  @override
  String get reflection_summary_empty_placeholder => '—';

  @override
  String journal_service_load_error(Object error) {
    return 'Error loading entries: $error';
  }

  @override
  String journal_service_save_error(Object error) {
    return 'Error saving entry: $error';
  }

  @override
  String journal_service_delete_error(Object error) {
    return 'Error deleting entry: $error';
  }

  @override
  String get journal_service_no_note => 'Note not added';

  @override
  String get love_spread_screen_title => 'Love spread';

  @override
  String get love_spread_screen_description =>
      'Analysis of relationships and feelings';

  @override
  String get career_finance_spread_screen_title => 'Career and finances';

  @override
  String get career_finance_spread_screen_description =>
      'Professional and financial analysis';

  @override
  String get pros_cons_spread_screen_title => 'Pros and Cons';

  @override
  String get pros_cons_spread_screen_description =>
      'Analysis of the pros and cons of the situation';

  @override
  String get monthly_forecast_spread_screen_title => 'Monthly forecast';

  @override
  String get monthly_forecast_spread_screen_description => 'Monthly forecast';

  @override
  String get self_development_balance_spread_screen_title =>
      'Self-development and balance';

  @override
  String get self_development_balance_spread_screen_description =>
      'Spiritual growth and harmony';

  @override
  String get five_cards_spread_screen_title => '5 cards';

  @override
  String get five_cards_spread_screen_description =>
      'Deep analysis of the situation';

  @override
  String get celtic_cross_screen_description => 'Full spread of 10 cards';

  @override
  String get session_completed_title => 'Congratulations! 🎉';

  @override
  String get session_completed_description =>
      'You have made 7 spreads and you have access to an analysis from the tarot reader regarding your thoughts.';

  @override
  String get session_completed_view_analysis => 'Learn analysis';

  @override
  String get session_completed_reset => 'Reset';

  @override
  String get purchase_love_store_unavailable =>
      'The store is unavailable, please try again later.';

  @override
  String get card_of_the_day_screen_generating_answer =>
      'Generating a response... Please wait';

  @override
  String get main_screen_nav_spreads => 'Spreads';

  @override
  String get main_screen_nav_journal => 'Diary';

  @override
  String get main_screen_nav_menu => 'Menu';

  @override
  String get main_screen_privacy_settings => 'Privacy settings';

  @override
  String get consent_dialog_title => 'Content personalization';

  @override
  String get consent_dialog_description =>
      'We use data to enhance your experience and show relevant ads. Your data is protected and not shared with third parties.';

  @override
  String get consent_analytics => 'Analytics and app improvement';

  @override
  String get consent_personalized_ads => 'Personalized advertising';

  @override
  String get consent_accept => 'Accept';

  @override
  String get consent_decline => 'Decline';

  @override
  String get consent_privacy_policy => 'Privacy Policy';

  @override
  String get consent_settings_updated => 'Privacy settings updated';

  @override
  String get consent_settings_error => 'Error opening privacy settings';

  @override
  String get five_card_spread_past => 'Past';

  @override
  String get five_card_spread_present => 'Present';

  @override
  String get five_card_spread_hidden => 'Hidden';

  @override
  String get five_card_spread_advice => 'Advice';

  @override
  String get five_card_spread_outcome => 'Summary';

  @override
  String celtic_cross_screen_prompt(
      Object challengeCard,
      Object consciousCard,
      Object environmentCard,
      Object hiddenCard,
      Object hopesCard,
      Object lang,
      Object outcomeCard,
      Object pastCard,
      Object selfCard,
      Object situationCard,
      Object subconsciousCard,
      Object userName,
      Object userQuestion) {
    return 'You are an experienced tarot reader. User $userName asks: \"$userQuestion\". Respond with the “Celtic Cross” spread (the classic Waite layout). The cards are provided as follows: situation – $situationCard; challenge – $challengeCard; subconscious – $subconsciousCard; recent past – $pastCard; conscious – $consciousCard; near future – $hiddenCard; inner self – $selfCard; environment – $environmentCard; hopes or fears – $hopesCard; outcome – $outcomeCard. Mention $userName at least six times and be sure to connect each card to the question. Follow this structure:\n\n1) Greeting by name $userName.\n\n2) Title: Spread: situation ($situationCard) / challenge ($challengeCard) / subconscious ($subconsciousCard) / recent past ($pastCard) / conscious ($consciousCard) / near future ($hiddenCard) / inner self ($selfCard) / environment ($environmentCard) / hopes/fears ($hopesCard) / outcome ($outcomeCard).\n\n3) Situation — $situationCard (45–55 words): three keywords, the card’s symbolism, and the current situation regarding $userQuestion for $userName.\n\n4) Challenge — $challengeCard (45–55 words): the main obstacle or support for $userName.\n\n5) Subconscious — $subconsciousCard (45–55 words): hidden motives or energies influencing $userName.\n\n6) Recent Past — $pastCard (45–55 words): events that led $userName to the current situation.\n\n7) Conscious — $consciousCard (45–55 words): goals, expectations, or what $userName is aware of.\n\n8) Near Future — $hiddenCard (45–55 words): likely developments in the coming weeks.\n\n9) Inner Self — $selfCard (45–55 words): $userName’s state and resources.\n\n10) Environment — $environmentCard (45–55 words): the influence of people and circumstances.\n\n11) Hopes / Fears — $hopesCard (45–55 words): $userName’s expectations or anxieties.\n\n12) Outcome — $outcomeCard (45–55 words): the probable result, taking the spread’s guidance into account.\n\n13) Conclusion: friendly support and a positive affirmation (30–35 words) for $userName.\n\nRequirements: total length 400–500 words, lively conversational tone, 4–6 esoteric emojis; separate each section with a double line break (\\n\\n); do not use asterisks, hashtags or any markup; write only plain text. Respond entirely in $lang.';
  }

  @override
  String card_detail_screen_general_meaning_prompt(
      Object cardName, Object lang) {
    return 'Describe the general meaning of the tarot card \"$cardName\" in $lang. Include its history, symbolism, and main interpretations.';
  }

  @override
  String card_detail_screen_reversed_meaning_prompt(
      Object cardName, Object lang) {
    return 'Describe the reversed meaning of the tarot card \"$cardName\" in $lang. Include opposite meanings and warnings.';
  }

  @override
  String card_detail_screen_symbolism_prompt(Object cardName, Object lang) {
    return 'Explain the symbolism of the tarot card \"$cardName\" in $lang. Include details of the imagery, colors, and their meanings.';
  }

  @override
  String self_development_balance_spread_screen_prompt(
      Object cards, Object lang, Object userName) {
    return 'Create a self-development and balance spread for $userName using these three cards: $cards. Respond entirely in $lang.';
  }

  @override
  String quick_reading_result_screen_prompt(Object cards, Object lang,
      Object language, Object question, Object userName) {
    return 'You are an experienced tarot reader. User $userName has drawn the card(s): $cards. User\'s question: $question. First, write on a new line: \'Answer of the cards:\' followed by the single word \'Yes\' or \'No\'. Then add a coherent interpretation of 120–150 words: 7–8 sentences explaining why the energy of $cards leads to that answer and what it means personally for $userName. Mention $userName at least twice, include 1–2 thematic emojis, avoid asterisks, hashtags or any markup; write in a simple conversational tone. Respond entirely in $language.';
  }

  @override
  String card_of_the_day_screen_translate_card_name_prompt(
      Object cardName, Object lang) {
    return 'Translate the name of the tarot card \"$cardName\" into $lang. Provide only the translated name without any extra text or punctuation.';
  }

  @override
  String card_of_the_day_screen_generate_description_prompt(
      Object cardName, Object lang, Object name) {
    return 'You are a professional tarot reader. Write an inspiring “Card of the Day” message in the requested language for user $name. Follow this structure and length:\n\n🌟 $name, your card of the day is — $cardName!\n\n🔑 Keywords: <list 3–5 short keywords>\n\n🃏 Meaning (≈45–50 words): describe the main energy of the card and how it will manifest today for $name.\n\n💡 Advice (≈35–40 words): suggest a concrete action or mindset to help $name harness this energy.\n\n✨ Affirmation (1 line): a positive statement beginning with \"I…\".\n\nRequirements: total 120–150 words, warm esoteric tone, 3–4 thematic emojis, no HTML/Markdown lists; separate paragraphs with double line breaks (\\n\\n). Respond entirely in $lang.';
  }

  @override
  String chat_with_tarot_reader_screen_prompt(
      Object card1,
      Object card2,
      Object card3,
      Object hiddenCard,
      Object lang,
      Object pastCard,
      Object presentCard,
      Object userName,
      Object userQuestion) {
    return 'You are an experienced tarot reader. User $userName asks: \"$userQuestion\". Respond with the “Past – Present – Future” spread. The cards are provided as: past – $pastCard; present – $presentCard; future – $hiddenCard. Mention $userName at least four times and tie each card’s meaning to the question. Follow this structure:\n\n1) Greeting by name $userName.\n\n2) Title: Spread: Past ($pastCard) – Present ($presentCard) – Future ($hiddenCard).\n\n3) PAST — $pastCard (40–50 words): three keywords, symbolism, and how past events influence the outcome for $userName’s question.\n\n4) PRESENT — $presentCard (40–50 words): keywords, symbolism, and current factors affecting the answer.\n\n5) FUTURE — $hiddenCard (40–50 words): keywords, symbolism, and the likely scenario.\n\n6) Conclusion: brief advice, a positive affirmation (20–30 words), and a clear summary of the outlook.\n\nRequirements: total 180–220 words, warm esoteric tone, 3–5 thematic emojis; separate each block with double line breaks (\\n\\n); no asterisks, hashtags or any other formatting; plain text only. Respond entirely in $lang.';
  }

  @override
  String career_finance_spread_screen_prompt(Object adviceCard, Object lang,
      Object pastCard, Object presentCard, Object question, Object userName) {
    return 'You are an experienced tarot reader. User $userName asks: \"$question\". Create a Career and Finance spread with these three cards: past – $pastCard: This card reflects previous influences or experiences; present – $presentCard: This card shows the current situation; advice – $adviceCard: This card offers guidance for the future. Respond entirely in $lang.';
  }

  @override
  String five_cards_screen_prompt(
      Object adviceCard,
      Object hiddenCard,
      Object lang,
      Object outcomeCard,
      Object pastCard,
      Object presentCard,
      Object userName,
      Object userQuestion) {
    return 'You are an experienced tarot reader. User $userName asks: \"$userQuestion\". Respond with the “5-Card” spread. The cards are: past – $pastCard; present – $presentCard; hidden – $hiddenCard; advice – $adviceCard; outcome – $outcomeCard. Explain each card’s meaning and their overall message. Respond entirely in $lang.';
  }

  @override
  String monthly_forecast_spread_screen_prompt(
      Object cards, Object lang, Object userName) {
    return 'Create a monthly forecast spread for $userName using these cards: $cards. Begin with a greeting by name $userName. Respond entirely in $lang.';
  }

  @override
  String love_spread_prompt(Object dynamicCard, Object lang, Object partnerCard,
      Object userName, Object userQuestion, Object youCard) {
    return 'You are an experienced tarot reader. User $userName asks: \"$userQuestion\". Respond with a three-card Love spread. The cards are: $userName’s feelings – $youCard; partner’s feelings – $partnerCard; relationship dynamic or potential – $dynamicCard. Mention $userName at least three times and tie each card to the question. Follow this structure:\n\n1) Greeting by name $userName.\n\n2) Title: Spread: $youCard | $partnerCard | $dynamicCard.\n\n3) $youCard: what this card says about $userName’s feelings and expectations.\n\n4) $partnerCard: the partner’s emotions and intentions.\n\n5) $dynamicCard: how these energies interact and what they lead to.\n\n6) Conclusion: warm advice and a positive affirmation for $userName.\n\nRequirements: total 150–180 words, friendly romantic tone, 2–4 thematic emojis; separate paragraphs with double line breaks (\\n\\n); no asterisks, hashtags or any markup. Respond entirely in $lang.';
  }

  @override
  String pros_cons_spread_prompt(Object adviceCard, Object conCard, Object lang,
      Object proCard, Object question, Object userName) {
    return 'You are an experienced tarot reader. User $userName asks: \"$question\". Create a Pros & Cons spread with these three cards: pros – $proCard: This card suggests that making this choice could bring about positive changes. cons – $conCard: This card points to patience and evaluation but also hints at potential stagnation. advice – $adviceCard: The guidance here recommends a particular approach or mindset. Respond entirely in $lang.';
  }

  @override
  String fun_spread_screen_mate_prompt_3cards(Object lang, Object userName) {
    return 'Create a very funny, cheeky, and profanity-laced three-card tarot spread for $userName. For each card, invent a humorous title and write a separate paragraph: First card: <title> — <short funny description>; Second card: <title> — <short funny description>; Third card: <title> — <short funny description>. Use profanity for humor without insulting. Maximum seven sentences. Respond entirely in $lang.';
  }

  @override
  String fun_spread_screen_no_mate_prompt_3cards(Object lang, Object userName) {
    return 'Create an amusing three-card tarot spread for $userName. For each card, invent a funny title and write a separate paragraph: First card: <title> — <short funny description>; Second card: <title> — <short funny description>; Third card: <title> — <short funny description>. The spread should be playful yet meaningful. Exactly three cards. Maximum seven sentences. Respond entirely in $lang.';
  }

  @override
  String card_combination_screen_prompt(Object cards, Object lang) {
    return 'Analyze the combination of tarot cards: $cards. Provide a deep mystical interpretation of their interaction and overall advice. Respond entirely in $lang, without greetings or conclusions.';
  }

  @override
  String journal_service_ai_insight_prompt(
      Object cards, Object lang, Object note, Object spreadType) {
    return 'Analyze this tarot spread and provide deep insight:\n\nSpread type: $spreadType\nCards: $cards\nUser note: $note\n\nOffer:\n1. Overall energy analysis\n2. Key themes and lessons\n3. Practical self-discovery recommendations\n4. Areas to cultivate within oneself\n5. Points to watch in the near future\n\nBe inspiring and supportive. Write in the user’s language. Respond entirely in $lang.';
  }

  @override
  String journal_service_weekly_analysis_prompt(Object entriesSummary,
      Object lang, Object spreadTypes, Object totalEntries) {
    return 'Analyze my week with tarot and give deep insight into my self-discovery journey:\n\nTotal spreads this week: $totalEntries\n$entriesSummary\n\nSpread types: $spreadTypes\n\nOffer:\n1. General trends and patterns\n2. Main themes that emerged\n3. My progress in self-discovery\n4. Recommendations for next week\n5. An inspiring message to continue the path\n\nBe supportive and motivating. Highlight progress and achievements. Respond entirely in $lang.';
  }

  @override
  String career_three_card_prompt(Object adviceCard, Object challengeCard,
      Object lang, Object situationCard, Object userName, Object userQuestion) {
    return 'You are an experienced tarot coach. User $userName asks: \"$userQuestion\". Create a three-card Career and Finance spread. The cards are: 1) Situation – $situationCard; 2) Obstacle or key opportunity – $challengeCard; 3) Advice and potential – $adviceCard. Determine the user’s gender from $userName and use correct pronouns. Speak in a friendly, professional tone: show where they stand, what blocks growth (or what opportunity to notice), and which practical step leads to the desired income. Mention $userName at least three times. Follow this structure:\n\n1) Greeting — one sentence.\n\n2) Title: Spread: $situationCard | $challengeCard | $adviceCard.\n\n3) $situationCard — 45–55 words: describe $userName’s current professional or financial situation and the card’s symbolism.\n\n4) $challengeCard — 45–55 words: reveal the main barrier or hidden opportunity linked to $userName’s question.\n\n5) $adviceCard — 45–55 words: suggest a concrete action (e.g., review budget, ask for raise, learn a new skill) and outline the possible outcome.\n\n6) Finale — 20–25 words: friendly closing, positive affirmation, and two business emojis.\n\nRequirements: total 160–185 words, clear professional tone without jargon, 2–3 emojis; separate paragraphs with double line breaks (\\n\\n); no asterisks, hashtags or any markup. Respond entirely in $lang.';
  }

  @override
  String pros_cons_three_card_prompt(Object adviceCard, Object conCard,
      Object lang, Object proCard, Object userName, Object userQuestion) {
    return 'You are an experienced tarot reader. User $userName asks: \"$userQuestion\". Create a three-card Pros & Cons spread. The cards are: Pros – $proCard; Cons – $conCard; Advice/Outcome – $adviceCard. Determine the user’s gender from $userName and use correct pronouns. Mention $userName at least three times and tie each card to the question. Follow this structure:\n\n1) Greeting by name $userName.\n\n2) Title: Spread: $proCard | $conCard | $adviceCard.\n\n3) Pros: $proCard — 45–55 words. Highlight the main benefits or positive resources this card brings to $userName’s situation.\n\n4) Cons: $conCard — 45–55 words. Describe the risks, hidden costs, or drawbacks for $userName.\n\n5) Advice: $adviceCard — 45–55 words. Weigh pros and cons, suggest one concrete action (verb + object), and explain how it will change the outcome for $userName.\n\n6) Verdict — one word “Yes” or “No,” then one sentence of rationale and an encouraging affirmation (20–25 words) with 1–2 emojis.\n\nRequirements: total 150–180 words, friendly conversational tone; separate each section with double line breaks (\\n\\n); no asterisks, hashtags or any markup. Respond entirely in $lang.';
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
      Object lang,
      Object month,
      Object userName,
      Object userQuestion) {
    return 'You are a professional tarot reader. User $userName asks: \"$userQuestion\". Create the “Wheel of the Month” spread for $month. Cards in order: 1 – $card1, 2 – $card2, 3 – $card3, 4 – $card4, 5 – $card5, 6 – $card6, 7 – $card7, 8 – $card8, 9 – $card9, 10 – $card10, 11 – $card11, 12 – $card12. Determine $userName’s gender for correct pronouns. Mention their name at least five times, but only in advice—do not repeat after dates. Use date ranges: 1–3, 4–6, 7–9, 10–12, 13–15, 16–18, 19–21, 22–24, 25–26, 27–28, 29–30, 31 (assign the 12th card to 30th if month has 30 days). Format:\n\n1) Greeting by name $userName (1–2 sentences).\n\n2) Write “Your question:” followed by $userQuestion.\n\n3) Brief introduction of the spread’s purpose (1 sentence).\n\n4–15) For each card, use “1–3 $month — $card1”: then 2–3 sentences on key energy and practical advice, naturally mentioning $userName. Do not repeat the question. Use “What should you focus on during these days?” only where appropriate.\n\n16) Conclusion: general advice for the month (≈40 words) and an inspiring affirmation with 2–3 emojis.\n\nRequirements: total 360–400 words; friendly motivating tone; separate sections with double line breaks (\\n\\n); no asterisks, hashtags, lists, or technical notes. Respond entirely in $lang.';
  }

  @override
  String self_growth_balance_prompt(
      Object adviceCard,
      Object bodyCard,
      Object challengeCard,
      Object coreCard,
      Object emotionCard,
      Object lang,
      Object mindCard,
      Object strengthCard,
      Object userName,
      Object userQuestion) {
    return 'You are an experienced tarot coach. User $userName asks: \"$userQuestion\". Create a seven-card Self-Development & Balance spread. Cards: core – $coreCard; mind – $mindCard; emotions – $emotionCard; body – $bodyCard; resource – $strengthCard; challenge – $challengeCard; advice – $adviceCard. Determine the user’s gender from $userName and use correct pronouns. Speak vibrantly and supportively, mention $userName at least four times, and tie each card to the question. Follow this structure:\n\n1) Greeting by name $userName.\n\n2) Title: Spread: $coreCard | $mindCard | $emotionCard | $bodyCard | $strengthCard | $challengeCard | $adviceCard.\n\n3) $coreCard — describe $userName’s main focus for self-development.\n\n4) $mindCard — explain mindset adjustments and what to learn.\n\n5) $emotionCard — reveal emotional resources and motivation.\n\n6) $bodyCard — suggest how to care for body and energy.\n\n7) $strengthCard — show internal gifts or external support.\n\n8) $challengeCard — identify the key imbalance and its causes.\n\n9) $adviceCard — propose a concrete action uniting all aspects.\n\n10) Final: inspiring affirmation and a warm send-off with 2–3 emojis.\n\nRequirements: each point 2–3 sentences; separate points with double line breaks (\\n\\n); no asterisks, hashtags or any markup. Respond entirely in $lang.';
  }

  @override
  String reflection_summary_ai_prompt(
      Object cards, Object lang, Object reflections, Object userName) {
    return '$userName, thank you for your reflections and trust. Analyze all seven of your spreads and notes.\n\n1. Identify the 1–2 cards that appeared most often across all seven spreads and explain their significance for you.\n2. Analyze all seven of your reflections and provide personalized recommendations to improve your inner state and life overall.\n\nYour reflections:\n$reflections\n\nMost frequent cards:\n$cards\n\nRespond warmly and in detail, without clichés, focusing on inner themes and gentle guidance. Respond entirely in $lang.';
  }
}
