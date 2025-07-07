// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get main_title => 'Divine and study Tarot';

  @override
  String get your_name => 'Your name';

  @override
  String get personalization_hint =>
      'Ask questions to the AI Tarot reader and get personalised spreads';

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
  String get quick_spread => 'Quick Spread';

  @override
  String get classic_spreads => 'Classic spreads';

  @override
  String get thematic_spreads => 'Thematic spreads';

  @override
  String get card_combination => 'Card combinations';

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
  String get select_card => 'Select a card';

  @override
  String get please_select_cards =>
      'Please select different cards in all fields.';

  @override
  String get good_day =>
      'Have a good day,\nSelect cards to find out their combination and meaning';

  @override
  String get language_hint => 'For full personalisation of spreads';

  @override
  String get quickReading => 'Quick spread';

  @override
  String get comingSoon => 'Coming soon';

  @override
  String get onboarding_notifications_title =>
      '🔔 Want to never miss the \"Card of the Day\" and new spreads?';

  @override
  String get onboarding_notifications_subtitle =>
      'Please agree to receive notifications (no spam).';

  @override
  String get onboarding_notifications_allow => 'AGREE';

  @override
  String get onboarding_notifications_decline => 'DECLINE';

  @override
  String get suggested_questions_chat_1 => 'Tell me about my love life';

  @override
  String get suggested_questions_chat_2 => 'What will happen in my career?';

  @override
  String get suggested_questions_chat_3 => 'How can I improve myself?';

  @override
  String get suggested_questions_chat_4 =>
      'What opportunities await me in the future?';

  @override
  String get onboarding_final_title => 'All set!';

  @override
  String get onboarding_final_subtitle =>
      'To support the project, we show ads. BUT if you prefer, you can subscribe';

  @override
  String get onboarding_final_benefits =>
      'No ads\nUnlimited spreads\nUnlimited learning';

  @override
  String get onboarding_final_yearly => 'Annually';

  @override
  String get onboarding_final_badge => '50% off';

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
      'Subscription is optional and renews automatically. You can cancel anytime';

  @override
  String get onboarding_final_choose_yearly => 'Choose yearly';

  @override
  String get onboarding_final_choose_trial => 'Choose 7 days free';

  @override
  String get onboarding_final_or => 'OR';

  @override
  String get onboarding_final_continue_ads => 'CONTINUE WITH AD';

  @override
  String get main_screen_greeting => 'Greetings';

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
  String get main_screen_card_of_day_status_view => 'View';

  @override
  String get main_screen_section_spreads => 'Spreads';

  @override
  String get main_screen_section_training => 'Learning';

  @override
  String get main_screen_section_entertainment => 'Entertainment';

  @override
  String get main_screen_quick_spread_title => 'Quick Spread';

  @override
  String get main_screen_quick_spread_description =>
      'Get a clear answer to your question with one card in just a few taps';

  @override
  String get main_screen_thematic_spreads_title => 'Themed spreads';

  @override
  String get main_screen_thematic_spreads_description =>
      'ready-made spreads for important areas: love, career, health, travel';

  @override
  String get main_screen_card_combination_title => 'Card combination';

  @override
  String get main_screen_fun_spread_title => 'Joke spread';

  @override
  String get main_screen_fun_spread_description =>
      'lift your spirits, do a joke spread and share it on social media';

  @override
  String get main_screen_love_badge => 'LOVE';

  @override
  String get card_combination_screen_title => 'Card Combination';

  @override
  String get card_combination_screen_greeting =>
      'Good day, select cards to find out the combination and meaning';

  @override
  String get card_combination_screen_card_hint => 'Card';

  @override
  String get card_combination_screen_get_combination_button =>
      'Find out the combination';

  @override
  String get card_combination_screen_new_spread_button => 'Make a new spread';

  @override
  String get card_combination_screen_fill_all_fields_error =>
      'Please fill in all card fields.';

  @override
  String get card_combination_screen_invalid_cards_error =>
      'Please select cards only from the suggested list. Invalid cards:';

  @override
  String get card_combination_screen_duplicate_cards_error =>
      'Please select different cards in all fields.';

  @override
  String get card_combination_screen_general_error =>
      'Error: failed to get a response. Please try again.';

  @override
  String get card_combination_screen_disclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for any decisions you make. Consult a specialist if necessary.';

  @override
  String card_combination_screen_prompt(Object cards, Object lang) {
    return 'Analyse the combination of Tarot cards: $cards. Provide a deep mystical analysis of their interaction and overall advice. The response must be entirely in $lang. No greetings or conclusions.';
  }

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
      'Quick spread is an express reading (answer: YES or NO) that helps instantly get a clear answer to a specific question or the general vibe of the day. Perfect when you need quick inspiration or advice \"here and now\".';

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
      'A quick spread is an express reading (answer: YES or NO) that helps instantly get a clear answer to a specific question or the general vibe of the day. Perfect when you need quick inspiration or advice \"here and now.\"';

  @override
  String get quick_reading_result_screen_understand_button => 'Understood';

  @override
  String get quick_reading_result_screen_quick_spread_title => 'Quick spread';

  @override
  String get quick_reading_result_screen_new_spread_button => 'New spread';

  @override
  String get quick_reading_result_screen_disclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Please consult a professional if necessary.';

  @override
  String quick_reading_result_screen_prompt(Object cardName, Object userName) {
    return 'You are an experienced tarot reader. The user $userName has drawn the card — $cardName. First, write on a new line the phrase: Card answer: followed by a one-word answer \"Yes\" or \"No\". Then add a coherent interpretation of 120–150 words: 7–8 sentences explaining why the energy of $cardName leads to this answer and what it means personally for $userName. Mention the name $userName at least twice, include 1–2 thematic emojis, avoid *, #, and any markup; write in a simple conversational tone.';
  }

  @override
  String get career_finance_spread_screen_request_accepted =>
      'Your request has been accepted. Please reveal the cards.';

  @override
  String get career_finance_spread_screen_error_getting_value =>
      'Error retrieving the spread value. Please try again.';

  @override
  String get career_finance_spread_screen_what_is_career_finance =>
      'What is the Career and Finance spread?';

  @override
  String get career_finance_spread_screen_career_finance_explanation =>
      'This spread helps to analyse the professional and financial sphere. You will learn about opportunities, obstacles, and growth prospects.';

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
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Please consult a professional if necessary.';

  @override
  String get career_finance_spread_screen_enter_question_hint =>
      'Enter your question...';

  @override
  String get pros_cons_spread_screen_what_is_pros_cons =>
      'What is the \"Pros and Cons\" spread?';

  @override
  String get pros_cons_spread_screen_pros_cons_title =>
      '\"Pros and Cons\" spread';

  @override
  String get pros_cons_spread_screen_enter_question_hint =>
      'Enter your question...';

  @override
  String
  get self_development_balance_spread_screen_self_development_explanation =>
      'The \"Self-Development and Balance\" spread consists of 7 cards arranged in a circle. Each card symbolizes a specific aspect of your spiritual growth and inner harmony.';

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
  String get card_meanings_screen_title => 'Card meanings';

  @override
  String get love_spread_screen_new_spread_button => 'Make a new spread';

  @override
  String get love_spread_screen_enter_question_hint => 'Enter your question...';

  @override
  String purchase_love_screen_test_stub(Object plan) {
    return 'Test placeholder: selected plan \"$plan\"';
  }

  @override
  String get purchase_love_screen_love_tariff_title => 'Love Plan';

  @override
  String get ad_promo_block_tariff => 'PLAN';

  @override
  String get ad_promo_block_love => 'LOVE';

  @override
  String get ad_promo_block_promotion_70 => 'PROMO -50%';

  @override
  String get ad_promo_block_no_ads => '• no ads';

  @override
  String get ad_promo_block_no_limits => '• no limits';

  @override
  String three_cards_screen_title(Object cards) {
    return '3 cards in the spread';
  }

  @override
  String get three_cards_screen_initial_message =>
      'Good day, please write your request below:';

  @override
  String get three_cards_screen_request_accepted =>
      'Your request has been received. Please reveal the cards';

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
  String get three_cards_screen_enter_question_hint => 'Enter your query...';

  @override
  String get three_cards_screen_what_is_three_cards =>
      'What is a 3-card spread?';

  @override
  String get three_cards_screen_three_cards_explanation =>
      'A classic spread that shows the past, present, and future of your situation. The first card is the past, the second is the present, the third is the future.';

  @override
  String get three_cards_screen_understand_button => 'Understood';

  @override
  String get three_cards_screen_error_getting_value =>
      'Error retrieving the spread value. Please try again.';

  @override
  String get three_cards_screen_disclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a professional if necessary.';

  @override
  String get five_cards_screen_title => '5 cards in the spread';

  @override
  String get five_cards_screen_initial_message =>
      'Good day, please write your request below:';

  @override
  String get five_cards_screen_request_accepted =>
      'Your request has been received. Please reveal the cards';

  @override
  String get five_cards_screen_suggested_questions_1 =>
      'Which path should I choose?';

  @override
  String get five_cards_screen_suggested_questions_2 =>
      'What is preventing me from reaching my goal?';

  @override
  String get five_cards_screen_suggested_questions_3 =>
      'What options do I have?';

  @override
  String get five_cards_screen_see_meaning_button => 'Find out the meaning';

  @override
  String get five_cards_screen_new_spread_button => 'Make a new spread';

  @override
  String get five_cards_screen_enter_question_hint => 'Enter your query...';

  @override
  String get five_cards_screen_what_is_five_cards => 'What is a 5-card spread?';

  @override
  String get five_cards_screen_five_cards_explanation =>
      'The 5-card spread is a compact layout that reveals five key aspects of the situation: the past, the present, hidden influences, the helper/obstacle, and the likely outcome.';

  @override
  String get five_cards_screen_understand_button => 'Understood';

  @override
  String get five_cards_screen_error_getting_value =>
      'Error retrieving the spread value. Please try again.';

  @override
  String get five_cards_screen_disclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a professional if necessary.';

  @override
  String get celtic_cross_screen_title => 'Celtic Cross';

  @override
  String get celtic_cross_screen_initial_message =>
      'Good day, please write your request below:';

  @override
  String get celtic_cross_screen_suggested_questions_1 =>
      'What is my main problem right now?';

  @override
  String get celtic_cross_screen_suggested_questions_2 =>
      'What should I focus on in the near future?';

  @override
  String get celtic_cross_screen_suggested_questions_3 =>
      'What is hidden from me?';

  @override
  String get celtic_cross_screen_see_meaning_button => 'Find out the meaning';

  @override
  String get celtic_cross_screen_new_spread_button => 'Make a new spread';

  @override
  String get celtic_cross_screen_enter_question_hint => 'Enter your query...';

  @override
  String get celtic_cross_screen_what_is_celtic_cross_dialog =>
      'What is the Celtic Cross?';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_dialog =>
      'The \"Celtic Cross\" is a 10-card spread that thoroughly analyses a situation from all angles: current circumstances, obstacles, internal and external influences, as well as the near future dynamics and the final outcome. The cards are laid out in order:\n1 - Situation — the essence of the question here and now.\n2 - Challenge — what helps or hinders progress.\n3 - Subconscious (root) — hidden motives and deep forces.\n4 - Recent past — events that led to the current position.\n5 - Conscious (goal) — what the querent\'s attention is focused on now.\n6 - Near future — likely developments in the coming weeks.\n7 - \"Self\" — internal state, resources, attitude towards the question.\n8 - Environment — influences of people and circumstances around.\n9 - Hopes / fears — expectations, doubts, strong emotions.\n10 - Outcome — possible result if trends continue.\nThis spread allows you to see the \"big picture\": where you stand, what hinders or helps, which hidden impulses are working behind the scenes, and where everything is heading next.\nThe spread diagram is shown in the image below.';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_image =>
      'assets/images/kelt.png';

  @override
  String get celtic_cross_screen_understand_button => 'Understood';

  @override
  String celtic_cross_screen_please_open_cards(Object cards) {
    return 'Your request has been received. Please open the cards';
  }

  @override
  String celtic_cross_screen_request_accepted(Object cards) {
    return 'Request received, please open the cards';
  }

  @override
  String get the_user => 'user';

  @override
  String get good_day_please_write_your_question_below =>
      'Good day, please write your request below';

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
  String makeTarotReadingFor(Object lang) {
    return 'Make for';
  }

  @override
  String get theUser => 'user';

  @override
  String onTheseThreeCards(Object userName) {
    return 'a spread on these three cards:';
  }

  @override
  String makeSelfDevelopmentAndBalanceTarotReadingFor(Object cards) {
    return 'Make a Self-development and Balance spread for $cards';
  }

  @override
  String get getAnswer => 'Find out the answer';

  @override
  String get aboutTheSpread => 'About the spread';

  @override
  String get aboutSpreadDescription =>
      'This spread helps to analyse your spiritual growth and inner harmony.';

  @override
  String get gotIt => 'Understood';

  @override
  String get selfDevelopmentAndBalance => 'Self-development and balance';

  @override
  String get appUsageDisclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a professional if necessary.';

  @override
  String get careerFinance => 'Career and Finance';

  @override
  String get fun_spread_screen_with_swear_words_title => 'With swearing (18+)';

  @override
  String get fun_spread_screen_with_swear_words_subtitle =>
      'For those who love thrills';

  @override
  String get fun_spread_screen_without_swear_words_title => 'Without swearing';

  @override
  String get fun_spread_screen_without_swear_words_subtitle =>
      'A fun spread without swear words';

  @override
  String get fun_spread_screen_generating => 'Generating your spread...';

  @override
  String get card_name_the_fool => 'The Fool';

  @override
  String get card_name_the_magician => 'The Magician';

  @override
  String get card_name_the_high_priestess => 'The High Priestess';

  @override
  String get card_name_the_empress => 'The Empress';

  @override
  String get card_name_the_emperor => 'The Emperor';

  @override
  String get card_name_the_hierophant => 'The Hierophant';

  @override
  String get card_name_the_lovers => 'The Lovers';

  @override
  String get card_name_the_chariot => 'The Chariot';

  @override
  String get card_name_strength => 'Strength';

  @override
  String get card_name_the_hermit => 'Hermit';

  @override
  String get ok_button => 'OK';

  @override
  String get cancel_button => 'Cancel';

  @override
  String get analyzing_cards => 'Analysing cards...';

  @override
  String get yes_button => 'Yes';

  @override
  String get no_button => 'No';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get success => 'Successful';

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
  String get card_name_temperance => 'Temperance';

  @override
  String get card_name_the_devil => 'The Devil';

  @override
  String get card_name_the_tower => 'The Tower';

  @override
  String get card_name_the_star => 'Star';

  @override
  String get card_name_the_moon => 'Moon';

  @override
  String get card_name_the_sun => 'Sun';

  @override
  String get card_name_judgement => 'Judgement';

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
  String get quick_reading_screen_suggested_questions_1 => 'Should I do this?';

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
      'Enter your query...';

  @override
  String get monthly_forecast_spread_screen_what_is_monthly_forecast =>
      'What is a monthly forecast?';

  @override
  String get monthly_forecast_spread_screen_monthly_forecast_explanation =>
      'A monthly forecast shows the main events and trends for the upcoming month. It helps you prepare for changes and take advantage of opportunities.';

  @override
  String get monthly_forecast_spread_screen_understand_button => 'Got it';

  @override
  String get monthly_forecast_spread_screen_error_getting_value =>
      'Error retrieving the spread value. Please try again.';

  @override
  String get monthly_forecast_spread_screen_disclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a professional if necessary.';

  @override
  String self_development_balance_spread_screen_prompt(
    Object cards,
    Object userName,
  ) {
    return 'Do a spread for $userName on self-development and balance with these three cards: $cards';
  }

  @override
  String get error_getting_answer_try_again =>
      'Error: failed to get a response. Please try again.';

  @override
  String get card_detail_screen_title => 'Card details';

  @override
  String get card_detail_screen_general_meaning => 'General meaning';

  @override
  String get card_detail_screen_reversed_meaning => 'Reversed meaning';

  @override
  String get card_detail_screen_symbolism => 'Symbolism';

  @override
  String get card_detail_screen_error_loading_text => 'Error loading text';

  @override
  String card_detail_screen_general_meaning_prompt(
    Object cardName,
    Object lang,
  ) {
    return 'Describe the general meaning of the Tarot card \"$cardName\" in $lang. Include history, symbolism, and main meanings.';
  }

  @override
  String card_detail_screen_reversed_meaning_prompt(
    Object cardName,
    Object lang,
  ) {
    return 'Describe the reversed meaning of the Tarot card \"$cardName\" in $lang. Include opposite meanings and warnings.';
  }

  @override
  String card_detail_screen_symbolism_prompt(Object cardName, Object lang) {
    return 'Describe the symbolism of the Tarot card \"$cardName\" in $lang. Include details of the imagery, colours, and their meanings.';
  }

  @override
  String card_detail_screen_description(Object cardName) {
    return 'Description of the card $cardName';
  }

  @override
  String get card_detail_screen_see_other_card_meaning =>
      'View the meaning of another card';

  @override
  String get card_detail_screen_or => 'or';

  @override
  String get card_detail_screen_loading_language => 'Loading language...';

  @override
  String get card_detail_screen_see_card_meaning => 'View card meaning';

  @override
  String get card_detail_screen_original_waite_text => 'Original Waite text';

  @override
  String get card_detail_screen_no_original_text => 'No original text';

  @override
  String card_of_the_day_screen_translate_card_name_prompt(
    Object cardName,
    Object languageCode,
  ) {
    return 'Translate the Tarot card name \"$cardName\" into $languageCode. The response should contain only the translated name, without any additional text or punctuation.';
  }

  @override
  String card_of_the_day_screen_generate_description_prompt(
    Object cardName,
    Object name,
  ) {
    return 'You are a professional tarot reader. Write an inspiring \"Card of the Day\" message in the language of this request for the user $name. Follow the structure and length.\n🌟 $name, your card of the day is $cardName!\n🔑 Keywords: <list 3–5 short keywords>\n🃏 Meaning (≈45–50 words): describe the main energy of the card and how it will manifest today for $name.\n💡 Advice (≈35–40 words): suggest a specific action or mindset that will help $name harness this energy.\n✨ Affirmation (1 line): a positive statement starting with \"I…\".\nRequirements: total length 120–150 words, warm esoteric tone, 3–4 thematic emojis, no HTML/Markdown lists; separate paragraphs with double line breaks (\\n\\n).';
  }

  @override
  String get card_of_the_day_screen_title => 'Card of the Day';

  @override
  String get card_of_the_day_screen_error_loading_card => 'Error loading card';

  @override
  String career_finance_spread_screen_prompt(Object cards, Object userName) {
    return 'Do a career and finance spread for $userName using these three cards: $cards';
  }

  @override
  String get contact_us_title => 'Write to us';

  @override
  String get contact_us_email_hint => 'Your e-mail';

  @override
  String get contact_us_email_empty => 'Enter e-mail';

  @override
  String get contact_us_email_invalid => 'Invalid e-mail';

  @override
  String get contact_us_message_hint => 'Your message';

  @override
  String get contact_us_message_empty => 'Enter message';

  @override
  String get contact_us_send_button => 'Send';

  @override
  String get five_cards_spread_screen_what_is_five_cards_dialog =>
      'What is a 5-card spread?';

  @override
  String get five_cards_spread_screen_five_cards_explanation_dialog =>
      'This spread reveals the entire path of your question:\nCard 1 - The Past shows the original circumstances,\nCard 2 - The Present — the current energy,\nCard 3 - The Hidden reveals hidden influences,\nCard 4 - The Advice suggests the optimal action,\nCard 5 - The Outcome predicts the likely result.';

  @override
  String get five_cards_spread_screen_understand_button => 'Understood';

  @override
  String get language_selection_screen_title => 'Language';

  @override
  String get love_spread_screen_what_is_love_spread => 'What is a love spread?';

  @override
  String get love_spread_screen_love_spread_explanation =>
      'A love triplet is three cards laid out from left to right:\nCard 1 - You — shows the querent\'s feelings, motivation, and position.\nCard 2 - Partner — reveals the emotions, plans, and readiness of the other party.\nCard 3 - Dynamics / potential — describes how the two energies interact now and what the relationship could lead to in the near future.';

  @override
  String get love_spread_screen_understand_button => 'Understood';

  @override
  String get main_screen_your_plan_trial => 'Your plan: Trial (with ads)';

  @override
  String get main_screen_no_ads => '• no ads';

  @override
  String get main_screen_no_limits => '• unlimited';

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
      'spreads of 2 / 3 / 5 cards and the full detailed Celtic Cross';

  @override
  String get main_screen_card_meanings_title => 'Card meanings';

  @override
  String get main_screen_card_meanings_description =>
      'a complete guide to upright and reversed meanings of all Major and Minor Arcana cards';

  @override
  String get main_screen_card_combination_description =>
      '\"tarot calculator\" select cards and get a deep relationship analysis';

  @override
  String get notification_settings_screen_title => 'Notification settings';

  @override
  String get notification_settings_screen_frequency_question =>
      'How often would you like to receive a card of the day notification?';

  @override
  String get notification_settings_screen_every_day => 'Every day';

  @override
  String get notification_settings_screen_every_three_days =>
      'Every three days';

  @override
  String get notification_settings_screen_every_week => 'Once a week';

  @override
  String get notification_settings_screen_time_question =>
      'At what time of day?';

  @override
  String get notification_settings_screen_morning => 'In the morning';

  @override
  String get notification_settings_screen_day => 'In the afternoon';

  @override
  String get notification_settings_screen_evening => 'In the evening';

  @override
  String get notification_settings_screen_save_button => 'Save';

  @override
  String get onboarding_final_screen_yearly_price => '249/year';

  @override
  String get onboarding_final_screen_yearly_month_price => '24/month';

  @override
  String get onboarding_final_screen_monthly_price => 'Monthly';

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
    return 'Test stub: selected plan \"$plan\"';
  }

  @override
  String get onboarding_final_screen_ok_button => 'OK';

  @override
  String get purchase_love_screen_yearly_price => '249/year';

  @override
  String get purchase_love_screen_yearly_month_price => '24/month';

  @override
  String get purchase_love_screen_monthly_price => 'Monthly';

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
  String get please_fill_all_fields => 'Please fill in all card fields.';

  @override
  String get please_select_cards_only_from_suggested_list =>
      'Please select cards only from the suggested list. Invalid cards:';

  @override
  String get please_select_different_cards_in_all_fields =>
      'Please select different cards in all fields.';

  @override
  String get card => 'Card';

  @override
  String get get_combination => 'Find out the combination';

  @override
  String get new_spread => 'Make a new spread';

  @override
  String get app_uses_ai_for_entertainment_purposes =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a specialist if necessary.';

  @override
  String get career_finance_spread_screen_what_is_career_finance_spread =>
      'What is the Career and Finance spread?';

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
    return 'You are an experienced tarot reader. The user $userName asks: \"$userQuestion\". Respond with the \"Celtic Cross\" spread (classic Waite layout). The cards are assigned as follows: situation - $situationCard; challenge - $challengeCard; subconscious - $subconsciousCard; recent past - $pastCard; conscious - $consciousCard; near future - $hiddenCard; inner self - $selfCard; environment - $environmentCard; hopes or fears - $hopesCard; outcome - $outcomeCard. Mention the name $userName at least six times and be sure to connect each card to the question. Follow the structure:\n1) Greeting by the name $userName.\n2) Title: Spread: situation ($situationCard) / challenge ($challengeCard) / subconscious ($subconsciousCard) / recent past ($pastCard) / conscious ($consciousCard) / near future ($hiddenCard) / inner self ($selfCard) / environment ($environmentCard) / hopes/fears ($hopesCard) / outcome ($outcomeCard).\n3) Situation — $situationCard (45-55 words): three key words, card symbolism, and the current state of affairs regarding the question $userQuestion for $userName.\n4) Challenge — $challengeCard (45-55 words): the main obstacle or aid for $userName.\n5) Subconscious — $subconsciousCard (45-55 words): hidden motives or energies influencing $userName.\n6) Recent past — $pastCard (45-55 words): events that led $userName to the current situation.\n7) Conscious — $consciousCard (45-55 words): goals, expectations, or what $userName is aware of.\n8) Near future — $hiddenCard (40-50 words): likely developments in the coming weeks.\n9) Inner self — $selfCard (45-55 words): the state and resources of $userName.\n10) Environment — $environmentCard (45-55 words): influence of people and circumstances.\n11) Hopes / fears — $hopesCard (45-55 words): $userName\'s expectations or fears.\n12) Outcome — $outcomeCard (45-55 words): probable result considering the spread\'s advice.\n13) Conclusion: friendly support and a positive affirmation (30-35 words) for $userName.\nRequirements: total length 400-500 words, lively conversational tone, 4-6 esoteric emojis; separate each block with double line breaks (\n); do not use *, # or other markup; write only in plain text.';
  }

  @override
  String get celtic_cross_screen_unable_to_load_card =>
      'Failed to load the card';

  @override
  String get celticCrossTitle => 'Celtic Cross';

  @override
  String get chat_with_tarot_reader_screen_request_received =>
      'Your request has been received. Please reveal the cards';

  @override
  String chat_with_tarot_reader_screen_prompt(
    Object hiddenCard,
    Object pastCard,
    Object presentCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'You are an experienced tarot reader. The user $userName asks: \"$userQuestion\". Respond with the \"Past - Present - Future\" spread. The cards are assigned as follows: past - $pastCard; present - $presentCard; future - $hiddenCard. Mention the name $userName at least four times and be sure to connect the card meanings to the question. Follow the structure:\n1) Greeting by the name $userName.\n2) Title: Spread: Past ($pastCard) - Present ($presentCard) - Future ($hiddenCard).\n3) PAST block — $pastCard (40-50 words): three key words, card symbolism, and explanation of how past events influence the outcome of the question $userQuestion for $userName.\n4) PRESENT block — $presentCard (40-50 words): key words, card symbolism, and current factors affecting the answer to the question $userQuestion.\n5) FUTURE block — $hiddenCard (40-50 words): key words, card symbolism, and the likely scenario for the situation regarding $userName\'s question.\n6) Conclusion: brief advice, positive affirmation (20-30 words), and a clear summary of the chances.\nRequirements: total length 180-220 words, warm esoteric tone, 3-5 thematic emojis; separate each block with double line breaks (\n); do not use *, # or other formatting marks; write only in plain text.';
  }

  @override
  String get see_meaning_button => 'Find out the meaning';

  @override
  String three_cards_title(Object cards) {
    return '3 cards in the spread';
  }

  @override
  String get new_spread_button => 'Make a new spread';

  @override
  String get disclaimer_text =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a professional if necessary.';

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
      'In-depth situation analysis';

  @override
  String get classic_spreads_screen_celtic_cross_title => 'Celtic Cross';

  @override
  String get classic_spreads_screen_celtic_cross_description =>
      'Full 10-card spread';

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
    return 'You are an experienced tarot reader. The user $userName asks: \"$userQuestion\". Answer using the \"5 cards\" spread. The cards are given in order: past - $pastCard; present - $presentCard; hidden - $hiddenCard; advice - $adviceCard; outcome - $outcomeCard. Refer to $userName at least five times and be sure to relate each card to the question. Follow the structure:\n\n1) Greeting by name $userName.\n\n2) Title: Spread: past ($pastCard) / present ($presentCard) / hidden ($hiddenCard) / advice ($adviceCard) / outcome ($outcomeCard).\n\n3) Past — $pastCard (45-55 words): three keywords, card symbolism, and the influence of the past on $userQuestion for $userName.\n\n4) Present — $presentCard (45-55 words): keywords, symbolism, and the current state of $userName\'s question.\n\n5) Hidden — $hiddenCard (45-55 words): what unconsciously affects $userName\'s situation, focusing on symbolism.\n\n6) Advice — $adviceCard (45-55 words): practical action for $userName, based on the card\'s images.\n\n7) Outcome — $outcomeCard (45-55 words): likely scenario if the advice is followed, addressing $userName.\n\n8) Conclusion: friendly support and a positive affirmation (25-30 words) for $userName.\n\nRequirements: total volume 230-260 words, lively conversational tone, 3-5 esoteric emojis; separate each block with a double line break (\\n\\n); do not use *, # or other markup; write only plain text.';
  }

  @override
  String get fiveCardsInSpread => '5 cards in the spread';

  @override
  String get makeNewSpread => 'Make a new spread';

  @override
  String
  get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMake =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Please consult a professional if necessary.';

  @override
  String get requestReceivedPleaseOpenCards =>
      'Your request has been received. Please reveal the cards.';

  @override
  String love_spread_prompt(
    Object dynamicCard,
    Object partnerCard,
    Object userName,
    Object userQuestion,
    Object youCard,
  ) {
    return 'You are an experienced tarot reader. The user $userName asks: \"$userQuestion\". Respond using a three-card love spread. The cards are as follows: $userName\'s feelings — $youCard; partner\'s feelings — $partnerCard; relationship dynamics or potential — $dynamicCard. Mention the name $userName at least three times and connect each card to the question. Follow this structure:\n1) Greeting by the name $userName.\n2) Title: Spread: $youCard | $partnerCard | $dynamicCard.\n3) $youCard — 40–50 words: describe what the card reveals about ${userName}s feelings and expectations.\n4) $partnerCard — 40–50 words: explore the partner\'s emotions and intentions regarding ${userName}s question.\n5) $dynamicCard — 40–50 words: show how these two energies interact and what the relationship might lead to.\n6) Conclusion: warm advice and a positive affirmation (20–25 words) for $userName.\nRequirements: total length 150–180 words, friendly romantic tone, 2–4 thematic emojis; separate paragraphs with double line breaks (\\n\\n); avoid *, #, and any markup.';
  }

  @override
  String get loveSpread => 'Love spread';

  @override
  String
  get applicationUsesAIExclusivelyForEntertainmentWeDoNotTakeResponsibilityForDecisionsYouHaveMadeIfNeededPleaseConsultSpecialist =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Please consult a professional if necessary.';

  @override
  String main_screen_greeting_with_name(Object name) {
    return 'Greetings, $name';
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
  String get main_screen_not_viewed => 'View';

  @override
  String get main_screen_spreads => 'Spreads';

  @override
  String get main_screen_training => 'Tutorials';

  @override
  String get main_screen_entertainment => 'Entertainment';

  @override
  String get main_screen_glad_to_see_you_here => 'Glad to see you here!';

  @override
  String get main_screen_quick_reading_title => 'Quick spread';

  @override
  String get main_screen_quick_reading_description =>
      'Get a clear answer to your question with one card in just a few taps';

  @override
  String get monthly_forecast_spread_screen_request_accepted =>
      'Your request has been received. Please lay out the cards';

  @override
  String monthly_forecast_spread_screen_prompt(Object cards, Object userName) {
    return 'Make a monthly forecast for $userName based on these cards: $cards';
  }

  @override
  String get aboutSpread => 'About the spread';

  @override
  String get monthlyForecast => 'Monthly forecast';

  @override
  String
  get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNecessaryPleaseConsultSpecialist =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a professional if necessary.';

  @override
  String purchase_love_screen_test_message(Object planName) {
    return 'Test placeholder: selected plan \"$planName\"';
  }

  @override
  String get quick_reading_screen_what_is_quick_reading =>
      'What is a quick spread?';

  @override
  String get quick_reading_screen_quick_reading_explanation =>
      'A quick spread is an express reading (answer: YES or NO) that helps you instantly get a clear answer to a specific question or the general vibe of the day. Perfect when you need quick inspiration or advice \"here and now.\"';

  @override
  String get self_development_balance_spread_screen_request_accepted =>
      'Your request has been received. Please reveal the cards.';

  @override
  String get self_development_balance_spread_screen_error_getting_value =>
      'Error retrieving the spread value. Please try again.';

  @override
  String
  get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNeededConsultSpecialist =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a professional if necessary.';

  @override
  String get thematic_spreads_screen_title => 'Themed spreads';

  @override
  String get thematic_spreads_screen_love_spread_title => 'Love spread';

  @override
  String get thematic_spreads_screen_love_spread_description =>
      'Relationship and feelings analysis';

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
      'Forecast by months';

  @override
  String get thematic_spreads_screen_self_development_title =>
      'Self-development and balance';

  @override
  String get thematic_spreads_screen_self_development_description =>
      'Spiritual growth and harmony';

  @override
  String get requestReceived =>
      'Your request has been accepted. Please reveal the cards';

  @override
  String pros_cons_spread_prompt(Object cards, Object userName) {
    return 'Do a Pros and Cons spread for $userName with these cards: $cards';
  }

  @override
  String get pros_cons_spread_screen_what_is_pros_cons_spread =>
      'What is a \"Pros and Cons\" spread?';

  @override
  String get pros_cons_spread_screen_pros_cons_spread_explanation =>
      'The \"Pros and Cons\" spread helps to analyse the advantages and disadvantages of a situation to make a balanced decision.';

  @override
  String get pros_cons_spread_screen_understand_button => 'Understood';

  @override
  String get prosConsSpreadTitle => 'Spread \"Pros and Cons\"';

  @override
  String get spreadDisclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a professional if necessary.';

  @override
  String get fun_spread_screen_generation_error =>
      'Error generating the spread. Please try again.';

  @override
  String get fun_spread_screen_share_error => 'Error saving the image.';

  @override
  String get fun_spread_screen_about_fun_spread => 'What is a fun spread?';

  @override
  String get fun_spread_screen_fun_spread_explanation =>
      'A fun spread is a special way of tarot card reading that combines the depth of traditional spreads with a light and positive approach. It will help you see the situation from a new perspective and find joy in everyday life.';

  @override
  String get fun_spread_screen_understand_button => 'Understood';

  @override
  String get fun_spread_screen_title => 'Fun spread';

  @override
  String get fun_spread_screen_generate_button => 'Create spread';

  @override
  String get fun_spread_screen_share_button => 'Share';

  @override
  String get fun_spread_screen_new_button => 'New spread';

  @override
  String get fun_spread_screen_share_text =>
      'Look at the funny tarot spread I got in the Tarot AI app!';

  @override
  String get ad_promo_tariff => 'PLAN';

  @override
  String get ad_promo_love => 'LOVE';

  @override
  String get ad_promo_discount => 'SALE -50%';

  @override
  String get ad_promo_no_ads => '• no ads';

  @override
  String get ad_promo_no_limits => '• no limits';

  @override
  String get no_internet_error =>
      'Our app only works with internet. Please turn on Wi-Fi or mobile data.';

  @override
  String fun_spread_screen_mate_prompt_3cards(Object userName) {
    return 'Make a very funny, cheeky, and swear-filled 3-card tarot reading for $userName. For each card, come up with a funny title and write a separate paragraph: First card: <title> — <short funny description>, Second card: <title> — <short funny description>, Third card: <title> — <short funny description>. Use profanity to add humour, but don\'t offend. The whole text should be no longer than 7 sentences.';
  }

  @override
  String fun_spread_screen_no_mate_prompt_3cards(Object userName) {
    return 'Create a funny tarot spread for $userName with 3 cards. For each card, come up with a humorous title and write a separate paragraph: First card: <title> — <short funny description>, Second card: <title> — <short funny description>, Third card: <title> — <short funny description>. The spread should be fun but meaningful. Only 3 cards. The entire text no longer than 7 sentences.';
  }

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
      'Good day, please write your question below:';

  @override
  String get main_screen_tariff => 'PLAN';

  @override
  String get main_screen_promo_50 => 'PROMOTION -50%';

  @override
  String get main_screen_rate_hint =>
      'If the rating window did not appear, you can leave a review on Google Play.';

  @override
  String get main_screen_rate_error =>
      'Failed to open Google Play. Please try again later.';

  @override
  String get love_spread_screen_suggested_questions_1 =>
      'What feelings do I have for this person?';

  @override
  String get love_spread_screen_suggested_questions_2 =>
      'What is holding back our relationship?';

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
      'What events will happen soon?';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_3 =>
      'What should I focus on this month?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_1 =>
      'How can I develop spiritually?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_2 =>
      'What is disturbing my inner balance?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_3 =>
      'How to find harmony in life?';

  @override
  String career_three_card_prompt(
    Object adviceCard,
    Object challengeCard,
    Object situationCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'You are an experienced tarot coach. The user $userName asks: \"$userQuestion\". Do a three-card spread on career and finances. The cards are given as follows: 1) situation — $situationCard; 2) obstacle or key opportunity — $challengeCard; 3) advice and potential — $adviceCard. Determine the user\'s gender by the name $userName and use the correct endings and pronouns. Speak to $userName in a friendly and businesslike manner: show where they stand, what blocks growth (or what chance is important to notice), and what practical step will lead to the desired income. Mention the name $userName at least three times. Follow the structure:\n1) Greeting — 1 sentence.\n2) Title: Spread: $situationCard | $challengeCard | $adviceCard.\n3) $situationCard — 45–55 words: describe ${userName}s current position (work, business or general financial background) and the symbolism of the card.\n4) $challengeCard — 45–55 words: reveal the main barrier or hidden opportunity; indicate how it is reflected in the card and in ${userName}s question.\n5) $adviceCard — 45–55 words: suggest a specific action (for example, review the budget, ask for a raise, learn a new skill) and describe the possible outcome.\n6) Ending — 20–25 words: friendly conclusion, positive affirmation and 2 business emojis.\nRequirements: total length 160–185 words, clear business tone without jargon, 2–3 emojis; separate paragraphs with double \\n\\n; do not use *, # or other markup.';
  }

  @override
  String pros_cons_three_card_prompt(
    Object adviceCard,
    Object conCard,
    Object proCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'You are an experienced tarot reader. The user $userName asks: \"$userQuestion\". Do a three-card \"Pros and Cons\" spread. The cards are given as follows: pros — $proCard; cons — $conCard; advice/result — $adviceCard. Determine the user\'s gender by the name $userName and use the correct endings and pronouns. Mention the name $userName at least three times and link each card to the question. Follow the structure:\n1) Greeting by the name $userName.\n2) Title: Spread: $proCard | $conCard | $adviceCard.\n3) Pros: $proCard — 45–55 words. Reveal the main benefits or positive resources this card brings to ${userName}s situation.\n4) Cons: $conCard — 45–55 words. Describe the risks, hidden costs or weaknesses of the decision for $userName.\n5) Advice: $adviceCard — 45–55 words. Weigh the pros and cons, suggest one specific action (verb + object) and say how this will change the outcome for $userName.\n6) Conclusion — one word \"Yes\" or \"No\", then 1 sentence justification and an encouraging affirmation (20–25 words) with 1–2 emojis.\nRequirements: total length 150–180 words, friendly conversational tone; separate each block with double line breaks (\\n\\n); no *, # or other markup.';
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
    return 'You are a professional tarot reader. The user $userName asks: \"$userQuestion\". Make a \"Wheel of the Month\" spread for $month. The cards are in order: 1 — $card1, 2 — $card2, 3 — $card3, 4 — $card4, 5 — $card5, 6 — $card6, 7 — $card7, 8 — $card8, 9 — $card9, 10 — $card10, 11 — $card11, 12 — $card12. Determine ${userName}s gender by the name and use the correct endings and pronouns. Mention the name at least five times, but do not insert it after every date — recall it only within the advice text. Use the calendar date grid: 1–3, 4–6, 7–9, 10–12, 13–15, 16–18, 19–21, 22–24, 25–26, 27–28, 29–30, 31 (if the month has 30 days — the 12th card also refers to the 30th). Format:\n1) Greeting by the name $userName (1–2 sentences).\n2) Brief introduction about the purpose of the spread (1 sentence).\n3–14) For each card use a line like \"1–3 $month — $card1\" (without the name): then 2–3 sentences about the key energy of the period and practical advice, naturally mentioning $userName.\n15) Conclusion: general advice for the month (about 40 words) and an inspiring affirmation with 2–3 emojis.\nRequirements: total 360–400 words; friendly, motivating tone; separate blocks with double \\n\\n; no *, #, lists or technical notes.';
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
    return 'You are an experienced tarot coach. The user $userName asks: \"$userQuestion\". Do a \"Self-development and Balance\" spread with seven cards. The cards are given as follows: core — $coreCard; mind — $mindCard; emotions — $emotionCard; body — $bodyCard; resource — $strengthCard; block — $challengeCard; advice — $adviceCard. Determine the user\'s gender by the name $userName and use the correct endings and pronouns. Speak lively and supportively, mention the name $userName at least four times and definitely link each card to the question. Follow the structure and format:\n1) Greeting by the name $userName.\n2) Title: Spread: $coreCard | $mindCard | $emotionCard | $bodyCard | $strengthCard | $challengeCard | $adviceCard.\n3) $coreCard — describe the main focus of ${userName}s self-development.\n4) $mindCard — explain how to set the mindset and what to learn.\n5) $emotionCard — reveal the emotional resource and motivation.\n6) $bodyCard — suggest how to care for the body and energy.\n7) $strengthCard — show the inner gift or external support.\n8) $challengeCard — indicate the key imbalance and its causes.\n9) $adviceCard — suggest a specific action that unites all aspects.\n10) Ending: inspiring affirmation and warm parting words with 2–3 emojis.\nRequirements: each point 2–3 sentences; separate points with double line breaks (\\n\\n); do not use *, # or other markup.';
  }

  @override
  String get main_screen_suggest_spread => 'What spread to add? Write to us';

  @override
  String get main_screen_disclaimer =>
      'The app uses AI exclusively for entertainment purposes. We do not take responsibility for decisions you make. If needed, please consult a specialist.';

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
}

/// The translations for English, as used in the United Kingdom (`en_GB`).
class AppLocalizationsEnGb extends AppLocalizationsEn {
  AppLocalizationsEnGb() : super('en_GB');

  @override
  String get main_title => 'Divine and study Tarot';

  @override
  String get your_name => 'Your name';

  @override
  String get personalization_hint =>
      'Ask questions to the AI Tarot Reader and receive personalised spreads';

  @override
  String get start_button => 'START';

  @override
  String get language => 'Language';

  @override
  String get continueBtn => 'Continue';

  @override
  String get card_of_the_day => 'Card of the day';

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
  String get card_combination => 'Card combinations';

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
  String get select_card => 'Select a card';

  @override
  String get please_select_cards =>
      'Please select different cards in all fields.';

  @override
  String get good_day =>
      'Have a good day,\nSelect cards to find out their combination and meaning';

  @override
  String get language_hint => 'For full personalisation of spreads';

  @override
  String get quickReading => 'Quick spread';

  @override
  String get comingSoon => 'Coming soon';

  @override
  String get onboarding_notifications_title =>
      '🔔 Want to never miss the \"Card of the Day\" and new spreads?';

  @override
  String get onboarding_notifications_subtitle =>
      'Please agree to receive notifications (no spam).';

  @override
  String get onboarding_notifications_allow => 'AGREE';

  @override
  String get onboarding_notifications_decline => 'DECLINE';

  @override
  String get suggested_questions_chat_1 => 'Tell me about my love life';

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
      'To support the project, we show ads. BUT if you prefer, you can subscribe';

  @override
  String get onboarding_final_benefits =>
      'No ads\nUnlimited spreads\nUnlimited learning';

  @override
  String get onboarding_final_yearly => 'Annually';

  @override
  String get onboarding_final_badge => '50% off';

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
      'Subscription is optional and renews automatically. You can cancel anytime';

  @override
  String get onboarding_final_choose_yearly => 'Choose annually';

  @override
  String get onboarding_final_choose_trial => 'Choose 7 days free';

  @override
  String get onboarding_final_or => 'OR';

  @override
  String get onboarding_final_continue_ads => 'CONTINUE WITH AD';

  @override
  String get main_screen_greeting => 'Greetings';

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
  String get main_screen_card_of_day_status_viewed => 'Opened';

  @override
  String get main_screen_card_of_day_status_view => 'View';

  @override
  String get main_screen_section_spreads => 'Spreads';

  @override
  String get main_screen_section_training => 'Learning';

  @override
  String get main_screen_section_entertainment => 'Entertainment';

  @override
  String get main_screen_quick_spread_title => 'Quick spread';

  @override
  String get main_screen_quick_spread_description =>
      'Get a clear answer to your question with one card in just a few taps';

  @override
  String get main_screen_thematic_spreads_title => 'Themed spreads';

  @override
  String get main_screen_thematic_spreads_description =>
      'ready-made spreads for important areas: love, career, health, travel';

  @override
  String get main_screen_card_combination_title => 'Card combination';

  @override
  String get main_screen_fun_spread_title => 'Joke reading';

  @override
  String get main_screen_fun_spread_description =>
      'lift your spirits, do a joke reading and share it on social media';

  @override
  String get main_screen_love_badge => 'LOVE';

  @override
  String get card_combination_screen_title => 'Card Combination';

  @override
  String get card_combination_screen_greeting =>
      'Good day, select cards to find out the combination and meaning';

  @override
  String get card_combination_screen_card_hint => 'Card';

  @override
  String get card_combination_screen_get_combination_button =>
      'Find out the combination';

  @override
  String get card_combination_screen_new_spread_button => 'Make a new spread';

  @override
  String get card_combination_screen_fill_all_fields_error =>
      'Please fill in all card fields.';

  @override
  String get card_combination_screen_invalid_cards_error =>
      'Please select cards only from the suggested list. Invalid cards:';

  @override
  String get card_combination_screen_duplicate_cards_error =>
      'Please select different cards in all fields.';

  @override
  String get card_combination_screen_general_error =>
      'Error: failed to get a response. Please try again.';

  @override
  String get card_combination_screen_disclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a specialist if necessary.';

  @override
  String card_combination_screen_prompt(Object cards, Object lang) {
    return 'Analyse the combination of Tarot cards: $cards. Provide a deep mystical analysis of their interaction and overall advice. The response should be entirely in $lang. No greetings or conclusions.';
  }

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
      'Quick spread is an express reading (answer: YES or NO) that helps instantly get a clear answer to a specific question or the general atmosphere of the day. Perfect when you need quick inspiration or advice \"here and now\".';

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
      'A quick spread is an express reading (answer: YES or NO) that helps instantly get a clear answer to a specific question or the general atmosphere of the day. Perfect when you need quick inspiration or advice \"here and now.\"';

  @override
  String get quick_reading_result_screen_understand_button => 'Understood';

  @override
  String get quick_reading_result_screen_quick_spread_title => 'Quick spread';

  @override
  String get quick_reading_result_screen_new_spread_button => 'New spread';

  @override
  String get quick_reading_result_screen_disclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Please consult a specialist if necessary.';

  @override
  String quick_reading_result_screen_prompt(Object cardName, Object userName) {
    return 'You are an experienced tarot reader. The user $userName has drawn the card — $cardName. First, write on a new line the phrase: Card answer: followed by a one-word answer \"Yes\" or \"No\". Then add a coherent interpretation of 120–150 words: 7–8 sentences explaining why the energy of $cardName leads to this answer and what it means personally for $userName. Mention the name $userName at least twice, include 1–2 thematic emojis, avoid *, #, and any markup; write in a simple conversational tone.';
  }

  @override
  String get career_finance_spread_screen_request_accepted =>
      'Your request has been accepted. Please reveal the cards.';

  @override
  String get career_finance_spread_screen_error_getting_value =>
      'Error retrieving the spread value. Please try again.';

  @override
  String get career_finance_spread_screen_what_is_career_finance =>
      'What is the Career and Finance spread?';

  @override
  String get career_finance_spread_screen_career_finance_explanation =>
      'This spread helps to analyse the professional and financial sphere. You will learn about opportunities, obstacles, and growth prospects.';

  @override
  String get career_finance_spread_screen_understand_button => 'Understood';

  @override
  String get career_finance_spread_screen_learn_meaning_button =>
      'Find out the meaning';

  @override
  String get career_finance_spread_screen_career_finance_title =>
      'Career and Finance';

  @override
  String get career_finance_spread_screen_new_spread_button =>
      'Make a new spread';

  @override
  String get career_finance_spread_screen_disclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Please consult a specialist if necessary.';

  @override
  String get career_finance_spread_screen_enter_question_hint =>
      'Enter your question...';

  @override
  String get pros_cons_spread_screen_what_is_pros_cons =>
      'What is the \"Pros and Cons\" spread?';

  @override
  String get pros_cons_spread_screen_pros_cons_title =>
      '\"Pros and Cons\" spread';

  @override
  String get pros_cons_spread_screen_enter_question_hint =>
      'Enter your question...';

  @override
  String
  get self_development_balance_spread_screen_self_development_explanation =>
      'The \"Self-Development and Balance\" spread consists of 7 cards arranged in a circle. Each card symbolizes a specific aspect of your spiritual growth and inner harmony.';

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
  String get card_meanings_screen_title => 'Card meanings';

  @override
  String get love_spread_screen_new_spread_button => 'Make a new spread';

  @override
  String get love_spread_screen_enter_question_hint => 'Enter your question...';

  @override
  String purchase_love_screen_test_stub(Object plan) {
    return 'Test placeholder: selected plan \"$plan\"';
  }

  @override
  String get purchase_love_screen_love_tariff_title => 'Love Plan';

  @override
  String get ad_promo_block_tariff => 'PLAN';

  @override
  String get ad_promo_block_love => 'LOVE';

  @override
  String get ad_promo_block_promotion_70 => 'PROMOTION -50%';

  @override
  String get ad_promo_block_no_ads => '• no ads';

  @override
  String get ad_promo_block_no_limits => '• no limits';

  @override
  String three_cards_screen_title(Object cards) {
    return '3 cards in the spread';
  }

  @override
  String get three_cards_screen_initial_message =>
      'Good afternoon, please write your request below:';

  @override
  String get three_cards_screen_request_accepted =>
      'Your request has been received. Please reveal the cards';

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
  String get three_cards_screen_enter_question_hint => 'Enter your query...';

  @override
  String get three_cards_screen_what_is_three_cards =>
      'What is a 3-card spread?';

  @override
  String get three_cards_screen_three_cards_explanation =>
      'A classic spread that shows the past, present, and future of your situation. The first card is the past, the second is the present, the third is the future.';

  @override
  String get three_cards_screen_understand_button => 'Understood';

  @override
  String get three_cards_screen_error_getting_value =>
      'Error retrieving the spread value. Please try again.';

  @override
  String get three_cards_screen_disclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a specialist if necessary.';

  @override
  String get five_cards_screen_title => '5 cards in the spread';

  @override
  String get five_cards_screen_initial_message =>
      'Good day, please write your request below:';

  @override
  String get five_cards_screen_request_accepted =>
      'Your request has been received. Please reveal the cards';

  @override
  String get five_cards_screen_suggested_questions_1 =>
      'Which path should I choose?';

  @override
  String get five_cards_screen_suggested_questions_2 =>
      'What is preventing me from achieving my goal?';

  @override
  String get five_cards_screen_suggested_questions_3 =>
      'What options do I have?';

  @override
  String get five_cards_screen_see_meaning_button => 'Find out the meaning';

  @override
  String get five_cards_screen_new_spread_button => 'Make a new spread';

  @override
  String get five_cards_screen_enter_question_hint => 'Enter your query...';

  @override
  String get five_cards_screen_what_is_five_cards => 'What is a 5-card spread?';

  @override
  String get five_cards_screen_five_cards_explanation =>
      'The 5-card spread is a compact layout that reveals five key aspects of the situation: past, present, hidden influences, helper/obstacle, and probable outcome.';

  @override
  String get five_cards_screen_understand_button => 'Understood';

  @override
  String get five_cards_screen_error_getting_value =>
      'Error retrieving the spread value. Please try again.';

  @override
  String get five_cards_screen_disclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a specialist if necessary.';

  @override
  String get celtic_cross_screen_title => 'Celtic Cross';

  @override
  String get celtic_cross_screen_initial_message =>
      'Good afternoon, please write your request below:';

  @override
  String get celtic_cross_screen_suggested_questions_1 =>
      'What is my main problem right now?';

  @override
  String get celtic_cross_screen_suggested_questions_2 =>
      'What should I focus on in the near future?';

  @override
  String get celtic_cross_screen_suggested_questions_3 =>
      'What is hidden from me?';

  @override
  String get celtic_cross_screen_see_meaning_button => 'Find out the meaning';

  @override
  String get celtic_cross_screen_new_spread_button => 'Make a new spread';

  @override
  String get celtic_cross_screen_enter_question_hint => 'Enter your query...';

  @override
  String get celtic_cross_screen_what_is_celtic_cross_dialog =>
      'What is the Celtic Cross?';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_dialog =>
      'The \"Celtic Cross\" is a 10-card spread that thoroughly analyses the situation from all angles: current circumstances, obstacles, internal and external influences, as well as the near dynamics and final outcome. The cards are laid out in order:\n1 - Situation — the essence of the question here and now.\n2 - Challenge — what helps or hinders progress.\n3 - Subconscious (root) — hidden motives and deep forces.\n4 - Recent past — events that led to the current position.\n5 - Conscious (goal) — what the querent\'s attention is focused on now.\n6 - Near future — probable development in the coming weeks.\n7 - \"Myself\" — internal state, resources, attitude towards the question.\n8 - Environment — influences of people and circumstances around.\n9 - Hopes / fears — expectations, doubts, strong emotions.\n10 - Outcome — possible result if the trends continue.\nThis spread allows you to see the \"big picture\": where you stand, what hinders or helps, which hidden impulses are working behind the scenes, and where everything is heading next.\nThe layout diagram is shown in the image below.';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_image =>
      'assets/images/kelt.png';

  @override
  String get celtic_cross_screen_understand_button => 'Understood';

  @override
  String celtic_cross_screen_please_open_cards(Object cards) {
    return 'Your request has been received. Please open the cards';
  }

  @override
  String celtic_cross_screen_request_accepted(Object cards) {
    return 'Request received, please open the cards';
  }

  @override
  String get the_user => 'user';

  @override
  String get good_day_please_write_your_question_below =>
      'Good afternoon, please write your request below';

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
  String makeTarotReadingFor(Object lang) {
    return 'Make for';
  }

  @override
  String get theUser => 'user';

  @override
  String onTheseThreeCards(Object userName) {
    return 'a spread on these three cards:';
  }

  @override
  String makeSelfDevelopmentAndBalanceTarotReadingFor(Object cards) {
    return 'Make a Self-development and Balance spread for $cards';
  }

  @override
  String get getAnswer => 'Find out the answer';

  @override
  String get aboutTheSpread => 'About the spread';

  @override
  String get aboutSpreadDescription =>
      'This spread helps to analyse your spiritual growth and inner harmony.';

  @override
  String get gotIt => 'Understood';

  @override
  String get selfDevelopmentAndBalance => 'Self-development and balance';

  @override
  String get appUsageDisclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Please consult a professional if necessary.';

  @override
  String get careerFinance => 'Career and Finance';

  @override
  String get fun_spread_screen_with_swear_words_title => 'With swearing (18+)';

  @override
  String get fun_spread_screen_with_swear_words_subtitle =>
      'For those who love thrills';

  @override
  String get fun_spread_screen_without_swear_words_title => 'Without swearing';

  @override
  String get fun_spread_screen_without_swear_words_subtitle =>
      'A fun spread without swear words';

  @override
  String get fun_spread_screen_generating => 'Generating your spread...';

  @override
  String get card_name_the_fool => 'The Fool';

  @override
  String get card_name_the_magician => 'The Magician';

  @override
  String get card_name_the_high_priestess => 'The High Priestess';

  @override
  String get card_name_the_empress => 'The Empress';

  @override
  String get card_name_the_emperor => 'The Emperor';

  @override
  String get card_name_the_hierophant => 'The Hierophant';

  @override
  String get card_name_the_lovers => 'The Lovers';

  @override
  String get card_name_the_chariot => 'The Chariot';

  @override
  String get card_name_strength => 'Strength';

  @override
  String get card_name_the_hermit => 'Hermit';

  @override
  String get ok_button => 'OK';

  @override
  String get cancel_button => 'Cancel';

  @override
  String get analyzing_cards => 'Analysing cards...';

  @override
  String get yes_button => 'Yes';

  @override
  String get no_button => 'No';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get success => 'Success';

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
  String get card_name_temperance => 'Temperance';

  @override
  String get card_name_the_devil => 'The Devil';

  @override
  String get card_name_the_tower => 'The Tower';

  @override
  String get card_name_the_star => 'The Star';

  @override
  String get card_name_the_moon => 'The Moon';

  @override
  String get card_name_the_sun => 'The Sun';

  @override
  String get card_name_judgement => 'Judgement';

  @override
  String get card_name_the_world => 'The World';

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
  String get quick_reading_screen_suggested_questions_1 => 'Should I do this?';

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
      'Enter your query...';

  @override
  String get monthly_forecast_spread_screen_what_is_monthly_forecast =>
      'What is a monthly forecast?';

  @override
  String get monthly_forecast_spread_screen_monthly_forecast_explanation =>
      'A monthly forecast shows the main events and trends for the upcoming month. It helps to prepare for changes and take advantage of opportunities.';

  @override
  String get monthly_forecast_spread_screen_understand_button => 'Understood';

  @override
  String get monthly_forecast_spread_screen_error_getting_value =>
      'Error retrieving the spread value. Please try again.';

  @override
  String get monthly_forecast_spread_screen_disclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for any decisions you make. Consult a specialist if necessary.';

  @override
  String self_development_balance_spread_screen_prompt(
    Object cards,
    Object userName,
  ) {
    return 'Do a spread for $userName on self-development and balance with these three cards: $cards';
  }

  @override
  String get error_getting_answer_try_again =>
      'Error: failed to get a response. Please try again.';

  @override
  String get card_detail_screen_title => 'Card details';

  @override
  String get card_detail_screen_general_meaning => 'General meaning';

  @override
  String get card_detail_screen_reversed_meaning => 'Reversed meaning';

  @override
  String get card_detail_screen_symbolism => 'Symbolism';

  @override
  String get card_detail_screen_error_loading_text => 'Text loading error';

  @override
  String card_detail_screen_general_meaning_prompt(
    Object cardName,
    Object lang,
  ) {
    return 'Describe the general meaning of the Tarot card \"$cardName\" in $lang. Include history, symbolism, and key meanings.';
  }

  @override
  String card_detail_screen_reversed_meaning_prompt(
    Object cardName,
    Object lang,
  ) {
    return 'Describe the reversed meaning of the Tarot card \"$cardName\" in $lang. Include opposite meanings and warnings.';
  }

  @override
  String card_detail_screen_symbolism_prompt(Object cardName, Object lang) {
    return 'Describe the symbolism of the Tarot card \"$cardName\" in $lang. Include details of the imagery, colours, and their meanings.';
  }

  @override
  String card_detail_screen_description(Object cardName) {
    return 'Description of the card $cardName';
  }

  @override
  String get card_detail_screen_see_other_card_meaning =>
      'View the meaning of another card';

  @override
  String get card_detail_screen_or => 'or';

  @override
  String get card_detail_screen_loading_language => 'Loading language...';

  @override
  String get card_detail_screen_see_card_meaning => 'View card meaning';

  @override
  String get card_detail_screen_original_waite_text => 'Original Wait text';

  @override
  String get card_detail_screen_no_original_text => 'No original text';

  @override
  String card_of_the_day_screen_translate_card_name_prompt(
    Object cardName,
    Object languageCode,
  ) {
    return 'Translate the Tarot card name \"$cardName\" into $languageCode. The response should contain only the translated name, without any additional text or punctuation.';
  }

  @override
  String card_of_the_day_screen_generate_description_prompt(
    Object cardName,
    Object name,
  ) {
    return 'You are a professional tarot reader. Write an inspiring \"Card of the Day\" message in the language of this request for the user $name. Follow the structure and length.\n🌟 $name, your card of the day is $cardName!\n🔑 Keywords: <list 3–5 short keywords>\n🃏 Meaning (≈45–50 words): describe the main energy of the card and how it will manifest for $name today.\n💡 Advice (≈35–40 words): suggest a specific action or mindset that will help $name harness this energy.\n✨ Affirmation (1 line): a positive statement starting with \"I…\".\nRequirements: total length 120–150 words, warm esoteric tone, 3–4 thematic emojis, no HTML/Markdown lists; separate paragraphs with double line breaks (\\n\\n).';
  }

  @override
  String get card_of_the_day_screen_title => 'Card of the Day';

  @override
  String get card_of_the_day_screen_error_loading_card => 'Error loading card';

  @override
  String career_finance_spread_screen_prompt(Object cards, Object userName) {
    return 'Make a career and finance spread for $userName using these three cards: $cards';
  }

  @override
  String get contact_us_title => 'Write to us';

  @override
  String get contact_us_email_hint => 'Your e-mail';

  @override
  String get contact_us_email_empty => 'Enter e-mail';

  @override
  String get contact_us_email_invalid => 'Invalid e-mail';

  @override
  String get contact_us_message_hint => 'Your message';

  @override
  String get contact_us_message_empty => 'Enter message';

  @override
  String get contact_us_send_button => 'Send';

  @override
  String get five_cards_spread_screen_what_is_five_cards_dialog =>
      'What is a 5-card spread?';

  @override
  String get five_cards_spread_screen_five_cards_explanation_dialog =>
      'This spread reveals the entire path of your question:\nCard 1 - The Past shows the original circumstances,\nCard 2 - The Present — the current energy,\nCard 3 - The Hidden reveals hidden influences,\nCard 4 - The Advice suggests the optimal action,\nCard 5 - The Outcome predicts the likely result.';

  @override
  String get five_cards_spread_screen_understand_button => 'Understood';

  @override
  String get language_selection_screen_title => 'Language';

  @override
  String get love_spread_screen_what_is_love_spread => 'What is a love spread?';

  @override
  String get love_spread_screen_love_spread_explanation =>
      'A love triplet is three cards laid out from left to right:\nCard 1 - You — shows the querent\'s feelings, motivation, and position.\nCard 2 - Partner — reveals the emotions, plans, and readiness of the other party.\nCard 3 - Dynamics / potential — describes how the two energies interact now and what the relationship might lead to in the near future.';

  @override
  String get love_spread_screen_understand_button => 'Understood';

  @override
  String get main_screen_your_plan_trial => 'Your plan: Trial (with ads)';

  @override
  String get main_screen_no_ads => '• no ads';

  @override
  String get main_screen_no_limits => '• unlimited';

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
      'spreads of 2 / 3 / 5 cards and the full detailed Celtic Cross';

  @override
  String get main_screen_card_meanings_title => 'Card meanings';

  @override
  String get main_screen_card_meanings_description =>
      'a complete guide to the upright and reversed meanings of all Major and Minor Arcana';

  @override
  String get main_screen_card_combination_description =>
      '\"tarot calculator\" select cards and get a deep relationship analysis';

  @override
  String get notification_settings_screen_title => 'Notification settings';

  @override
  String get notification_settings_screen_frequency_question =>
      'How often do you want to receive a card of the day notification?';

  @override
  String get notification_settings_screen_every_day => 'Every day';

  @override
  String get notification_settings_screen_every_three_days =>
      'Every three days';

  @override
  String get notification_settings_screen_every_week => 'Once a week';

  @override
  String get notification_settings_screen_time_question =>
      'At what time of day?';

  @override
  String get notification_settings_screen_morning => 'In the morning';

  @override
  String get notification_settings_screen_day => 'In the afternoon';

  @override
  String get notification_settings_screen_evening => 'In the evening';

  @override
  String get notification_settings_screen_save_button => 'Save';

  @override
  String get onboarding_final_screen_yearly_price => '249/year';

  @override
  String get onboarding_final_screen_yearly_month_price => '24/month';

  @override
  String get onboarding_final_screen_monthly_price => 'Monthly';

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
    return 'Test stub: selected plan \"$plan\"';
  }

  @override
  String get onboarding_final_screen_ok_button => 'OK';

  @override
  String get purchase_love_screen_yearly_price => '249/year';

  @override
  String get purchase_love_screen_yearly_month_price => '24/month';

  @override
  String get purchase_love_screen_monthly_price => 'Monthly';

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
  String get please_fill_all_fields => 'Please fill in all card fields.';

  @override
  String get please_select_cards_only_from_suggested_list =>
      'Please select cards only from the suggested list. Invalid cards:';

  @override
  String get please_select_different_cards_in_all_fields =>
      'Please select different cards in all fields.';

  @override
  String get card => 'Card';

  @override
  String get get_combination => 'Find out the combination';

  @override
  String get new_spread => 'Make a new spread';

  @override
  String get app_uses_ai_for_entertainment_purposes =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a specialist if necessary.';

  @override
  String get career_finance_spread_screen_what_is_career_finance_spread =>
      'What is the Career and Finance spread?';

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
    return 'You are an experienced tarot reader. The user $userName asks: \"$userQuestion\". Respond with the \"Celtic Cross\" spread (classic Waite scheme). The cards are laid out as follows: situation - $situationCard; challenge - $challengeCard; subconscious - $subconsciousCard; recent past - $pastCard; conscious - $consciousCard; near future - $hiddenCard; inner self - $selfCard; environment - $environmentCard; hopes or fears - $hopesCard; outcome - $outcomeCard. Mention the name $userName at least six times and be sure to connect each card to the question. Follow the structure:\n1) Greeting by the name $userName.\n2) Title: Spread: situation ($situationCard) / challenge ($challengeCard) / subconscious ($subconsciousCard) / recent past ($pastCard) / conscious ($consciousCard) / near future ($hiddenCard) / inner self ($selfCard) / environment ($environmentCard) / hopes/fears ($hopesCard) / outcome ($outcomeCard).\n3) Situation — $situationCard (45-55 words): three key words, symbolism of the card, and the current state of affairs regarding the question $userQuestion for $userName.\n4) Challenge — $challengeCard (45-55 words): the main obstacle or assistance for $userName.\n5) Subconscious — $subconsciousCard (45-55 words): hidden motives or energies influencing $userName.\n6) Recent past — $pastCard (45-55 words): events that led $userName to the current situation.\n7) Conscious — $consciousCard (45-55 words): goals, expectations, or what $userName is aware of.\n8) Near future — $hiddenCard (45-55 words): likely developments in the coming weeks.\n9) Inner self — $selfCard (45-55 words): state, resources of $userName.\n10) Environment — $environmentCard (45-55 words): influence of people and circumstances.\n11) Hopes / fears — $hopesCard (45-55 words): expectations or fears of $userName.\n12) Outcome — $outcomeCard (45-55 words): probable result considering the advice of the spread.\n13) Conclusion: friendly support and a positive affirmation (30-35 words) for $userName.\nRequirements: total length 400-500 words, lively conversational tone, 4-6 esoteric emojis; separate each block with double line breaks (\n); do not use symbols *, # or other markup; write only in plain text.';
  }

  @override
  String get celtic_cross_screen_unable_to_load_card =>
      'Failed to load the card';

  @override
  String get celticCrossTitle => 'Celtic Cross';

  @override
  String get chat_with_tarot_reader_screen_request_received =>
      'Your request has been received. Please reveal the cards';

  @override
  String chat_with_tarot_reader_screen_prompt(
    Object hiddenCard,
    Object pastCard,
    Object presentCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'You are an experienced tarot reader. The user $userName asks: \"$userQuestion\". Respond with the \"Past - Present - Future\" spread. The cards are laid out as follows: past - $pastCard; present - $presentCard; future - $hiddenCard. Mention the name $userName at least four times and be sure to connect the meanings of the cards to the question. Follow the structure:\n1) Greeting by the name $userName.\n2) Title: Spread: Past ($pastCard) - Present ($presentCard) - Future ($hiddenCard).\n3) PAST block — $pastCard (40-50 words): three key words, symbolism of the card, and explanation of how past facts influence the outcome of the question $userQuestion for $userName.\n4) PRESENT block — $presentCard (40-50 words): key words, symbolism of the card, and current factors affecting the answer to the question $userQuestion.\n5) FUTURE block — $hiddenCard (40-50 words): key words, symbolism of the card, and the likely scenario of the situation\'s development regarding the question for $userName.\n6) Outcome: brief advice, positive affirmation (20-30 words), and a clear summary of the chances.\nRequirements: total length 180-220 words, warm esoteric tone, 3-5 thematic emojis; separate each block with double line breaks (\n); do not use symbols *, # or other formatting marks; write only in plain text.';
  }

  @override
  String get see_meaning_button => 'Find out the meaning';

  @override
  String three_cards_title(Object cards) {
    return '3 cards in the spread';
  }

  @override
  String get new_spread_button => 'Make a new spread';

  @override
  String get disclaimer_text =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a specialist if necessary.';

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
      'In-depth situation analysis';

  @override
  String get classic_spreads_screen_celtic_cross_title => 'Celtic Cross';

  @override
  String get classic_spreads_screen_celtic_cross_description =>
      'Full 10-card spread';

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
    return 'You are an experienced tarot reader. The user $userName asks: \"$userQuestion\". Answer using the \"5 cards\" spread. The cards are given in order: past - $pastCard; present - $presentCard; hidden - $hiddenCard; advice - $adviceCard; outcome - $outcomeCard. Refer to $userName at least five times and be sure to relate each card to the question. Follow the structure:\n\n1) Greeting by name $userName.\n\n2) Title: Spread: past ($pastCard) / present ($presentCard) / hidden ($hiddenCard) / advice ($adviceCard) / outcome ($outcomeCard).\n\n3) Past — $pastCard (45-55 words): three keywords, card symbolism, and the influence of the past on $userQuestion for $userName.\n\n4) Present — $presentCard (45-55 words): keywords, symbolism, and the current state of $userName\'s question.\n\n5) Hidden — $hiddenCard (45-55 words): what unconsciously affects $userName\'s situation, focusing on symbolism.\n\n6) Advice — $adviceCard (45-55 words): practical action for $userName, based on the card\'s images.\n\n7) Outcome — $outcomeCard (45-55 words): likely scenario if the advice is followed, addressing $userName.\n\n8) Conclusion: friendly support and a positive affirmation (25-30 words) for $userName.\n\nRequirements: total volume 230-260 words, lively conversational tone, 3-5 esoteric emojis; separate each block with a double line break (\\n\\n); do not use *, # or other markup; write only plain text.';
  }

  @override
  String get fiveCardsInSpread => '5 cards in the spread';

  @override
  String get makeNewSpread => 'Make a new spread';

  @override
  String
  get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMake =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Please consult a professional if necessary.';

  @override
  String get requestReceivedPleaseOpenCards =>
      'Your request has been received. Please reveal the cards.';

  @override
  String love_spread_prompt(
    Object dynamicCard,
    Object partnerCard,
    Object userName,
    Object userQuestion,
    Object youCard,
  ) {
    return 'You are an experienced tarot reader. The user $userName asks: \"$userQuestion\". Respond using a three-card love spread. The cards are given as follows: $userName\'s feelings — $youCard; partner\'s feelings — $partnerCard; dynamics or potential of the relationship — $dynamicCard. Mention the name $userName at least three times and connect each card to the question. Follow this structure:\n1) Greeting by the name $userName.\n2) Title: Spread: $youCard | $partnerCard | $dynamicCard.\n3) $youCard — 40–50 words: describe what the card reveals about ${userName}s feelings and expectations.\n4) $partnerCard — 40–50 words: explore the partner\'s emotions and intentions regarding ${userName}s question.\n5) $dynamicCard — 40–50 words: show how these two energies interact and what the relationship might lead to.\n6) Conclusion: warm advice and a positive affirmation (20–25 words) for $userName.\nRequirements: total length 150–180 words, friendly romantic tone, 2–4 thematic emojis; separate paragraphs with double line breaks (\\n\\n); avoid *, #, and any markup.';
  }

  @override
  String get loveSpread => 'Love spread';

  @override
  String
  get applicationUsesAIExclusivelyForEntertainmentWeDoNotTakeResponsibilityForDecisionsYouHaveMadeIfNeededPleaseConsultSpecialist =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Please consult a professional if necessary.';

  @override
  String main_screen_greeting_with_name(Object name) {
    return 'Greetings, $name';
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
  String get main_screen_viewed => 'Opened';

  @override
  String get main_screen_not_viewed => 'View';

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
      'Get a clear answer to your question with one card in just a couple of taps';

  @override
  String get monthly_forecast_spread_screen_request_accepted =>
      'Your request has been received. Please open the cards';

  @override
  String monthly_forecast_spread_screen_prompt(Object cards, Object userName) {
    return 'Make a monthly forecast for $userName based on these cards: $cards';
  }

  @override
  String get aboutSpread => 'About the spread';

  @override
  String get monthlyForecast => 'Monthly forecast';

  @override
  String
  get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNecessaryPleaseConsultSpecialist =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Please consult a specialist if necessary.';

  @override
  String purchase_love_screen_test_message(Object planName) {
    return 'Test placeholder: selected plan \"$planName\"';
  }

  @override
  String get quick_reading_screen_what_is_quick_reading =>
      'What is a quick spread?';

  @override
  String get quick_reading_screen_quick_reading_explanation =>
      'A quick spread is an express reading (answer: YES or NO) that helps you instantly get a clear answer to a specific question or the general atmosphere of the day. Perfect when you need quick inspiration or advice \"here and now.\"';

  @override
  String get self_development_balance_spread_screen_request_accepted =>
      'Your request has been accepted. Please reveal the cards.';

  @override
  String get self_development_balance_spread_screen_error_getting_value =>
      'Error retrieving the spread value. Please try again.';

  @override
  String
  get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNeededConsultSpecialist =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a specialist if necessary.';

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
      'Analysis of Advantages and Disadvantages';

  @override
  String get thematic_spreads_screen_monthly_forecast_title =>
      'Monthly Forecast';

  @override
  String get thematic_spreads_screen_monthly_forecast_description =>
      'Forecast by Months';

  @override
  String get thematic_spreads_screen_self_development_title =>
      'Self-development and Balance';

  @override
  String get thematic_spreads_screen_self_development_description =>
      'Spiritual growth and harmony';

  @override
  String get requestReceived =>
      'Your request has been accepted. Please reveal the cards';

  @override
  String pros_cons_spread_prompt(Object cards, Object userName) {
    return 'Make a Pros and Cons spread for $userName with these cards: $cards';
  }

  @override
  String get pros_cons_spread_screen_what_is_pros_cons_spread =>
      'What is the \"Pros and Cons\" spread?';

  @override
  String get pros_cons_spread_screen_pros_cons_spread_explanation =>
      'The \"Pros and Cons\" spread helps to analyse the advantages and disadvantages of a situation to make a balanced decision.';

  @override
  String get pros_cons_spread_screen_understand_button => 'Understood';

  @override
  String get prosConsSpreadTitle => 'Spread \"Pros and Cons\"';

  @override
  String get spreadDisclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a specialist if necessary.';

  @override
  String get fun_spread_screen_generation_error =>
      'Error generating the spread. Please try again.';

  @override
  String get fun_spread_screen_share_error => 'Error saving the image.';

  @override
  String get fun_spread_screen_about_fun_spread => 'What is a fun spread?';

  @override
  String get fun_spread_screen_fun_spread_explanation =>
      'A fun spread is a special way of tarot card reading that combines the depth of traditional spreads with a light and positive approach. It will help you see the situation from a new perspective and find joy in everyday life.';

  @override
  String get fun_spread_screen_understand_button => 'Understood';

  @override
  String get fun_spread_screen_title => 'Fun spread';

  @override
  String get fun_spread_screen_generate_button => 'Create a spread';

  @override
  String get fun_spread_screen_share_button => 'Share';

  @override
  String get fun_spread_screen_new_button => 'New spread';

  @override
  String get fun_spread_screen_share_text =>
      'Look at the funny tarot spread I got in the Tarot AI app!';

  @override
  String get ad_promo_tariff => 'PLAN';

  @override
  String get ad_promo_love => 'LOVE';

  @override
  String get ad_promo_discount => 'PROMOTION -50%';

  @override
  String get ad_promo_no_ads => '• no ads';

  @override
  String get ad_promo_no_limits => '• no limits';

  @override
  String get no_internet_error =>
      'Our app only works with internet. Please turn on Wi-Fi or mobile data.';

  @override
  String fun_spread_screen_mate_prompt_3cards(Object userName) {
    return 'Make a very funny, cheeky, and swear-filled 3-card tarot reading for $userName. For each card, come up with a funny title and write a separate paragraph: First card: <title> — <short funny description>, Second card: <title> — <short funny description>, Third card: <title> — <short funny description>. Use profanity to add humour, but don\'t offend. The whole text should be no longer than 7 sentences.';
  }

  @override
  String fun_spread_screen_no_mate_prompt_3cards(Object userName) {
    return 'Create a funny tarot spread for $userName with 3 cards. For each card, come up with a humorous title and write a separate paragraph: First card: <title> — <short funny description>, Second card: <title> — <short funny description>, Third card: <title> — <short funny description>. The spread should be cheerful but meaningful. Only 3 cards. The entire text no longer than 7 sentences.';
  }

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
  String get main_screen_tariff => 'PLAN';

  @override
  String get main_screen_promo_50 => 'PROMOTION -50%';

  @override
  String get main_screen_rate_hint =>
      'If the rating window did not appear, you can leave a review on Google Play.';

  @override
  String get main_screen_rate_error =>
      'Failed to open Google Play. Please try again later.';

  @override
  String get love_spread_screen_suggested_questions_1 =>
      'What feelings do I have for this person?';

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
      'What events will happen soon?';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_3 =>
      'What should I focus on this month?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_1 =>
      'How can I develop spiritually?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_2 =>
      'What is disturbing my inner balance?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_3 =>
      'How to find harmony in life?';

  @override
  String career_three_card_prompt(
    Object adviceCard,
    Object challengeCard,
    Object situationCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'You are an experienced tarot coach. The user $userName asks: \"$userQuestion\". Do a three-card spread on career and finances. The cards are given as follows: 1) situation — $situationCard; 2) obstacle or key opportunity — $challengeCard; 3) advice and potential — $adviceCard. Determine the user\'s gender by the name $userName and use the correct endings and pronouns. Speak to $userName in a friendly and businesslike manner: show where they stand, what blocks growth (or what chance is important to notice), and what practical step will lead to the desired income. Mention the name $userName at least three times. Follow the structure:\n1) Greeting — 1 sentence.\n2) Title: Spread: $situationCard | $challengeCard | $adviceCard.\n3) $situationCard — 45–55 words: describe ${userName}s current position (work, business or general financial background) and the symbolism of the card.\n4) $challengeCard — 45–55 words: reveal the main barrier or hidden opportunity; indicate how it is reflected in the card and in ${userName}s question.\n5) $adviceCard — 45–55 words: suggest a specific action (for example, review the budget, ask for a raise, learn a new skill) and describe the possible outcome.\n6) Ending — 20–25 words: friendly conclusion, positive affirmation and 2 business emojis.\nRequirements: total length 160–185 words, clear business tone without jargon, 2–3 emojis; separate paragraphs with double \\n\\n; do not use *, # or other markup.';
  }

  @override
  String pros_cons_three_card_prompt(
    Object adviceCard,
    Object conCard,
    Object proCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'You are an experienced tarot reader. The user $userName asks: \"$userQuestion\". Do a three-card \"Pros and Cons\" spread. The cards are given as follows: pros — $proCard; cons — $conCard; advice/outcome — $adviceCard. Determine the user\'s gender by the name $userName and use the correct endings and pronouns. Mention the name $userName at least three times and link each card to the question. Follow the structure:\n1) Greeting by the name $userName.\n2) Title: Spread: $proCard | $conCard | $adviceCard.\n3) Pros: $proCard — 45–55 words. Reveal the main benefits or positive resources this card brings to ${userName}s situation.\n4) Cons: $conCard — 45–55 words. Describe the risks, hidden costs or weaknesses of the decision for $userName.\n5) Advice: $adviceCard — 45–55 words. Weigh the pros and cons, suggest one specific action (verb + object) and say how this will change the outcome for $userName.\n6) Conclusion — one word \"Yes\" or \"No\", then 1 sentence justification and an encouraging affirmation (20–25 words) with 1–2 emojis.\nRequirements: total length 150–180 words, friendly conversational tone; separate each block with double line breaks (\\n\\n); no *, # or other markup.';
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
    return 'You are a professional tarot reader. The user $userName asks: \"$userQuestion\". Create a \"Wheel of the Month\" spread for $month. The cards are in order: 1 — $card1, 2 — $card2, 3 — $card3, 4 — $card4, 5 — $card5, 6 — $card6, 7 — $card7, 8 — $card8, 9 — $card9, 10 — $card10, 11 — $card11, 12 — $card12. Determine ${userName}s gender by the name and use the correct endings and pronouns. Mention the name at least five times, but do not insert it after every date — recall it only within the advice text. Use the calendar date grid: 1–3, 4–6, 7–9, 10–12, 13–15, 16–18, 19–21, 22–24, 25–26, 27–28, 29–30, 31 (if the month has 30 days — the 12th card also refers to the 30th). Format:\n1) Greeting by the name $userName (1–2 sentences).\n2) Brief introduction about the purpose of the spread (1 sentence).\n3–14) For each card use a line like \"1–3 $month — $card1\" (without the name): then 2–3 sentences about the key energy of the period and practical advice, naturally mentioning $userName.\n15) Conclusion: general advice for the month (about 40 words) and an inspiring affirmation with 2–3 emojis.\nRequirements: total 360–400 words; friendly, motivating tone; separate blocks with double \\n\\n; no *, #, lists or technical notes.';
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
    return 'You are an experienced tarot coach. The user $userName asks: \"$userQuestion\". Do a \"Self-development and Balance\" spread of seven cards. The cards are given as follows: core — $coreCard; mind — $mindCard; emotions — $emotionCard; body — $bodyCard; resource — $strengthCard; block — $challengeCard; advice — $adviceCard. Determine the user\'s gender by the name $userName and use the correct endings and pronouns. Speak lively and supportively, mention the name $userName at least four times and definitely link each card to the question. Follow the structure and format:\n1) Greeting by the name $userName.\n2) Title: Spread: $coreCard | $mindCard | $emotionCard | $bodyCard | $strengthCard | $challengeCard | $adviceCard.\n3) $coreCard — describe the main focus of ${userName}s self-development.\n4) $mindCard — explain how to set the mindset and what to learn.\n5) $emotionCard — reveal the emotional resource and motivation.\n6) $bodyCard — suggest how to care for the body and energy.\n7) $strengthCard — show the inner gift or external support.\n8) $challengeCard — indicate the key imbalance and its causes.\n9) $adviceCard — suggest a specific action that unites all aspects.\n10) Ending: inspiring affirmation and warm parting words with 2–3 emojis.\nRequirements: each point 2–3 sentences; separate points with double line breaks (\\n\\n); do not use *, # or other markup.';
  }

  @override
  String get main_screen_suggest_spread =>
      'Which spread should we add? Write to us';

  @override
  String get main_screen_disclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Please consult a professional if necessary.';

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
}

/// The translations for English, as used in the United States (`en_US`).
class AppLocalizationsEnUs extends AppLocalizationsEn {
  AppLocalizationsEnUs() : super('en_US');

  @override
  String get main_title => 'Divine and Study Tarot';

  @override
  String get your_name => 'Your name';

  @override
  String get personalization_hint =>
      'Ask questions to the AI Tarot Reader and get personalized spreads';

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
  String get quick_spread => 'Quick Spread';

  @override
  String get classic_spreads => 'Classic spreads';

  @override
  String get thematic_spreads => 'Thematic spreads';

  @override
  String get card_combination => 'Card combinations';

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
  String get select_card => 'Select a card';

  @override
  String get please_select_cards =>
      'Please select different cards in all fields.';

  @override
  String get good_day =>
      'Have a nice day,\nSelect cards to find out their combination and meaning';

  @override
  String get language_hint => 'For full personalization of spreads';

  @override
  String get quickReading => 'Quick spread';

  @override
  String get comingSoon => 'Coming soon';

  @override
  String get onboarding_notifications_title =>
      '🔔 Want to never miss the \"Card of the Day\" and new spreads?';

  @override
  String get onboarding_notifications_subtitle =>
      'Please agree to receive notifications (no spam).';

  @override
  String get onboarding_notifications_allow => 'AGREE';

  @override
  String get onboarding_notifications_decline => 'DECLINE';

  @override
  String get suggested_questions_chat_1 => 'Tell me about my love life';

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
      'To support the project, we show ads. BUT if you don\'t want to, you can subscribe';

  @override
  String get onboarding_final_benefits =>
      'No ads\nUnlimited spreads\nUnlimited learning';

  @override
  String get onboarding_final_yearly => 'Annually';

  @override
  String get onboarding_final_badge => '50% off';

  @override
  String get onboarding_final_yearly_price => '249/year';

  @override
  String get onboarding_final_yearly_month => '24/mo';

  @override
  String get onboarding_final_trial => '7 days free';

  @override
  String get onboarding_final_trial_price => 'then 9/mo';

  @override
  String get onboarding_final_trial_month => 'Monthly';

  @override
  String get onboarding_final_note =>
      'Subscription is optional and renews automatically. You can cancel anytime';

  @override
  String get onboarding_final_choose_yearly => 'Choose yearly';

  @override
  String get onboarding_final_choose_trial => 'Choose 7 days free';

  @override
  String get onboarding_final_or => 'OR';

  @override
  String get onboarding_final_continue_ads => 'CONTINUE WITH AD';

  @override
  String get main_screen_greeting => 'Greetings';

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
  String get main_screen_card_of_day_status_view => 'View';

  @override
  String get main_screen_section_spreads => 'Spreads';

  @override
  String get main_screen_section_training => 'Learning';

  @override
  String get main_screen_section_entertainment => 'Entertainment';

  @override
  String get main_screen_quick_spread_title => 'Quick Spread';

  @override
  String get main_screen_quick_spread_description =>
      'Get a clear answer to your question with one card in just a few taps';

  @override
  String get main_screen_thematic_spreads_title => 'Themed spreads';

  @override
  String get main_screen_thematic_spreads_description =>
      'ready-made spreads for important areas: love, career, health, travel';

  @override
  String get main_screen_card_combination_title => 'Card combinations';

  @override
  String get main_screen_fun_spread_title => 'Joke spread';

  @override
  String get main_screen_fun_spread_description =>
      'lift your mood, do a joke spread and share it on social media';

  @override
  String get main_screen_love_badge => 'LOVE';

  @override
  String get card_combination_screen_title => 'Card Combination';

  @override
  String get card_combination_screen_greeting =>
      'Good day, select cards to find out the combination and meaning';

  @override
  String get card_combination_screen_card_hint => 'Card';

  @override
  String get card_combination_screen_get_combination_button =>
      'Find Combination';

  @override
  String get card_combination_screen_new_spread_button => 'Make a New Spread';

  @override
  String get card_combination_screen_fill_all_fields_error =>
      'Please fill in all card fields.';

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
      'The app uses AI solely for entertainment purposes. We are not responsible for any decisions you make. Consult a specialist if necessary.';

  @override
  String card_combination_screen_prompt(Object cards, Object lang) {
    return 'Analyze the combination of Tarot cards: $cards. Provide a deep mystical analysis of their interaction and overall advice. The response should be entirely in $lang. No greetings or conclusions.';
  }

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
      'Quick spread is an express reading (answer: YES or NO) that helps instantly get a clear answer to a specific question or the general atmosphere of the day. Perfect when you need quick inspiration or advice \"here and now.\"';

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
      'A quick spread is an express reading (answer: YES or NO) that helps you instantly get a clear answer to a specific question or the general vibe of the day. Perfect when you need quick inspiration or advice \"here and now.\"';

  @override
  String get quick_reading_result_screen_understand_button => 'Understood';

  @override
  String get quick_reading_result_screen_quick_spread_title => 'Quick spread';

  @override
  String get quick_reading_result_screen_new_spread_button => 'New spread';

  @override
  String get quick_reading_result_screen_disclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Please consult a professional if necessary.';

  @override
  String quick_reading_result_screen_prompt(Object cardName, Object userName) {
    return 'You are an experienced tarot reader. The user $userName drew the card — $cardName. First, write on a new line the phrase: Card answer: followed by a one-word answer \"Yes\" or \"No\". Then add a coherent interpretation of 120–150 words: 7–8 sentences about why the energy of $cardName leads to this answer and what it means personally for $userName. Mention the name $userName at least twice, include 1–2 thematic emojis, avoid symbols *, #, and any markup; write in a simple conversational tone.';
  }

  @override
  String get career_finance_spread_screen_request_accepted =>
      'Your request has been received. Please reveal the cards.';

  @override
  String get career_finance_spread_screen_error_getting_value =>
      'Error retrieving the spread value. Please try again.';

  @override
  String get career_finance_spread_screen_what_is_career_finance =>
      'What is the Career and Finance spread?';

  @override
  String get career_finance_spread_screen_career_finance_explanation =>
      'This spread helps analyze the professional and financial sphere. You will learn about opportunities, obstacles, and growth prospects.';

  @override
  String get career_finance_spread_screen_understand_button => 'Understood';

  @override
  String get career_finance_spread_screen_learn_meaning_button =>
      'Find out the meaning';

  @override
  String get career_finance_spread_screen_career_finance_title =>
      'Career and Finance';

  @override
  String get career_finance_spread_screen_new_spread_button =>
      'Make a new spread';

  @override
  String get career_finance_spread_screen_disclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a professional if necessary.';

  @override
  String get career_finance_spread_screen_enter_question_hint =>
      'Enter your question...';

  @override
  String get pros_cons_spread_screen_what_is_pros_cons =>
      'What is the \"Pros and Cons\" spread?';

  @override
  String get pros_cons_spread_screen_pros_cons_title =>
      '\"Pros and Cons\" spread';

  @override
  String get pros_cons_spread_screen_enter_question_hint =>
      'Enter your question...';

  @override
  String
  get self_development_balance_spread_screen_self_development_explanation =>
      'The \"Self-Development and Balance\" spread consists of 7 cards arranged in a circle. Each card symbolizes a specific aspect of your spiritual growth and inner harmony.';

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
  String get card_meanings_screen_title => 'Card meanings';

  @override
  String get love_spread_screen_new_spread_button => 'Make a new spread';

  @override
  String get love_spread_screen_enter_question_hint => 'Enter your question...';

  @override
  String purchase_love_screen_test_stub(Object plan) {
    return 'Test placeholder: selected plan \"$plan\"';
  }

  @override
  String get purchase_love_screen_love_tariff_title => 'Love Plan';

  @override
  String get ad_promo_block_tariff => 'PLAN';

  @override
  String get ad_promo_block_love => 'LOVE';

  @override
  String get ad_promo_block_promotion_70 => 'PROMOTION -50%';

  @override
  String get ad_promo_block_no_ads => '• no ads';

  @override
  String get ad_promo_block_no_limits => '• no limits';

  @override
  String three_cards_screen_title(Object cards) {
    return '3 cards in the spread';
  }

  @override
  String get three_cards_screen_initial_message =>
      'Good day, please write your request below:';

  @override
  String get three_cards_screen_request_accepted =>
      'Your request has been received. Please reveal the cards';

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
  String get three_cards_screen_enter_question_hint => 'Enter your query...';

  @override
  String get three_cards_screen_what_is_three_cards =>
      'What is a 3-card spread?';

  @override
  String get three_cards_screen_three_cards_explanation =>
      'A classic spread that shows the past, present, and future of your situation. The first card is the past, the second is the present, the third is the future.';

  @override
  String get three_cards_screen_understand_button => 'Understood';

  @override
  String get three_cards_screen_error_getting_value =>
      'Error retrieving the spread value. Please try again.';

  @override
  String get three_cards_screen_disclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a specialist if necessary.';

  @override
  String get five_cards_screen_title => '5 cards in the spread';

  @override
  String get five_cards_screen_initial_message =>
      'Good day, please write your request below:';

  @override
  String get five_cards_screen_request_accepted =>
      'Your request has been received. Please reveal the cards';

  @override
  String get five_cards_screen_suggested_questions_1 =>
      'Which path should I choose?';

  @override
  String get five_cards_screen_suggested_questions_2 =>
      'What is preventing me from reaching my goal?';

  @override
  String get five_cards_screen_suggested_questions_3 =>
      'What options do I have?';

  @override
  String get five_cards_screen_see_meaning_button => 'Find out the meaning';

  @override
  String get five_cards_screen_new_spread_button => 'Make a new spread';

  @override
  String get five_cards_screen_enter_question_hint => 'Enter your query...';

  @override
  String get five_cards_screen_what_is_five_cards => 'What is a 5-card spread?';

  @override
  String get five_cards_screen_five_cards_explanation =>
      'A 5-card spread is a compact layout that reveals five key aspects of a situation: the past, the present, hidden influences, the helper/obstacle, and the likely outcome.';

  @override
  String get five_cards_screen_understand_button => 'Understood';

  @override
  String get five_cards_screen_error_getting_value =>
      'Error retrieving the spread value. Please try again.';

  @override
  String get five_cards_screen_disclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a specialist if necessary.';

  @override
  String get celtic_cross_screen_title => 'Celtic Cross';

  @override
  String get celtic_cross_screen_initial_message =>
      'Good afternoon, please write your request below:';

  @override
  String get celtic_cross_screen_suggested_questions_1 =>
      'What is my main problem right now?';

  @override
  String get celtic_cross_screen_suggested_questions_2 =>
      'What should I focus on in the near future?';

  @override
  String get celtic_cross_screen_suggested_questions_3 =>
      'What is hidden from me?';

  @override
  String get celtic_cross_screen_see_meaning_button => 'Find out the meaning';

  @override
  String get celtic_cross_screen_new_spread_button => 'Make a new spread';

  @override
  String get celtic_cross_screen_enter_question_hint => 'Enter your query...';

  @override
  String get celtic_cross_screen_what_is_celtic_cross_dialog =>
      'What is the Celtic Cross?';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_dialog =>
      'The \"Celtic Cross\" is a 10-card spread that thoroughly analyzes the situation from all angles: current circumstances, obstacles, internal and external influences, as well as near-term dynamics and the final outcome. The cards are laid out in order:\n1 - Situation — the essence of the question here and now.\n2 - Challenge — what helps or hinders progress.\n3 - Subconscious (root) — hidden motives and deep forces.\n4 - Recent past — events that led to the current state.\n5 - Conscious (goal) — what the querent\'s attention is focused on now.\n6 - Near future — likely developments in the coming weeks.\n7 - \"Self\" — internal state, resources, attitude toward the question.\n8 - Environment — influences of people and circumstances around.\n9 - Hopes / fears — expectations, doubts, strong emotions.\n10 - Outcome — possible result if current trends continue.\nThis spread allows you to see the \"big picture\": where you stand, what helps or hinders, which hidden impulses are working behind the scenes, and where everything is heading next.\nThe layout diagram is shown in the image below.';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_image =>
      'assets/images/kelt.png';

  @override
  String get celtic_cross_screen_understand_button => 'Understood';

  @override
  String celtic_cross_screen_please_open_cards(Object cards) {
    return 'Your request has been received. Please open the cards';
  }

  @override
  String celtic_cross_screen_request_accepted(Object cards) {
    return 'Request received, please open the cards';
  }

  @override
  String get the_user => 'user';

  @override
  String get good_day_please_write_your_question_below =>
      'Good day, please write your request below';

  @override
  String get errorGettingSpreadMeaning =>
      'Error retrieving the spread value. Please try again.';

  @override
  String get errorGettingSpreadMeaningPleaseTryAgain =>
      'Error retrieving the spread value. Please try again.';

  @override
  String get seeMeaning => 'Get the meaning';

  @override
  String get newSpread => 'Make a new spread';

  @override
  String get enterYourQuestion => 'Enter your question...';

  @override
  String get enterQuestion => 'Enter your question...';

  @override
  String makeTarotReadingFor(Object lang) {
    return 'Make for';
  }

  @override
  String get theUser => 'user';

  @override
  String onTheseThreeCards(Object userName) {
    return 'a spread on these three cards:';
  }

  @override
  String makeSelfDevelopmentAndBalanceTarotReadingFor(Object cards) {
    return 'Make a Self-development and Balance spread for $cards';
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
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a specialist if necessary.';

  @override
  String get careerFinance => 'Career and Finance';

  @override
  String get fun_spread_screen_with_swear_words_title => 'With profanity (18+)';

  @override
  String get fun_spread_screen_with_swear_words_subtitle =>
      'For those who love thrills';

  @override
  String get fun_spread_screen_without_swear_words_title => 'Without profanity';

  @override
  String get fun_spread_screen_without_swear_words_subtitle =>
      'A fun spread without swear words';

  @override
  String get fun_spread_screen_generating => 'Generating your spread...';

  @override
  String get card_name_the_fool => 'The Fool';

  @override
  String get card_name_the_magician => 'The Magician';

  @override
  String get card_name_the_high_priestess => 'The High Priestess';

  @override
  String get card_name_the_empress => 'The Empress';

  @override
  String get card_name_the_emperor => 'The Emperor';

  @override
  String get card_name_the_hierophant => 'The Hierophant';

  @override
  String get card_name_the_lovers => 'The Lovers';

  @override
  String get card_name_the_chariot => 'The Chariot';

  @override
  String get card_name_strength => 'Strength';

  @override
  String get card_name_the_hermit => 'Hermit';

  @override
  String get ok_button => 'OK';

  @override
  String get cancel_button => 'Cancel';

  @override
  String get analyzing_cards => 'Analyzing cards...';

  @override
  String get yes_button => 'Yes';

  @override
  String get no_button => 'No';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get success => 'Success';

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
  String get card_name_temperance => 'Temperance';

  @override
  String get card_name_the_devil => 'The Devil';

  @override
  String get card_name_the_tower => 'The Tower';

  @override
  String get card_name_the_star => 'Star';

  @override
  String get card_name_the_moon => 'Moon';

  @override
  String get card_name_the_sun => 'Sun';

  @override
  String get card_name_judgement => 'Judgment';

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
  String get quick_reading_screen_suggested_questions_1 => 'Should I do this?';

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
      'Enter your query...';

  @override
  String get monthly_forecast_spread_screen_what_is_monthly_forecast =>
      'What is a monthly forecast?';

  @override
  String get monthly_forecast_spread_screen_monthly_forecast_explanation =>
      'The monthly forecast shows the main events and trends for the upcoming month. It helps to prepare for changes and take advantage of opportunities.';

  @override
  String get monthly_forecast_spread_screen_understand_button => 'Got it';

  @override
  String get monthly_forecast_spread_screen_error_getting_value =>
      'Error retrieving the spread value. Please try again.';

  @override
  String get monthly_forecast_spread_screen_disclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a specialist if necessary.';

  @override
  String self_development_balance_spread_screen_prompt(
    Object cards,
    Object userName,
  ) {
    return 'Make a spread for $userName on self-development and balance with these three cards: $cards';
  }

  @override
  String get error_getting_answer_try_again =>
      'Error: failed to get a response. Please try again.';

  @override
  String get card_detail_screen_title => 'Card details';

  @override
  String get card_detail_screen_general_meaning => 'General meaning';

  @override
  String get card_detail_screen_reversed_meaning => 'Reversed meaning';

  @override
  String get card_detail_screen_symbolism => 'Symbolism';

  @override
  String get card_detail_screen_error_loading_text => 'Text loading error';

  @override
  String card_detail_screen_general_meaning_prompt(
    Object cardName,
    Object lang,
  ) {
    return 'Describe the general meaning of the Tarot card \"$cardName\" in $lang. Include history, symbolism, and key meanings.';
  }

  @override
  String card_detail_screen_reversed_meaning_prompt(
    Object cardName,
    Object lang,
  ) {
    return 'Describe the reversed meaning of the Tarot card \"$cardName\" in $lang. Include opposite meanings and warnings.';
  }

  @override
  String card_detail_screen_symbolism_prompt(Object cardName, Object lang) {
    return 'Describe the symbolism of the Tarot card \"$cardName\" in $lang. Include details of the imagery, colors, and their meanings.';
  }

  @override
  String card_detail_screen_description(Object cardName) {
    return 'Description of the card $cardName';
  }

  @override
  String get card_detail_screen_see_other_card_meaning =>
      'View the meaning of another card';

  @override
  String get card_detail_screen_or => 'or';

  @override
  String get card_detail_screen_loading_language => 'Loading language...';

  @override
  String get card_detail_screen_see_card_meaning => 'View card meaning';

  @override
  String get card_detail_screen_original_waite_text => 'Original Wait text';

  @override
  String get card_detail_screen_no_original_text => 'No original text';

  @override
  String card_of_the_day_screen_translate_card_name_prompt(
    Object cardName,
    Object languageCode,
  ) {
    return 'Translate the Tarot card name \"$cardName\" into $languageCode. The response should contain only the translated name, without any additional text or punctuation.';
  }

  @override
  String card_of_the_day_screen_generate_description_prompt(
    Object cardName,
    Object name,
  ) {
    return 'You are a professional tarot reader. Write an inspiring \"Card of the Day\" message in the language of this request for the user $name. Follow the structure and length.\n🌟 $name, your card of the day is $cardName!\n🔑 Keywords: <list 3–5 short keywords>\n🃏 Meaning (≈45–50 words): describe the main energy of the card and how it will manifest today for $name.\n💡 Advice (≈35–40 words): suggest a specific action or mindset that will help $name harness this energy.\n✨ Affirmation (1 line): a positive statement starting with \"I…\".\nRequirements: total length 120–150 words, warm esoteric tone, 3–4 thematic emojis, no HTML/Markdown lists; separate paragraphs with double line breaks (\\n\\n).';
  }

  @override
  String get card_of_the_day_screen_title => 'Card of the Day';

  @override
  String get card_of_the_day_screen_error_loading_card => 'Error loading card';

  @override
  String career_finance_spread_screen_prompt(Object cards, Object userName) {
    return 'Do a career and finance spread for $userName using these three cards: $cards';
  }

  @override
  String get contact_us_title => 'Write to us';

  @override
  String get contact_us_email_hint => 'Your e-mail';

  @override
  String get contact_us_email_empty => 'Enter e-mail';

  @override
  String get contact_us_email_invalid => 'Invalid e-mail';

  @override
  String get contact_us_message_hint => 'Your message';

  @override
  String get contact_us_message_empty => 'Enter message';

  @override
  String get contact_us_send_button => 'Send';

  @override
  String get five_cards_spread_screen_what_is_five_cards_dialog =>
      'What is a 5-card spread?';

  @override
  String get five_cards_spread_screen_five_cards_explanation_dialog =>
      'This spread reveals the entire path of your question:\nCard 1 - The Past shows the original circumstances,\nCard 2 - The Present — the current energy,\nCard 3 - The Hidden reveals hidden influences,\nCard 4 - The Advice suggests the optimal action,\nCard 5 - The Outcome predicts the likely result.';

  @override
  String get five_cards_spread_screen_understand_button => 'Understood';

  @override
  String get language_selection_screen_title => 'Language';

  @override
  String get love_spread_screen_what_is_love_spread => 'What is a love spread?';

  @override
  String get love_spread_screen_love_spread_explanation =>
      'A love triplet is three cards laid out from left to right:\nCard 1 - You — shows the querent\'s feelings, motivation, and position.\nCard 2 - Partner — reveals the emotions, plans, and readiness of the other party.\nCard 3 - Dynamics / potential — describes how the two energies interact now and what the relationship might lead to in the near future.';

  @override
  String get love_spread_screen_understand_button => 'Understood';

  @override
  String get main_screen_your_plan_trial => 'Your plan: Trial (with ads)';

  @override
  String get main_screen_no_ads => '• no ads';

  @override
  String get main_screen_no_limits => '• unlimited';

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
      'spreads of 2 / 3 / 5 cards and the full detailed Celtic Cross';

  @override
  String get main_screen_card_meanings_title => 'Card meanings';

  @override
  String get main_screen_card_meanings_description =>
      'a complete guide to upright and reversed meanings of all Major and Minor Arcana';

  @override
  String get main_screen_card_combination_description =>
      '\"tarot calculator\" select cards and get a deep relationship analysis';

  @override
  String get notification_settings_screen_title => 'Notification settings';

  @override
  String get notification_settings_screen_frequency_question =>
      'How often do you want to receive the card of the day notification?';

  @override
  String get notification_settings_screen_every_day => 'Every day';

  @override
  String get notification_settings_screen_every_three_days =>
      'Every three days';

  @override
  String get notification_settings_screen_every_week => 'Once a week';

  @override
  String get notification_settings_screen_time_question =>
      'At what time of day?';

  @override
  String get notification_settings_screen_morning => 'In the morning';

  @override
  String get notification_settings_screen_day => 'In the afternoon';

  @override
  String get notification_settings_screen_evening => 'In the evening';

  @override
  String get notification_settings_screen_save_button => 'Save';

  @override
  String get onboarding_final_screen_yearly_price => '249/year';

  @override
  String get onboarding_final_screen_yearly_month_price => '24/mo';

  @override
  String get onboarding_final_screen_monthly_price => 'Monthly';

  @override
  String get onboarding_final_screen_monthly_month_price => '9/mo';

  @override
  String get onboarding_final_screen_yearly_plan => 'Annually';

  @override
  String get onboarding_final_screen_free_trial => '7 days free';

  @override
  String get onboarding_final_screen_purchase_title => 'Purchase';

  @override
  String onboarding_final_screen_test_stub_message(Object plan) {
    return 'Test stub: selected plan \"$plan\"';
  }

  @override
  String get onboarding_final_screen_ok_button => 'OK';

  @override
  String get purchase_love_screen_yearly_price => '249/year';

  @override
  String get purchase_love_screen_yearly_month_price => '24/mo';

  @override
  String get purchase_love_screen_monthly_price => 'Monthly';

  @override
  String get purchase_love_screen_monthly_month_price => '9/mo';

  @override
  String get purchase_love_screen_title => 'Purchase';

  @override
  String get purchase_love_screen_ok_button => 'OK';

  @override
  String quick_reading_screen_error_no_image_file_found(Object cardName) {
    return 'ERROR: Image file not found for card: $cardName';
  }

  @override
  String get please_fill_all_fields => 'Please fill in all card fields.';

  @override
  String get please_select_cards_only_from_suggested_list =>
      'Please select cards only from the suggested list. Invalid cards:';

  @override
  String get please_select_different_cards_in_all_fields =>
      'Please select different cards in all fields.';

  @override
  String get card => 'Card';

  @override
  String get get_combination => 'Find out the combination';

  @override
  String get new_spread => 'Make a new spread';

  @override
  String get app_uses_ai_for_entertainment_purposes =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a specialist if necessary.';

  @override
  String get career_finance_spread_screen_what_is_career_finance_spread =>
      'What is the Career and Finance spread?';

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
    return 'You are an experienced tarot reader. The user $userName asks: \"$userQuestion\". Respond with the \"Celtic Cross\" spread (classic Waite layout). The cards are assigned as follows: situation - $situationCard; challenge - $challengeCard; subconscious - $subconsciousCard; recent past - $pastCard; conscious - $consciousCard; near future - $hiddenCard; inner self - $selfCard; environment - $environmentCard; hopes or fears - $hopesCard; outcome - $outcomeCard. Mention the name $userName at least six times and be sure to connect each card to the question. Follow the structure:\n1) Greeting by the name $userName.\n2) Title: Spread: situation ($situationCard) / challenge ($challengeCard) / subconscious ($subconsciousCard) / recent past ($pastCard) / conscious ($consciousCard) / near future ($hiddenCard) / inner self ($selfCard) / environment ($environmentCard) / hopes/fears ($hopesCard) / outcome ($outcomeCard).\n3) Situation — $situationCard (45-55 words): three keywords, symbolism of the card, and the current state of affairs regarding the question $userQuestion for $userName.\n4) Challenge — $challengeCard (45-55 words): the main obstacle or aid for $userName.\n5) Subconscious — $subconsciousCard (45-55 words): hidden motives or energies influencing $userName.\n6) Recent past — $pastCard (45-55 words): events that led $userName to the current situation.\n7) Conscious — $consciousCard (45-55 words): goals, expectations, or what $userName is aware of.\n8) Near future — $hiddenCard (45-55 words): likely developments in the coming weeks.\n9) Inner self — $selfCard (45-55 words): state, resources of $userName.\n10) Environment — $environmentCard (45-55 words): influence of people and circumstances.\n11) Hopes / fears — $hopesCard (45-55 words): expectations or fears of $userName.\n12) Outcome — $outcomeCard (45-55 words): probable result considering the advice of the spread.\n13) Conclusion: friendly support and positive affirmation (30-35 words) for $userName.\nRequirements: total volume 400-500 words, lively conversational tone, 4-6 esoteric emojis; separate each block with double line breaks (\n); do not use *, #, or other markup; write only in plain text.';
  }

  @override
  String get celtic_cross_screen_unable_to_load_card =>
      'Failed to load the card';

  @override
  String get celticCrossTitle => 'Celtic Cross';

  @override
  String get chat_with_tarot_reader_screen_request_received =>
      'Your request has been received. Please reveal the cards';

  @override
  String chat_with_tarot_reader_screen_prompt(
    Object hiddenCard,
    Object pastCard,
    Object presentCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'You are an experienced tarot reader. The user $userName asks: \"$userQuestion\". Respond with the \"Past - Present - Future\" spread. The cards are assigned as follows: past - $pastCard; present - $presentCard; future - $hiddenCard. Mention the name $userName at least four times and be sure to connect the card meanings to the question. Follow the structure:\n1) Greeting by the name $userName.\n2) Title: Spread: Past ($pastCard) - Present ($presentCard) - Future ($hiddenCard).\n3) PAST block — $pastCard (40-50 words): three keywords, symbolism of the card, and explanation of how past facts influence the outcome of the question $userQuestion for $userName.\n4) PRESENT block — $presentCard (40-50 words): keywords, symbolism of the card, and current factors affecting the answer to the question $userQuestion.\n5) FUTURE block — $hiddenCard (40-50 words): keywords, symbolism of the card, and the likely scenario of the situation\'s development regarding the question for $userName.\n6) Conclusion: brief advice, positive affirmation (20-30 words), and a clear summary of the chances.\nRequirements: total volume 180-220 words, warm esoteric tone, 3-5 thematic emojis; separate each block with double line breaks (\n); do not use *, #, or other formatting marks; write only in plain text.';
  }

  @override
  String get see_meaning_button => 'Find out the meaning';

  @override
  String three_cards_title(Object cards) {
    return '3 cards in the spread';
  }

  @override
  String get new_spread_button => 'Make a new spread';

  @override
  String get disclaimer_text =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a specialist if necessary.';

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
      'Deep situation analysis';

  @override
  String get classic_spreads_screen_celtic_cross_title => 'Celtic Cross';

  @override
  String get classic_spreads_screen_celtic_cross_description =>
      'Full 10-card spread';

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
    return 'You are an experienced tarot reader. The user $userName asks: \"$userQuestion\". Answer using the \"5 cards\" spread. The cards are given in order: past - $pastCard; present - $presentCard; hidden - $hiddenCard; advice - $adviceCard; outcome - $outcomeCard. Refer to $userName at least five times and be sure to relate each card to the question. Follow the structure:\n\n1) Greeting by name $userName.\n\n2) Title: Spread: past ($pastCard) / present ($presentCard) / hidden ($hiddenCard) / advice ($adviceCard) / outcome ($outcomeCard).\n\n3) Past — $pastCard (45-55 words): three keywords, card symbolism, and the influence of the past on $userQuestion for $userName.\n\n4) Present — $presentCard (45-55 words): keywords, symbolism, and the current state of $userName\'s question.\n\n5) Hidden — $hiddenCard (45-55 words): what unconsciously affects $userName\'s situation, focusing on symbolism.\n\n6) Advice — $adviceCard (45-55 words): practical action for $userName, based on the card\'s images.\n\n7) Outcome — $outcomeCard (45-55 words): likely scenario if the advice is followed, addressing $userName.\n\n8) Conclusion: friendly support and a positive affirmation (25-30 words) for $userName.\n\nRequirements: total volume 230-260 words, lively conversational tone, 3-5 esoteric emojis; separate each block with a double line break (\\n\\n); do not use *, # or other markup; write only plain text.';
  }

  @override
  String get fiveCardsInSpread => '5 cards in the spread';

  @override
  String get makeNewSpread => 'Make a new spread';

  @override
  String
  get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMake =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a specialist if necessary.';

  @override
  String get requestReceivedPleaseOpenCards =>
      'Your request has been received. Please reveal the cards.';

  @override
  String love_spread_prompt(
    Object dynamicCard,
    Object partnerCard,
    Object userName,
    Object userQuestion,
    Object youCard,
  ) {
    return 'You are an experienced tarot reader. The user $userName asks: \"$userQuestion\". Respond using a three-card love spread. The cards are given as follows: feelings of $userName — $youCard; feelings of the partner — $partnerCard; dynamics or potential of the relationship — $dynamicCard. Mention the name $userName at least three times and connect each card to the question. Follow this structure:\n1) Greeting by the name $userName.\n2) Title: Spread: $youCard | $partnerCard | $dynamicCard.\n3) $youCard — 40–50 words: describe what the card says about $userName\'s feelings and expectations.\n4) $partnerCard — 40–50 words: reveal the partner\'s emotions and intentions regarding $userName\'s question.\n5) $dynamicCard — 40–50 words: show how these two energies interact and what the relationship might lead to.\n6) Conclusion: warm advice and a positive affirmation (20–25 words) for $userName.\nRequirements: total length 150–180 words, friendly romantic tone, 2–4 thematic emojis; separate paragraphs with double line breaks (\\n\\n); avoid *, #, and any markup.';
  }

  @override
  String get loveSpread => 'Love Spread';

  @override
  String
  get applicationUsesAIExclusivelyForEntertainmentWeDoNotTakeResponsibilityForDecisionsYouHaveMadeIfNeededPleaseConsultSpecialist =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a specialist if necessary.';

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
  String get main_screen_viewed => 'Opened';

  @override
  String get main_screen_not_viewed => 'View';

  @override
  String get main_screen_spreads => 'Spreads';

  @override
  String get main_screen_training => 'Tutorial';

  @override
  String get main_screen_entertainment => 'Entertainment';

  @override
  String get main_screen_glad_to_see_you_here => 'Glad to see you here!';

  @override
  String get main_screen_quick_reading_title => 'Quick spread';

  @override
  String get main_screen_quick_reading_description =>
      'Get a clear answer to your question with one card in just a few taps';

  @override
  String get monthly_forecast_spread_screen_request_accepted =>
      'Your request has been received. Please reveal the cards';

  @override
  String monthly_forecast_spread_screen_prompt(Object cards, Object userName) {
    return 'Make a monthly forecast for $userName based on these cards: $cards';
  }

  @override
  String get aboutSpread => 'About the spread';

  @override
  String get monthlyForecast => 'Monthly forecast';

  @override
  String
  get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNecessaryPleaseConsultSpecialist =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a specialist if necessary.';

  @override
  String purchase_love_screen_test_message(Object planName) {
    return 'Test placeholder: selected plan \"$planName\"';
  }

  @override
  String get quick_reading_screen_what_is_quick_reading =>
      'What is a quick spread?';

  @override
  String get quick_reading_screen_quick_reading_explanation =>
      'A quick spread is an express reading (answer: YES or NO) that helps instantly get a clear answer to a specific question or the general vibe of the day. Perfect when you need quick inspiration or advice \"here and now.\"';

  @override
  String get self_development_balance_spread_screen_request_accepted =>
      'Your request has been received. Please reveal the cards.';

  @override
  String get self_development_balance_spread_screen_error_getting_value =>
      'Error retrieving the spread value. Please try again.';

  @override
  String
  get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNeededConsultSpecialist =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a professional if necessary.';

  @override
  String get thematic_spreads_screen_title => 'Thematic spreads';

  @override
  String get thematic_spreads_screen_love_spread_title => 'Love spread';

  @override
  String get thematic_spreads_screen_love_spread_description =>
      'Relationship and feelings analysis';

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
      'Analysis of Advantages and Disadvantages';

  @override
  String get thematic_spreads_screen_monthly_forecast_title =>
      'Monthly Forecast';

  @override
  String get thematic_spreads_screen_monthly_forecast_description =>
      'Forecast by Months';

  @override
  String get thematic_spreads_screen_self_development_title =>
      'Self-development and Balance';

  @override
  String get thematic_spreads_screen_self_development_description =>
      'Spiritual growth and harmony';

  @override
  String get requestReceived =>
      'Your request has been accepted. Please reveal the cards';

  @override
  String pros_cons_spread_prompt(Object cards, Object userName) {
    return 'Make a Pros and Cons spread for $userName with these cards: $cards';
  }

  @override
  String get pros_cons_spread_screen_what_is_pros_cons_spread =>
      'What is the \"Pros and Cons\" spread?';

  @override
  String get pros_cons_spread_screen_pros_cons_spread_explanation =>
      'The \"Pros and Cons\" spread helps analyze the advantages and disadvantages of a situation to make a well-informed decision.';

  @override
  String get pros_cons_spread_screen_understand_button => 'Understood';

  @override
  String get prosConsSpreadTitle => 'Spread \"Pros and Cons\"';

  @override
  String get spreadDisclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a specialist if necessary.';

  @override
  String get fun_spread_screen_generation_error =>
      'Error generating the spread. Please try again.';

  @override
  String get fun_spread_screen_share_error => 'Error saving the image.';

  @override
  String get fun_spread_screen_about_fun_spread => 'What is a fun spread?';

  @override
  String get fun_spread_screen_fun_spread_explanation =>
      'A fun spread is a special way of tarot card reading that combines the depth of traditional spreads with a light and positive approach. It will help you see the situation from a new perspective and find joy in everyday life.';

  @override
  String get fun_spread_screen_understand_button => 'Understood';

  @override
  String get fun_spread_screen_title => 'Fun spread';

  @override
  String get fun_spread_screen_generate_button => 'Create spread';

  @override
  String get fun_spread_screen_share_button => 'Share';

  @override
  String get fun_spread_screen_new_button => 'New spread';

  @override
  String get fun_spread_screen_share_text =>
      'Look at this funny tarot spread I got in the Tarot AI app!';

  @override
  String get ad_promo_tariff => 'PLAN';

  @override
  String get ad_promo_love => 'LOVE';

  @override
  String get ad_promo_discount => 'SALE -50%';

  @override
  String get ad_promo_no_ads => '• no ads';

  @override
  String get ad_promo_no_limits => '• no limits';

  @override
  String get no_internet_error =>
      'Our app works only with internet. Please turn on Wi-Fi or mobile data.';

  @override
  String fun_spread_screen_mate_prompt_3cards(Object userName) {
    return 'Make a very funny, cheeky, and swear-filled 3-card tarot reading for $userName. For each card, come up with a funny name and write a separate paragraph: First card: <name> — <short funny description>, Second card: <name> — <short funny description>, Third card: <name> — <short funny description>. Use profanity to add humor, but don\'t offend. The whole text should be no longer than 7 sentences.';
  }

  @override
  String fun_spread_screen_no_mate_prompt_3cards(Object userName) {
    return 'Create a funny tarot spread for $userName with 3 cards. For each card, come up with a funny title and write a separate paragraph: First card: <title> — <short funny description>, Second card: <title> — <short funny description>, Third card: <title> — <short funny description>. The spread should be fun but meaningful. Only 3 cards. The entire text no longer than 7 sentences.';
  }

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
  String get main_screen_tariff => 'PLAN';

  @override
  String get main_screen_promo_50 => 'PROMOTION -50%';

  @override
  String get main_screen_rate_hint =>
      'If the rating window did not appear, you can leave a review on Google Play.';

  @override
  String get main_screen_rate_error =>
      'Failed to open Google Play. Please try again later.';

  @override
  String get love_spread_screen_suggested_questions_1 =>
      'What feelings do I have for this person?';

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
      'What is disrupting my inner balance?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_3 =>
      'How to find harmony in life?';

  @override
  String career_three_card_prompt(
    Object adviceCard,
    Object challengeCard,
    Object situationCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'You are an experienced tarot coach. The user $userName asks: \"$userQuestion\". Do a three-card spread on career and finances. The cards are given as follows: 1) situation — $situationCard; 2) obstacle or key opportunity — $challengeCard; 3) advice and potential — $adviceCard. Determine the user\'s gender by the name $userName and use the correct endings and pronouns. Speak to $userName in a friendly and businesslike manner: show where they stand, what blocks growth (or what opportunity is important to notice), and what practical step will lead to the desired income. Mention the name $userName at least three times. Follow the structure:\n1) Greeting — 1 sentence.\n2) Title: Spread: $situationCard | $challengeCard | $adviceCard.\n3) $situationCard — 45–55 words: describe $userName\'s current position (work, business, or general financial background) and the symbolism of the card.\n4) $challengeCard — 45–55 words: reveal the main barrier or hidden opportunity; indicate how it is reflected in the card and in $userName\'s question.\n5) $adviceCard — 45–55 words: suggest a specific action (for example, review the budget, request a raise, learn a new skill) and describe the possible outcome.\n6) Finale — 20–25 words: friendly conclusion, positive affirmation, and 2 business emojis.\nRequirements: total volume 160–185 words, clear business tone without jargon, 2–3 emojis; separate paragraphs with double \\n\\n; do not use *, #, or other markup.';
  }

  @override
  String pros_cons_three_card_prompt(
    Object adviceCard,
    Object conCard,
    Object proCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'You are an experienced tarot reader. The user $userName asks: \"$userQuestion\". Do a three-card \"Pros and Cons\" spread. The cards are given as follows: pros — $proCard; cons — $conCard; advice/outcome — $adviceCard. Determine the user\'s gender by the name $userName and use the correct endings and pronouns. Mention the name $userName at least three times and connect each card to the question. Follow the structure:\n1) Greeting by the name $userName.\n2) Title: Spread: $proCard | $conCard | $adviceCard.\n3) Pros: $proCard — 45–55 words. Reveal the main benefits or positive resources this card brings to $userName\'s situation.\n4) Cons: $conCard — 45–55 words. Describe the risks, hidden costs, or weaknesses of the decision for $userName.\n5) Advice: $adviceCard — 45–55 words. Weigh the pros and cons, suggest one specific action (verb + object), and say how this will change the outcome for $userName.\n6) Conclusion — one word \"Yes\" or \"No,\" then 1 sentence justification and an encouraging affirmation (20–25 words) with 1–2 emojis.\nRequirements: total volume 150–180 words, friendly conversational tone; separate each block with double line breaks (\\n\\n); no *, #, or other markup.';
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
    return 'You are a professional tarot reader. The user $userName asks: \"$userQuestion\". Make a \"Wheel of the Month\" spread for $month. The cards are in order: 1 — $card1, 2 — $card2, 3 — $card3, 4 — $card4, 5 — $card5, 6 — $card6, 7 — $card7, 8 — $card8, 9 — $card9, 10 — $card10, 11 — $card11, 12 — $card12. Determine $userName\'s gender by the name and use the correct endings and pronouns. Mention the name at least five times, but do not insert it after every date — recall it only within the advice text. Use the calendar date grid: 1–3, 4–6, 7–9, 10–12, 13–15, 16–18, 19–21, 22–24, 25–26, 27–28, 29–30, 31 (if the month has 30 days — the 12th card also applies to the 30th). Format:\n1) Greeting by the name $userName (1–2 sentences).\n2) Brief introduction about the purpose of the spread (1 sentence).\n3–14) For each card use a line like \"1–3 $month — $card1\" (without the name): then 2–3 sentences about the key energy of the period and practical advice, naturally mentioning $userName.\n15) Conclusion: general advice for the month (about 40 words) and an inspiring affirmation with 2–3 emojis.\nRequirements: total 360–400 words; friendly, motivating tone; separate blocks with double \\n\\n; no *, #, lists, or technical notes.';
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
    return 'You are an experienced tarot coach. The user $userName asks: \"$userQuestion\". Do a \"Self-development and Balance\" spread of seven cards. The cards are given as follows: core — $coreCard; mind — $mindCard; emotions — $emotionCard; body — $bodyCard; resource — $strengthCard; block — $challengeCard; advice — $adviceCard. Determine the user\'s gender by the name $userName and use the correct endings and pronouns. Speak vividly and supportively, mention the name $userName at least four times and definitely connect each card to the question. Follow the structure and format:\n1) Greeting by the name $userName.\n2) Title: Spread: $coreCard | $mindCard | $emotionCard | $bodyCard | $strengthCard | $challengeCard | $adviceCard.\n3) $coreCard — describe the main focus of $userName\'s self-development.\n4) $mindCard — explain how to adjust the mindset and what to learn.\n5) $emotionCard — reveal the emotional resource and motivation.\n6) $bodyCard — suggest how to care for the body and energy.\n7) $strengthCard — show the inner gift or external support.\n8) $challengeCard — indicate the key imbalance and its causes.\n9) $adviceCard — suggest a specific action that unites all aspects.\n10) Finale: inspiring affirmation and warm parting words with 2–3 emojis.\nRequirements: each point 2–3 sentences; separate points with double \\n\\n; do not use *, #, or other markup.';
  }

  @override
  String get main_screen_suggest_spread =>
      'What spread should we add? Write to us';

  @override
  String get main_screen_disclaimer =>
      'The app uses AI solely for entertainment purposes. We are not responsible for the decisions you make. Consult a professional if necessary.';

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
}
