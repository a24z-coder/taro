// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get main_title => 'ทำนายและเรียนรู้ไพ่ทาโรต์';

  @override
  String get your_name => 'ชื่อของคุณ';

  @override
  String get personalization_hint =>
      'ถามคำถามกับ AI นักทาโรต์และรับการแจกไพ่ที่ปรับตามบุคคล';

  @override
  String get start_button => 'เริ่มต้น';

  @override
  String get language => 'ภาษา';

  @override
  String get continueBtn => 'ดำเนินการต่อ';

  @override
  String get card_of_the_day => 'ไพ่ประจำวัน';

  @override
  String get description => 'คำอธิบาย';

  @override
  String get spreads => 'การแจกไพ่';

  @override
  String get quick_spread => 'การแจกไพ่ด่วน';

  @override
  String get classic_spreads => 'การวางไพ่แบบคลาสสิก';

  @override
  String get thematic_spreads => 'การวางไพ่ตามธีม';

  @override
  String get card_combination => 'การจับคู่ไพ่';

  @override
  String get card_meanings => 'ความหมายของไพ่';

  @override
  String get training => 'การเรียนรู้';

  @override
  String get welcome => 'ยินดีต้อนรับ';

  @override
  String get today => 'วันนี้';

  @override
  String get view => 'ดู';

  @override
  String get select_card => 'เลือกการ์ด';

  @override
  String get please_select_cards =>
      'กรุณาเลือกการ์ดที่แตกต่างกันในทุกช่องข้อมูลด้วยค่ะ/ครับ';

  @override
  String get good_day =>
      'ขอให้เป็นวันที่ดี,\nเลือกไพ่เพื่อดูการจับคู่และความหมายของไพ่';

  @override
  String get language_hint => 'สำหรับการปรับแต่งการอ่านไพ่ให้สมบูรณ์แบบ';

  @override
  String get quickReading => 'การอ่านไพ่ด่วน';

  @override
  String get comingSoon => 'จะพร้อมใช้งานเร็วๆ นี้';

  @override
  String get onboarding_notifications_title =>
      '🔔 ต้องการไม่พลาด «ไพ่ประจำวัน» และการอ่านไพ่ใหม่ๆ ไหม?';

  @override
  String get onboarding_notifications_subtitle =>
      'กรุณายอมรับการส่งการแจ้งเตือน (ไม่มีสแปม)';

  @override
  String get onboarding_notifications_allow => 'ยอมรับ';

  @override
  String get onboarding_notifications_decline => 'ปฏิเสธ';

  @override
  String get suggested_questions_chat_1 => 'บอกฉันเกี่ยวกับชีวิตรักของฉัน';

  @override
  String get suggested_questions_chat_2 => 'จะเกิดอะไรขึ้นในอาชีพของฉัน?';

  @override
  String get suggested_questions_chat_3 => 'ฉันจะพัฒนาตัวเองได้อย่างไร?';

  @override
  String get suggested_questions_chat_4 => 'โอกาสอะไรที่รอฉันอยู่ในอนาคต?';

  @override
  String get onboarding_final_title => 'ทุกอย่างพร้อมแล้ว!';

  @override
  String get onboarding_final_subtitle =>
      'เพื่อสนับสนุนการทำงานของโครงการ เราจะแสดงโฆษณา แต่ถ้าไม่ต้องการ คุณสามารถสมัครสมาชิกได้';

  @override
  String get onboarding_final_benefits =>
      'ไม่มีโฆษณา\nการแจกไพ่ไม่มีข้อจำกัด\nการเรียนรู้ไม่มีข้อจำกัด';

  @override
  String get onboarding_final_yearly => 'รายปี';

  @override
  String get onboarding_final_badge => 'ประหยัด 50%';

  @override
  String get onboarding_final_yearly_price => '249/ปี';

  @override
  String get onboarding_final_yearly_month => '24/เดือน';

  @override
  String get onboarding_final_trial => 'ทดลองใช้ฟรี 7 วัน';

  @override
  String get onboarding_final_trial_price => 'จากนั้น 9/เดือน';

  @override
  String get onboarding_final_trial_month => 'รายเดือน';

  @override
  String get onboarding_final_note =>
      'การสมัครสมาชิกไม่บังคับและต่ออายุอัตโนมัติ คุณสามารถยกเลิกได้ทุกเมื่อ';

  @override
  String get onboarding_final_choose_yearly => 'เลือกแบบรายปี';

  @override
  String get onboarding_final_choose_trial => 'เลือกทดลองใช้ฟรี 7 วัน';

  @override
  String get onboarding_final_or => 'หรือ';

  @override
  String get onboarding_final_continue_ads => 'ดำเนินการต่อพร้อมโฆษณา';

  @override
  String get main_screen_greeting => 'สวัสดี';

  @override
  String main_screen_date_today(Object date) {
    return 'วันนี้, $date';
  }

  @override
  String get main_screen_card_of_day_title => 'ไพ่ของคุณในวันนี้';

  @override
  String main_screen_card_of_day_description(Object cardName) {
    return 'ไพ่ประจำวัน: $cardName';
  }

  @override
  String get main_screen_card_of_day_description_empty => 'ไพ่ประจำวัน:';

  @override
  String get main_screen_card_of_day_status_viewed => 'เปิดอยู่';

  @override
  String get main_screen_card_of_day_status_view => 'ดู';

  @override
  String get main_screen_section_spreads => 'การแจกไพ่';

  @override
  String get main_screen_section_training => 'การเรียนรู้';

  @override
  String get main_screen_section_entertainment => 'ความบันเทิง';

  @override
  String get main_screen_quick_spread_title => 'การเปิดไพ่รวดเร็ว';

  @override
  String get main_screen_quick_spread_description =>
      'เพียงไม่กี่สัมผัส คุณจะได้รับคำตอบที่ชัดเจนสำหรับคำถามของคุณด้วยไพ่ใบเดียว';

  @override
  String get main_screen_thematic_spreads_title => 'การเปิดไพ่ตามธีม';

  @override
  String get main_screen_thematic_spreads_description =>
      'แผนผังสำเร็จรูปสำหรับด้านสำคัญ: ความรัก, อาชีพ, สุขภาพ, การเดินทาง';

  @override
  String get main_screen_card_combination_title => 'การจับคู่ไพ่';

  @override
  String get main_screen_fun_spread_title => 'การเปิดไพ่แบบตลกขบขัน';

  @override
  String get main_screen_fun_spread_description =>
      'เพิ่มความสดชื่น ทำการเปิดไพ่แบบตลกขบขันและแชร์ในโซเชียลมีเดีย';

  @override
  String get main_screen_love_badge => 'ความรัก';

  @override
  String get card_combination_screen_title => 'การจับคู่ไพ่';

  @override
  String get card_combination_screen_greeting =>
      'สวัสดีค่ะ กรุณาเลือกไพ่เพื่อดูการจับคู่และความหมาย';

  @override
  String get card_combination_screen_card_hint => 'ไพ่';

  @override
  String get card_combination_screen_get_combination_button => 'ดูการจับคู่';

  @override
  String get card_combination_screen_new_spread_button => 'ทำการเปิดไพ่ใหม่';

  @override
  String get card_combination_screen_fill_all_fields_error =>
      'กรุณากรอกข้อมูลในช่องบัตรทั้งหมด';

  @override
  String get card_combination_screen_invalid_cards_error =>
      'กรุณาเลือกบัตรเฉพาะจากรายการที่เสนอ บัตรที่ไม่ถูกต้อง:';

  @override
  String get card_combination_screen_duplicate_cards_error =>
      'กรุณาเลือกบัตรที่แตกต่างกันในทุกช่อง';

  @override
  String get card_combination_screen_general_error =>
      'ข้อผิดพลาด: ไม่สามารถรับคำตอบได้ กรุณาลองอีกครั้ง';

  @override
  String get card_combination_screen_disclaimer =>
      'แอปพลิเคชันใช้ AI เพื่อความบันเทิงเท่านั้น เราไม่รับผิดชอบต่อการตัดสินใจของคุณ หากจำเป็นโปรดปรึกษาผู้เชี่ยวชาญ';

  @override
  String card_combination_screen_prompt(Object cards, Object lang) {
    return 'วิเคราะห์การรวมกันของไพ่ทาโรต์: $cards ให้การวิเคราะห์เชิงลึกและลึกลับเกี่ยวกับการโต้ตอบของพวกมันและคำแนะนำโดยรวม ตอบกลับทั้งหมดในภาษา $lang โดยไม่มีคำทักทายและบทสรุป';
  }

  @override
  String get quick_reading_screen_title => 'การเปิดไพ่ด่วน';

  @override
  String get quick_reading_screen_select_card => 'เลือกไพ่';

  @override
  String get quick_reading_screen_get_answer_button => 'ค้นหาคำตอบ';

  @override
  String get quick_reading_screen_what_is_quick_spread =>
      'การเปิดไพ่ด่วนคืออะไร?';

  @override
  String get quick_reading_screen_quick_spread_explanation =>
      'การเปิดไพ่ด่วนคือการเปิดไพ่แบบเร่งด่วน (คำตอบ: ใช่ หรือ ไม่) ที่ช่วยให้ได้รับคำตอบที่ชัดเจนทันทีสำหรับคำถามเฉพาะหรือบรรยากาศโดยรวมของวัน เหมาะอย่างยิ่งเมื่อคุณต้องการแรงบันดาลใจหรือคำแนะนำอย่างรวดเร็ว \"ที่นี่และตอนนี้\"';

  @override
  String get quick_reading_screen_understand_button => 'เข้าใจแล้ว';

  @override
  String get quick_reading_result_screen_generating_response =>
      'กำลังสร้างคำตอบ...';

  @override
  String quick_reading_result_screen_error_generating(Object error) {
    return 'เกิดข้อผิดพลาดในการสร้างคำตอบ: $error';
  }

  @override
  String quick_reading_result_screen_error_generating_response(Object e) {
    return 'เกิดข้อผิดพลาดในการสร้างคำตอบ: $e';
  }

  @override
  String get quick_reading_result_screen_what_is_quick_spread =>
      'การเปิดไพ่ด่วนคืออะไร?';

  @override
  String get quick_reading_result_screen_quick_spread_explanation =>
      'การเปิดไพ่ด่วนคือการเปิดไพ่แบบเร่งด่วน (คำตอบ: ใช่ หรือ ไม่) ที่ช่วยให้ได้รับคำตอบที่ชัดเจนทันทีสำหรับคำถามเฉพาะหรือบรรยากาศโดยรวมของวัน เหมาะอย่างยิ่งเมื่อคุณต้องการแรงบันดาลใจหรือคำแนะนำอย่างรวดเร็ว \"ที่นี่และตอนนี้\"';

  @override
  String get quick_reading_result_screen_understand_button => 'เข้าใจแล้ว';

  @override
  String get quick_reading_result_screen_quick_spread_title => 'การเปิดไพ่ด่วน';

  @override
  String get quick_reading_result_screen_new_spread_button => 'การเปิดไพ่ใหม่';

  @override
  String get quick_reading_result_screen_disclaimer =>
      'แอปใช้ปัญญาประดิษฐ์เพื่อความบันเทิงเท่านั้น เราไม่รับผิดชอบต่อการตัดสินใจของคุณ หากจำเป็นโปรดปรึกษาผู้เชี่ยวชาญ';

  @override
  String quick_reading_result_screen_prompt(Object cardName, Object userName) {
    return 'คุณเป็นนักทาโรต์ที่มีประสบการณ์ ผู้ใช้ $userName ได้เปิดไพ่ — $cardName ก่อนอื่นเขียนในบรรทัดใหม่: ตอบไพ่: และจากนั้นคำตอบหนึ่งคำ \"ใช่\" หรือ \"ไม่\" หลังจากนั้นเพิ่มคำอธิบายที่เชื่อมโยงกัน 120-150 คำ: 7-8 ประโยคเกี่ยวกับว่าทำไมพลังงานของ $cardName นำไปสู่คำตอบนี้และมันหมายความว่าอะไรสำหรับ $userName โดยส่วนตัว กล่าวถึงชื่อ $userName อย่างน้อยสองครั้ง เพิ่มอิโมจิที่เกี่ยวข้อง 1-2 ตัว หลีกเลี่ยงสัญลักษณ์ *, # และการจัดรูปแบบใดๆ เขียนในสไตล์การสนทนาที่เรียบง่าย';
  }

  @override
  String get career_finance_spread_screen_request_accepted =>
      'คำขอของคุณได้รับการยอมรับ กรุณาเปิดไพ่';

  @override
  String get career_finance_spread_screen_error_getting_value =>
      'เกิดข้อผิดพลาดในการรับค่าการเปิดไพ่ กรุณาลองอีกครั้ง';

  @override
  String get career_finance_spread_screen_what_is_career_finance =>
      'การเปิดไพ่เรื่องอาชีพและการเงินคืออะไร?';

  @override
  String get career_finance_spread_screen_career_finance_explanation =>
      'การอ่านไพ่ชุดนี้ช่วยวิเคราะห์ด้านอาชีพและการเงิน คุณจะได้รู้เกี่ยวกับโอกาส อุปสรรค และแนวโน้มการเติบโต';

  @override
  String get career_finance_spread_screen_understand_button => 'เข้าใจแล้ว';

  @override
  String get career_finance_spread_screen_learn_meaning_button => 'ดูความหมาย';

  @override
  String get career_finance_spread_screen_career_finance_title =>
      'อาชีพและการเงิน';

  @override
  String get career_finance_spread_screen_new_spread_button =>
      'ทำการอ่านไพ่ชุดใหม่';

  @override
  String get career_finance_spread_screen_disclaimer =>
      'แอปใช้ปัญญาประดิษฐ์เพื่อความบันเทิงเท่านั้น เราไม่รับผิดชอบต่อการตัดสินใจของคุณ หากจำเป็นโปรดปรึกษาผู้เชี่ยวชาญ';

  @override
  String get career_finance_spread_screen_enter_question_hint =>
      'กรอกคำถามของคุณ...';

  @override
  String get pros_cons_spread_screen_what_is_pros_cons =>
      'การอ่านไพ่ \"ข้อดีและข้อเสีย\" คืออะไร?';

  @override
  String get pros_cons_spread_screen_pros_cons_title =>
      'การอ่านไพ่ \"ข้อดีและข้อเสีย\"';

  @override
  String get pros_cons_spread_screen_enter_question_hint =>
      'กรอกคำถามของคุณ...';

  @override
  String
  get self_development_balance_spread_screen_self_development_explanation =>
      'การเปิดไพ่ \"การพัฒนาตนเองและความสมดุล\" ประกอบด้วยไพ่ 7 ใบ วางเรียงเป็นรูปวงกลม ไพ่แต่ละใบแทนแง่มุมเฉพาะของการเติบโตทางจิตวิญญาณและความสมดุลภายในของคุณ';

  @override
  String get card_meanings_screen_major_arcana => 'ไพ่ใหญ่';

  @override
  String get card_meanings_screen_wands => 'ไม้เท้า';

  @override
  String get card_meanings_screen_cups => 'ถ้วย';

  @override
  String get card_meanings_screen_swords => 'ดาบ';

  @override
  String get card_meanings_screen_pentacles => 'เหรียญ';

  @override
  String get card_meanings_screen_title => 'ความหมายของไพ่';

  @override
  String get love_spread_screen_new_spread_button => 'ทำการเปิดไพ่ใหม่';

  @override
  String get love_spread_screen_enter_question_hint => 'กรอกคำถามของคุณ...';

  @override
  String purchase_love_screen_test_stub(Object plan) {
    return 'ข้อความทดสอบ: แผนที่เลือก \"$plan\"';
  }

  @override
  String get purchase_love_screen_love_tariff_title => 'แพ็กเกจความรัก';

  @override
  String get ad_promo_block_tariff => 'แพ็กเกจ';

  @override
  String get ad_promo_block_love => 'ความรัก';

  @override
  String get ad_promo_block_promotion_70 => 'โปรโมชั่น -50%';

  @override
  String get ad_promo_block_no_ads => '• ไม่มีโฆษณา';

  @override
  String get ad_promo_block_no_limits => '• ไม่มีข้อจำกัด';

  @override
  String three_cards_screen_title(Object cards) {
    return '3 ใบในชุดไพ่';
  }

  @override
  String get three_cards_screen_initial_message =>
      'สวัสดีค่ะ กรุณาเขียนคำขอของคุณด้านล่าง:';

  @override
  String get three_cards_screen_request_accepted =>
      'คำขอของคุณได้รับแล้ว กรุณาเปิดไพ่';

  @override
  String get three_cards_screen_suggested_questions_1 =>
      'ปัญหาหลักของฉันตอนนี้คืออะไร?';

  @override
  String get three_cards_screen_suggested_questions_2 =>
      'ฉันควรให้ความสำคัญกับอะไรในอนาคตอันใกล้นี้?';

  @override
  String get three_cards_screen_suggested_questions_3 =>
      'อะไรที่ถูกซ่อนไว้จากฉัน?';

  @override
  String get three_cards_screen_see_meaning_button => 'ค้นหาความหมาย';

  @override
  String get three_cards_screen_new_spread_button => 'การแจกไพ่ใหม่';

  @override
  String get three_cards_screen_enter_question_hint => 'กรอกคำถามของคุณ...';

  @override
  String get three_cards_screen_what_is_three_cards =>
      'การเปิดไพ่ 3 ใบคืออะไร?';

  @override
  String get three_cards_screen_three_cards_explanation =>
      'การเปิดไพ่แบบคลาสสิกที่แสดงอดีต ปัจจุบัน และอนาคตของสถานการณ์ของคุณ ไพ่ใบแรกคืออดีต ใบที่สองคือปัจจุบัน ใบที่สามคืออนาคต';

  @override
  String get three_cards_screen_understand_button => 'เข้าใจแล้ว';

  @override
  String get three_cards_screen_error_getting_value =>
      'เกิดข้อผิดพลาดในการรับค่าการเปิดไพ่ กรุณาลองอีกครั้ง';

  @override
  String get three_cards_screen_disclaimer =>
      'แอปใช้ปัญญาประดิษฐ์เพื่อความบันเทิงเท่านั้น เราไม่รับผิดชอบต่อการตัดสินใจของคุณ หากจำเป็น กรุณาปรึกษาผู้เชี่ยวชาญ';

  @override
  String get five_cards_screen_title => '5 ใบในชุดไพ่';

  @override
  String get five_cards_screen_initial_message =>
      'สวัสดีค่ะ กรุณาเขียนคำขอของคุณด้านล่าง:';

  @override
  String get five_cards_screen_request_accepted =>
      'คำขอของคุณได้รับแล้ว กรุณาเปิดไพ่';

  @override
  String get five_cards_screen_suggested_questions_1 =>
      'ฉันควรเลือกเส้นทางไหน?';

  @override
  String get five_cards_screen_suggested_questions_2 =>
      'อะไรที่ขัดขวางไม่ให้ฉันบรรลุเป้าหมาย?';

  @override
  String get five_cards_screen_suggested_questions_3 =>
      'ฉันมีความสามารถอะไรบ้าง?';

  @override
  String get five_cards_screen_see_meaning_button => 'ค้นหาความหมาย';

  @override
  String get five_cards_screen_new_spread_button => 'ทำการแจกไพ่ใหม่';

  @override
  String get five_cards_screen_enter_question_hint => 'กรอกคำขอของคุณ...';

  @override
  String get five_cards_screen_what_is_five_cards => 'การแจกไพ่ 5 ใบคืออะไร?';

  @override
  String get five_cards_screen_five_cards_explanation =>
      'การเปิดไพ่ 5 ใบเป็นรูปแบบที่กะทัดรัด ซึ่งเปิดเผยห้าด้านสำคัญของสถานการณ์: อดีต ปัจจุบัน อิทธิพลที่ซ่อนอยู่ ผู้ช่วย/อุปสรรค และผลลัพธ์ที่เป็นไปได้';

  @override
  String get five_cards_screen_understand_button => 'เข้าใจแล้ว';

  @override
  String get five_cards_screen_error_getting_value =>
      'เกิดข้อผิดพลาดในการรับค่าการเปิดไพ่ กรุณาลองอีกครั้ง';

  @override
  String get five_cards_screen_disclaimer =>
      'แอปใช้ปัญญาประดิษฐ์เพื่อความบันเทิงเท่านั้น เราไม่รับผิดชอบต่อการตัดสินใจของคุณ หากจำเป็นโปรดปรึกษาผู้เชี่ยวชาญ';

  @override
  String get celtic_cross_screen_title => 'กางเขนเคลต์';

  @override
  String get celtic_cross_screen_initial_message =>
      'สวัสดีตอนบ่าย กรุณาเขียนคำขอของคุณด้านล่าง:';

  @override
  String get celtic_cross_screen_suggested_questions_1 =>
      'ปัญหาหลักของฉันตอนนี้คืออะไร?';

  @override
  String get celtic_cross_screen_suggested_questions_2 =>
      'ฉันควรให้ความสำคัญกับอะไรในอนาคตอันใกล้นี้?';

  @override
  String get celtic_cross_screen_suggested_questions_3 =>
      'อะไรที่ถูกซ่อนไว้จากฉัน?';

  @override
  String get celtic_cross_screen_see_meaning_button => 'ค้นหาความหมาย';

  @override
  String get celtic_cross_screen_new_spread_button => 'สร้างการวางไพ่ใหม่';

  @override
  String get celtic_cross_screen_enter_question_hint => 'กรอกคำขอของคุณ...';

  @override
  String get celtic_cross_screen_what_is_celtic_cross_dialog =>
      'ครอสเซลติกคืออะไร?';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_dialog =>
      '«ครอสเซลติก» คือการวางไพ่ 10 ใบที่วิเคราะห์สถานการณ์อย่างละเอียดจากทุกมุม: สถานการณ์ปัจจุบัน อุปสรรค อิทธิพลภายในและภายนอก รวมถึงพลวัตใกล้เคียงและผลลัพธ์สุดท้าย ไพ่จะถูกวางตามลำดับ:\n1 - สถานการณ์ — แก่นของคำถาม ณ ที่นี่และตอนนี้\n2 - ความท้าทาย — สิ่งที่ช่วยหรือขัดขวางความก้าวหน้า\n3 - จิตใต้สำนึก (รากฐาน) — แรงจูงใจที่ซ่อนอยู่และพลังลึก\n4 - อดีตที่ผ่านมาเมื่อเร็วๆ นี้ — เหตุการณ์ที่นำไปสู่สถานการณ์ปัจจุบัน\n5 - จิตสำนึก (เป้าหมาย) — สิ่งที่ผู้ถามให้ความสนใจในตอนนี้\n6 - อนาคตอันใกล้ — การพัฒนาที่เป็นไปได้ในสัปดาห์ข้างหน้า\n7 - «ตัวฉันเอง» — สภาพภายใน ทรัพยากร ทัศนคติต่อคำถาม\n8 - สภาพแวดล้อม — อิทธิพลของผู้คนและสถานการณ์รอบตัว\n9 - ความหวัง / ความกลัว — ความคาดหวัง ความสงสัย อารมณ์แรงกล้า\n10 - ผลลัพธ์ — ผลลัพธ์ที่เป็นไปได้หากแนวโน้มยังคงอยู่\nการวางไพ่ชุดนี้ช่วยให้เห็น «ภาพรวมใหญ่»: คุณยืนอยู่ที่ไหน สิ่งใดขัดขวางหรือช่วยเหลือ แรงกระตุ้นที่ซ่อนอยู่ทำงานอย่างไรเบื้องหลัง และทุกอย่างกำลังเคลื่อนไปทางไหน\nแผนผังการวางไพ่แสดงอยู่ในภาพด้านล่าง';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_image =>
      'assets/images/kelt.png';

  @override
  String get celtic_cross_screen_understand_button => 'เข้าใจแล้ว';

  @override
  String celtic_cross_screen_please_open_cards(Object cards) {
    return 'คำขอของคุณได้รับการยอมรับ กรุณาเปิดการ์ด';
  }

  @override
  String celtic_cross_screen_request_accepted(Object cards) {
    return 'คำขอได้รับการยอมรับ กรุณาเปิดการ์ด';
  }

  @override
  String get the_user => 'ผู้ใช้';

  @override
  String get good_day_please_write_your_question_below =>
      'สวัสดี กรุณาเขียนคำขอของคุณด้านล่าง';

  @override
  String get errorGettingSpreadMeaning =>
      'เกิดข้อผิดพลาดในการรับค่าของการเปิดไพ่ กรุณาลองอีกครั้ง';

  @override
  String get errorGettingSpreadMeaningPleaseTryAgain =>
      'เกิดข้อผิดพลาดในการรับค่าของการเปิดไพ่ กรุณาลองอีกครั้ง';

  @override
  String get seeMeaning => 'ดูความหมาย';

  @override
  String get newSpread => 'ทำการเปิดไพ่ใหม่';

  @override
  String get enterYourQuestion => 'กรุณาใส่คำถามของคุณ...';

  @override
  String get enterQuestion => 'กรอกคำถามของคุณ...';

  @override
  String makeTarotReadingFor(Object lang) {
    return 'ทำสำหรับ';
  }

  @override
  String get theUser => 'ผู้ใช้';

  @override
  String onTheseThreeCards(Object userName) {
    return 'เปิดไพ่สามใบนี้:';
  }

  @override
  String makeSelfDevelopmentAndBalanceTarotReadingFor(Object cards) {
    return 'ทำสำหรับ $cards การเปิดไพ่เพื่อการพัฒนาตนเองและความสมดุล';
  }

  @override
  String get getAnswer => 'ดูคำตอบ';

  @override
  String get aboutTheSpread => 'เกี่ยวกับการอ่านไพ่';

  @override
  String get aboutSpreadDescription =>
      'การอ่านไพ่ชุดนี้ช่วยวิเคราะห์การเติบโตทางจิตวิญญาณและความสมดุลภายในของคุณ';

  @override
  String get gotIt => 'เข้าใจแล้ว';

  @override
  String get selfDevelopmentAndBalance => 'การพัฒนาตนเองและความสมดุล';

  @override
  String get appUsageDisclaimer =>
      'แอปใช้ปัญญาประดิษฐ์เพื่อความบันเทิงเท่านั้น เราไม่รับผิดชอบต่อการตัดสินใจของคุณ หากจำเป็นโปรดปรึกษาผู้เชี่ยวชาญ';

  @override
  String get careerFinance => 'อาชีพและการเงิน';

  @override
  String get fun_spread_screen_with_swear_words_title => 'มีคำหยาบ (18+)';

  @override
  String get fun_spread_screen_with_swear_words_subtitle =>
      'สำหรับคนที่ชอบความตื่นเต้น';

  @override
  String get fun_spread_screen_without_swear_words_title => 'ไม่มีคำหยาบ';

  @override
  String get fun_spread_screen_without_swear_words_subtitle =>
      'การแจกไพ่ที่สนุกสนานโดยไม่มีคำหยาบคาย';

  @override
  String get fun_spread_screen_generating => 'กำลังสร้างการแจกไพ่ของคุณ...';

  @override
  String get card_name_the_fool => 'โง่เขลา';

  @override
  String get card_name_the_magician => 'จอมเวทย์';

  @override
  String get card_name_the_high_priestess => 'นักบวชหญิงสูงสุด';

  @override
  String get card_name_the_empress => 'จักรพรรดินี';

  @override
  String get card_name_the_emperor => 'จักรพรรดิ';

  @override
  String get card_name_the_hierophant => 'นักบวชใหญ่';

  @override
  String get card_name_the_lovers => 'คนรัก';

  @override
  String get card_name_the_chariot => 'รถม้า';

  @override
  String get card_name_strength => 'พละกำลัง';

  @override
  String get card_name_the_hermit => 'ฤๅษี';

  @override
  String get ok_button => 'ตกลง';

  @override
  String get cancel_button => 'ยกเลิก';

  @override
  String get analyzing_cards => 'กำลังวิเคราะห์ไพ่...';

  @override
  String get yes_button => 'ใช่';

  @override
  String get no_button => 'ไม่';

  @override
  String get loading => 'กำลังโหลด...';

  @override
  String get error => 'ข้อผิดพลาด';

  @override
  String get success => 'สำเร็จ';

  @override
  String get failed => 'ไม่สำเร็จ';

  @override
  String get language_russian => 'รัสเซีย';

  @override
  String get language_english_us => 'อังกฤษ (สหรัฐอเมริกา)';

  @override
  String get language_english_gb => 'อังกฤษ (สหราชอาณาจักร)';

  @override
  String get card_name_wheel_of_fortune => 'วงล้อแห่งโชคชะตา';

  @override
  String get card_name_justice => 'ความยุติธรรม';

  @override
  String get card_name_the_hanged_man => 'คนแขวนคอ';

  @override
  String get card_name_death => 'ความตาย';

  @override
  String get card_name_temperance => 'ความพอประมาณ';

  @override
  String get card_name_the_devil => 'ปีศาจ';

  @override
  String get card_name_the_tower => 'หอคอย';

  @override
  String get card_name_the_star => 'ดาว';

  @override
  String get card_name_the_moon => 'พระจันทร์';

  @override
  String get card_name_the_sun => 'พระอาทิตย์';

  @override
  String get card_name_judgement => 'การพิพากษา';

  @override
  String get card_name_the_world => 'โลก';

  @override
  String get card_name_ace_of_wands => 'เอซไม้เท้า';

  @override
  String get card_name_two_of_wands => 'สองไม้เท้า';

  @override
  String get card_name_three_of_wands => 'สามไม้เท้า';

  @override
  String get card_name_four_of_wands => 'สี่ไม้เท้า';

  @override
  String get card_name_five_of_wands => 'ห้าไม้เท้า';

  @override
  String get card_name_six_of_wands => 'หกไม้เท้า';

  @override
  String get card_name_seven_of_wands => 'เจ็ดไม้เท้า';

  @override
  String get card_name_eight_of_wands => 'แปดไม้เท้า';

  @override
  String get card_name_nine_of_wands => 'เก้าไม้เท้า';

  @override
  String get card_name_ten_of_wands => 'สิบไม้เท้า';

  @override
  String get card_name_page_of_wands => 'เด็กถือไม้เท้า';

  @override
  String get card_name_knight_of_wands => 'อัศวินถือไม้เท้า';

  @override
  String get card_name_queen_of_wands => 'ราชินีถือไม้เท้า';

  @override
  String get card_name_king_of_wands => 'ราชาถือไม้เท้า';

  @override
  String get card_name_ace_of_cups => 'เอซถ้วย';

  @override
  String get card_name_two_of_cups => 'สองถ้วย';

  @override
  String get card_name_three_of_cups => 'สามถ้วย';

  @override
  String get card_name_four_of_cups => 'สี่ถ้วย';

  @override
  String get card_name_five_of_cups => 'ห้าถ้วย';

  @override
  String get card_name_six_of_cups => 'หกถ้วย';

  @override
  String get card_name_seven_of_cups => 'เจ็ดถ้วย';

  @override
  String get card_name_eight_of_cups => 'แปดถ้วย';

  @override
  String get card_name_nine_of_cups => 'เก้าถ้วย';

  @override
  String get card_name_ten_of_cups => 'สิบถ้วย';

  @override
  String get card_name_page_of_cups => 'เพจถ้วย';

  @override
  String get card_name_knight_of_cups => 'อัศวินถ้วย';

  @override
  String get card_name_queen_of_cups => 'ราชินีถ้วย';

  @override
  String get card_name_king_of_cups => 'ราชาถ้วย';

  @override
  String get card_name_ace_of_swords => 'เอซดาบ';

  @override
  String get card_name_two_of_swords => 'สองดาบ';

  @override
  String get card_name_three_of_swords => 'สามดาบ';

  @override
  String get card_name_four_of_swords => 'สี่ดาบ';

  @override
  String get card_name_five_of_swords => 'ห้าดาบ';

  @override
  String get card_name_six_of_swords => 'หกดาบ';

  @override
  String get card_name_seven_of_swords => 'เจ็ดดาบ';

  @override
  String get card_name_eight_of_swords => 'แปดดาบ';

  @override
  String get card_name_nine_of_swords => 'เก้าดาบ';

  @override
  String get card_name_ten_of_swords => 'สิบดาบ';

  @override
  String get card_name_page_of_swords => 'เพจดาบ';

  @override
  String get card_name_knight_of_swords => 'อัศวินดาบ';

  @override
  String get card_name_queen_of_swords => 'ราชินีดาบ';

  @override
  String get card_name_king_of_swords => 'ราชาดาบ';

  @override
  String get card_name_ace_of_pentacles => 'เอซเหรียญ';

  @override
  String get card_name_two_of_pentacles => 'สองเหรียญ';

  @override
  String get card_name_three_of_pentacles => 'สามเหรียญ';

  @override
  String get card_name_four_of_pentacles => 'สี่เหรียญ';

  @override
  String get card_name_five_of_pentacles => 'ห้าเหรียญ';

  @override
  String get card_name_six_of_pentacles => 'หกเหรียญ';

  @override
  String get card_name_seven_of_pentacles => 'เจ็ดเหรียญ';

  @override
  String get card_name_eight_of_pentacles => 'แปดเหรียญ';

  @override
  String get card_name_nine_of_pentacles => 'เก้าเหรียญ';

  @override
  String get card_name_ten_of_pentacles => 'สิบเหรียญ';

  @override
  String get card_name_page_of_pentacles => 'เพจเหรียญ';

  @override
  String get card_name_knight_of_pentacles => 'อัศวินเหรียญ';

  @override
  String get card_name_queen_of_pentacles => 'ราชินีเหรียญ';

  @override
  String get card_name_king_of_pentacles => 'ราชาแห่งเหรียญ';

  @override
  String get quick_reading_screen_suggested_questions_1 =>
      'ฉันควรทำสิ่งนี้ไหม?';

  @override
  String get quick_reading_screen_suggested_questions_2 =>
      'นี่คือทางที่ถูกต้องหรือไม่?';

  @override
  String get quick_reading_screen_suggested_questions_3 =>
      'ฉันต้องรู้อะไรบ้าง?';

  @override
  String get monthly_forecast_spread_screen_see_meaning_button =>
      'ค้นหาความหมาย';

  @override
  String get monthly_forecast_spread_screen_new_spread_button =>
      'สร้างการอ่านไพ่ใหม่';

  @override
  String get monthly_forecast_spread_screen_enter_question_hint =>
      'กรอกคำขอของคุณ...';

  @override
  String get monthly_forecast_spread_screen_what_is_monthly_forecast =>
      'การทำนายรายเดือนคืออะไร?';

  @override
  String get monthly_forecast_spread_screen_monthly_forecast_explanation =>
      'การทำนายรายเดือนแสดงเหตุการณ์สำคัญและแนวโน้มในเดือนถัดไป ช่วยให้เตรียมตัวรับการเปลี่ยนแปลงและใช้โอกาสได้';

  @override
  String get monthly_forecast_spread_screen_understand_button => 'เข้าใจแล้ว';

  @override
  String get monthly_forecast_spread_screen_error_getting_value =>
      'เกิดข้อผิดพลาดในการรับค่าการเปิดไพ่ กรุณาลองอีกครั้ง';

  @override
  String get monthly_forecast_spread_screen_disclaimer =>
      'แอปใช้ปัญญาประดิษฐ์เพื่อความบันเทิงเท่านั้น เราไม่รับผิดชอบต่อการตัดสินใจของคุณ หากจำเป็นโปรดปรึกษาผู้เชี่ยวชาญ';

  @override
  String self_development_balance_spread_screen_prompt(
    Object cards,
    Object userName,
  ) {
    return 'ทำการเปิดไพ่เพื่อการพัฒนาและสมดุลให้กับ $userName ด้วยไพ่สามใบนี้: $cards';
  }

  @override
  String get error_getting_answer_try_again =>
      'ข้อผิดพลาด: ไม่สามารถรับคำตอบได้ กรุณาลองอีกครั้ง';

  @override
  String get card_detail_screen_title => 'รายละเอียดของไพ่';

  @override
  String get card_detail_screen_general_meaning => 'ความหมายโดยรวม';

  @override
  String get card_detail_screen_reversed_meaning => 'ความหมายกลับหัว';

  @override
  String get card_detail_screen_symbolism => 'สัญลักษณ์';

  @override
  String get card_detail_screen_error_loading_text =>
      'เกิดข้อผิดพลาดในการโหลดข้อความ';

  @override
  String card_detail_screen_general_meaning_prompt(
    Object cardName,
    Object lang,
  ) {
    return 'อธิบายความหมายโดยรวมของไพ่ทาโรต์ \"$cardName\" ในภาษา $lang รวมถึงประวัติ สัญลักษณ์ และความหมายหลัก ๆ ด้วย';
  }

  @override
  String card_detail_screen_reversed_meaning_prompt(
    Object cardName,
    Object lang,
  ) {
    return 'อธิบายความหมายกลับหัวของไพ่ทาโรต์ \"$cardName\" ในภาษา $lang รวมถึงความหมายตรงข้ามและคำเตือน';
  }

  @override
  String card_detail_screen_symbolism_prompt(Object cardName, Object lang) {
    return 'อธิบายสัญลักษณ์ของไพ่ทาโรต์ \"$cardName\" ในภาษา $lang รวมถึงรายละเอียดของภาพ สี และความหมายของสีเหล่านั้น';
  }

  @override
  String card_detail_screen_description(Object cardName) {
    return 'คำอธิบายไพ่ $cardName';
  }

  @override
  String get card_detail_screen_see_other_card_meaning =>
      'ดูความหมายของไพ่อื่น';

  @override
  String get card_detail_screen_or => 'หรือ';

  @override
  String get card_detail_screen_loading_language => 'กำลังโหลดภาษา...';

  @override
  String get card_detail_screen_see_card_meaning => 'ดูความหมายของไพ่';

  @override
  String get card_detail_screen_original_waite_text => 'ข้อความต้นฉบับของ Wait';

  @override
  String get card_detail_screen_no_original_text => 'ไม่มีข้อความต้นฉบับ';

  @override
  String card_of_the_day_screen_translate_card_name_prompt(
    Object cardName,
    Object languageCode,
  ) {
    return 'แปลชื่อไพ่ทาโรต์ \"$cardName\" เป็น $languageCode คำตอบต้องมีเพียงชื่อที่แปลแล้วเท่านั้น ไม่มีข้อความหรือเครื่องหมายวรรคตอนเพิ่มเติม';
  }

  @override
  String card_of_the_day_screen_generate_description_prompt(
    Object cardName,
    Object name,
  ) {
    return 'คุณเป็นนักโหราศาสตร์มืออาชีพ เขียนข้อความสร้างแรงบันดาลใจ “ไพ่ประจำวัน” ในภาษาของคำขอนี้สำหรับผู้ใช้ $name รักษาโครงสร้างและความยาวข้อความ\n🌟 $name ไพ่ประจำวันของคุณคือ $cardName!\n🔑 คำสำคัญ: <ระบุคำสำคัญสั้น ๆ 3–5 คำ>\n🃏 ความหมาย (≈45–50 คำ): อธิบายพลังงานหลักของไพ่และวิธีที่มันจะปรากฏในวันนี้สำหรับ $name\n💡 คำแนะนำ (≈35–40 คำ): เสนอการกระทำหรือทัศนคติที่ช่วยให้ $name ใช้พลังงานนี้ได้อย่างเต็มที่\n✨ คำยืนยัน (1 บรรทัด): ข้อความเชิงบวกที่เริ่มต้นด้วย “ฉัน…”\nข้อกำหนด: ความยาวรวม 120–150 คำ โทนอุ่นและลึกลับ ใช้อีโมจิ 3–4 ตัวที่เกี่ยวข้อง หลีกเลี่ยงรายการในรูปแบบ HTML/Markdown; แบ่งย่อหน้าด้วยการขึ้นบรรทัดใหม่สองครั้ง (\\n\\n)';
  }

  @override
  String get card_of_the_day_screen_title => 'ไพ่ประจำวัน';

  @override
  String get card_of_the_day_screen_error_loading_card =>
      'เกิดข้อผิดพลาดในการโหลดไพ่';

  @override
  String career_finance_spread_screen_prompt(Object cards, Object userName) {
    return 'ทำการเปิดไพ่เกี่ยวกับอาชีพและการเงินสำหรับ $userName ด้วยไพ่สามใบนี้: $cards';
  }

  @override
  String get contact_us_title => 'ติดต่อเรา';

  @override
  String get contact_us_email_hint => 'อีเมลของคุณ';

  @override
  String get contact_us_email_empty => 'กรอกอีเมล';

  @override
  String get contact_us_email_invalid => 'อีเมลไม่ถูกต้อง';

  @override
  String get contact_us_message_hint => 'ข้อความของคุณ';

  @override
  String get contact_us_message_empty => 'กรอกข้อความ';

  @override
  String get contact_us_send_button => 'ส่ง';

  @override
  String get five_cards_spread_screen_what_is_five_cards_dialog =>
      'การวางไพ่ 5 ใบคืออะไร?';

  @override
  String get five_cards_spread_screen_five_cards_explanation_dialog =>
      'การวางไพ่ชุดนี้เปิดเผยเส้นทางทั้งหมดของคำถามของคุณ:\nไพ่ใบที่ 1 - อดีต แสดงสถานการณ์เริ่มต้น,\nไพ่ใบที่ 2 - ปัจจุบัน — พลังงานปัจจุบัน,\nไพ่ใบที่ 3 - สิ่งที่ซ่อนเร้น เผยอิทธิพลที่ซ่อนอยู่,\nไพ่ใบที่ 4 - คำแนะนำ บอกแนวทางการกระทำที่เหมาะสม,\nไพ่ใบที่ 5 - ผลลัพธ์ ทำนายผลลัพธ์ที่เป็นไปได้';

  @override
  String get five_cards_spread_screen_understand_button => 'เข้าใจแล้ว';

  @override
  String get language_selection_screen_title => 'ภาษา';

  @override
  String get love_spread_screen_what_is_love_spread =>
      'การอ่านไพ่ความรักคืออะไร?';

  @override
  String get love_spread_screen_love_spread_explanation =>
      'ไพ่ความรักทริปเปิลคือไพ่สามใบที่วางจากซ้ายไปขวา:\nไพ่ใบที่ 1 - คุณ — แสดงความรู้สึก แรงจูงใจ และท่าทีของผู้ถามไพ่เอง\nไพ่ใบที่ 2 - คู่รัก — เปิดเผยอารมณ์ แผนการ และความพร้อมของอีกฝ่าย\nไพ่ใบที่ 3 - พลวัต / ศักยภาพ — บรรยายว่าพลังงานทั้งสองมีปฏิสัมพันธ์กันอย่างไรในตอนนี้และความสัมพันธ์อาจนำไปสู่สิ่งใดในอนาคตอันใกล้';

  @override
  String get love_spread_screen_understand_button => 'เข้าใจแล้ว';

  @override
  String get main_screen_your_plan_trial => 'แผนของคุณ: ทดลองใช้ (มีโฆษณา)';

  @override
  String get main_screen_no_ads => '• ไม่มีโฆษณา';

  @override
  String get main_screen_no_limits => '• ไม่มีข้อจำกัด';

  @override
  String get main_screen_shop_soon => 'ร้านค้า (เร็วๆ นี้)';

  @override
  String get main_screen_notification_settings => 'การตั้งค่าการแจ้งเตือน';

  @override
  String get main_screen_language_selection => 'การเลือกภาษา';

  @override
  String get main_screen_rate_app => 'ให้คะแนนแอปพลิเคชัน';

  @override
  String get main_screen_contact_us => 'ติดต่อเรา';

  @override
  String get main_screen_classic_spreads_title => 'การแจกไพ่แบบคลาสสิก';

  @override
  String get main_screen_classic_spreads_description =>
      'การแจกไพ่ 2 / 3 / 5 ใบ และการแจกไพ่กางเขนเคลต์แบบเต็มรูปแบบ';

  @override
  String get main_screen_card_meanings_title => 'ความหมายของไพ่';

  @override
  String get main_screen_card_meanings_description =>
      'คู่มือฉบับสมบูรณ์ของความหมายไพ่ที่ตั้งตรงและคว่ำของไพ่เมเจอร์และไมเนอร์ทั้งหมด';

  @override
  String get main_screen_card_combination_description =>
      '\"เครื่องคิดเลขทาโร่\" เลือกไพ่และรับการวิเคราะห์ความสัมพันธ์อย่างลึกซึ้ง';

  @override
  String get notification_settings_screen_title => 'การตั้งค่าการแจ้งเตือน';

  @override
  String get notification_settings_screen_frequency_question =>
      'คุณต้องการรับการแจ้งเตือนไพ่ประจำวันบ่อยแค่ไหน?';

  @override
  String get notification_settings_screen_every_day => 'ทุกวัน';

  @override
  String get notification_settings_screen_every_three_days => 'ทุกสามวัน';

  @override
  String get notification_settings_screen_every_week => 'สัปดาห์ละครั้ง';

  @override
  String get notification_settings_screen_time_question => 'ช่วงเวลาใดของวัน?';

  @override
  String get notification_settings_screen_morning => 'ตอนเช้า';

  @override
  String get notification_settings_screen_day => 'ตอนกลางวัน';

  @override
  String get notification_settings_screen_evening => 'ตอนเย็น';

  @override
  String get notification_settings_screen_save_button => 'บันทึก';

  @override
  String get onboarding_final_screen_yearly_price => '249/ปี';

  @override
  String get onboarding_final_screen_yearly_month_price => '24/เดือน';

  @override
  String get onboarding_final_screen_monthly_price => '9/เดือน';

  @override
  String get onboarding_final_screen_monthly_month_price => '9/เดือน';

  @override
  String get onboarding_final_screen_yearly_plan => 'รายปี';

  @override
  String get onboarding_final_screen_free_trial => 'ทดลองใช้ฟรี 7 วัน';

  @override
  String get onboarding_final_screen_purchase_title => 'ซื้อ';

  @override
  String onboarding_final_screen_test_stub_message(Object plan) {
    return 'ตัวอย่างทดสอบ: แผนที่เลือก \"$plan\"';
  }

  @override
  String get onboarding_final_screen_ok_button => 'ตกลง';

  @override
  String get purchase_love_screen_yearly_price => '249/ปี';

  @override
  String get purchase_love_screen_yearly_month_price => '24/เดือน';

  @override
  String get purchase_love_screen_monthly_price => '9/เดือน';

  @override
  String get purchase_love_screen_monthly_month_price => '9/เดือน';

  @override
  String get purchase_love_screen_title => 'ซื้อ';

  @override
  String get purchase_love_screen_ok_button => 'ตกลง';

  @override
  String quick_reading_screen_error_no_image_file_found(Object cardName) {
    return 'ข้อผิดพลาด: ไม่พบไฟล์รูปภาพสำหรับการ์ด: $cardName';
  }

  @override
  String get please_fill_all_fields => 'กรุณากรอกข้อมูลในช่องการ์ดทั้งหมด';

  @override
  String get please_select_cards_only_from_suggested_list =>
      'กรุณาเลือกการ์ดเฉพาะจากรายการที่เสนอ การ์ดที่ไม่ถูกต้อง:';

  @override
  String get please_select_different_cards_in_all_fields =>
      'กรุณาเลือกการ์ดที่แตกต่างกันในทุกช่องข้อมูล';

  @override
  String get card => 'ไพ่';

  @override
  String get get_combination => 'ค้นหาการจับคู่';

  @override
  String get new_spread => 'ทำการแจกไพ่ใหม่';

  @override
  String get app_uses_ai_for_entertainment_purposes =>
      'แอปใช้ปัญญาประดิษฐ์เพื่อความบันเทิงเท่านั้น เราไม่รับผิดชอบต่อการตัดสินใจของคุณ หากจำเป็นโปรดปรึกษาผู้เชี่ยวชาญ';

  @override
  String get career_finance_spread_screen_what_is_career_finance_spread =>
      'การแจกไพ่เรื่องอาชีพและการเงินคืออะไร?';

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
    return 'คุณเป็นนักทาโรต์ที่มีประสบการณ์ ผู้ใช้ $userName ถามว่า: \"$userQuestion\" โปรดตอบด้วยการอ่านไพ่แบบ \"กางเขนเคลต์\" (รูปแบบคลาสสิกของเวท) ไพ่ถูกแจกดังนี้: สถานการณ์ - $situationCard; ความท้าทาย - $challengeCard; จิตใต้สำนึก - $subconsciousCard; อดีตที่ผ่านมาเมื่อไม่นานนี้ - $pastCard; จิตสำนึก - $consciousCard; อนาคตอันใกล้ - $hiddenCard; ตัวตนภายใน - $selfCard; สิ่งแวดล้อม - $environmentCard; ความหวังหรือความกลัว - $hopesCard; ผลลัพธ์ - $outcomeCard โปรดกล่าวถึงชื่อ $userName อย่างน้อยหกครั้งและเชื่อมโยงไพ่แต่ละใบกับคำถาม รักษาโครงสร้างดังนี้:\n1) ทักทายชื่อ $userName\n2) หัวข้อ: การอ่านไพ่: สถานการณ์ ($situationCard) / ความท้าทาย ($challengeCard) / จิตใต้สำนึก ($subconsciousCard) / อดีตที่ผ่านมาเมื่อไม่นานนี้ ($pastCard) / จิตสำนึก ($consciousCard) / อนาคตอันใกล้ ($hiddenCard) / ตัวตนภายใน ($selfCard) / สิ่งแวดล้อม ($environmentCard) / ความหวัง/ความกลัว ($hopesCard) / ผลลัพธ์ ($outcomeCard)\n3) สถานการณ์ — $situationCard (45-55 คำ): คำสำคัญสามคำ สัญลักษณ์ของไพ่ และสถานการณ์ปัจจุบันเกี่ยวกับคำถาม $userQuestion สำหรับ $userName\n4) ความท้าทาย — $challengeCard (45-55 คำ): อุปสรรคหลักหรือความช่วยเหลือสำหรับ $userName\n5) จิตใต้สำนึก — $subconsciousCard (45-55 คำ): แรงจูงใจหรือพลังที่ซ่อนเร้นซึ่งมีผลต่อ $userName\n6) อดีตที่ผ่านมาเมื่อไม่นานนี้ — $pastCard (45-55 คำ): เหตุการณ์ที่นำ $userName มาสู่สถานการณ์ปัจจุบัน\n7) จิตสำนึก — $consciousCard (45-55 คำ): เป้าหมาย ความคาดหวัง หรือสิ่งที่ $userName รับรู้\n8) อนาคตอันใกล้ — $hiddenCard (45-55 คำ): การพัฒนาอย่างเป็นไปได้ในสัปดาห์ข้างหน้า\n9) ตัวตนภายใน — $selfCard (45-55 คำ): สภาพจิตใจและทรัพยากรของ $userName\n10) สิ่งแวดล้อม — $environmentCard (45-55 คำ): อิทธิพลจากผู้คนและสถานการณ์รอบตัว\n11) ความหวัง / ความกลัว — $hopesCard (45-55 คำ): ความคาดหวังหรือความกังวลของ $userName\n12) ผลลัพธ์ — $outcomeCard (45-55 คำ): ผลลัพธ์ที่เป็นไปได้โดยพิจารณาจากคำแนะนำของการอ่านไพ่\n13) สรุป: การสนับสนุนอย่างเป็นมิตรและคำยืนยันเชิงบวก (30-35 คำ) สำหรับ $userName\nคำแนะนำ: ความยาวรวม 400-500 คำ น้ำเสียงสนทนาเป็นกันเอง มีอิโมจิทางลึกลับ 4-6 ตัว แต่ละส่วนแยกด้วยบรรทัดว่างสองบรรทัด (\n) หลีกเลี่ยงการใช้สัญลักษณ์ *, # หรือการจัดรูปแบบอื่นๆ เขียนเป็นข้อความธรรมดาเท่านั้น';
  }

  @override
  String get celtic_cross_screen_unable_to_load_card => 'ไม่สามารถโหลดไพ่ได้';

  @override
  String get celticCrossTitle => 'กางเขนเคลต์';

  @override
  String get chat_with_tarot_reader_screen_request_received =>
      'คำขอของคุณได้รับแล้ว กรุณาเปิดไพ่';

  @override
  String chat_with_tarot_reader_screen_prompt(
    Object hiddenCard,
    Object pastCard,
    Object presentCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'คุณเป็นนักทาโรต์ที่มีประสบการณ์ ผู้ใช้ $userName ถามว่า: \"$userQuestion\" โปรดตอบด้วยการอ่านไพ่แบบ \"อดีต - ปัจจุบัน - อนาคต\" ไพ่ถูกแจกดังนี้: อดีต - $pastCard; ปัจจุบัน - $presentCard; อนาคต - $hiddenCard โปรดกล่าวถึงชื่อ $userName อย่างน้อยสี่ครั้งและเชื่อมโยงความหมายของไพ่กับคำถาม รักษาโครงสร้างดังนี้:\n1) ทักทายชื่อ $userName\n2) หัวข้อ: การอ่านไพ่: อดีต ($pastCard) - ปัจจุบัน ($presentCard) - อนาคต ($hiddenCard)\n3) ส่วนอดีต — $pastCard (40-50 คำ): คำสำคัญสามคำ สัญลักษณ์ของไพ่ และคำอธิบายว่าเหตุการณ์ในอดีตมีผลต่อผลลัพธ์ของคำถาม $userQuestion สำหรับ $userName อย่างไร\n4) ส่วนปัจจุบัน — $presentCard (40-50 คำ): คำสำคัญ สัญลักษณ์ของไพ่ และปัจจัยปัจจุบันที่มีผลต่อคำตอบของคำถาม $userQuestion\n5) ส่วนอนาคต — $hiddenCard (40-50 คำ): คำสำคัญ สัญลักษณ์ของไพ่ และสถานการณ์ที่อาจเกิดขึ้นในอนาคตเกี่ยวกับคำถามของ $userName\n6) สรุป: คำแนะนำสั้นๆ คำยืนยันเชิงบวก (20-30 คำ) และสรุปโอกาสอย่างชัดเจน\nคำแนะนำ: ความยาวรวม 180-220 คำ น้ำเสียงอบอุ่นและลึกลับ มีอิโมจิธีม 3-5 ตัว แต่ละส่วนแยกด้วยบรรทัดว่างสองบรรทัด (\n) หลีกเลี่ยงการใช้สัญลักษณ์ *, # หรือการจัดรูปแบบอื่นๆ เขียนเป็นข้อความธรรมดาเท่านั้น';
  }

  @override
  String get see_meaning_button => 'ค้นหาความหมาย';

  @override
  String three_cards_title(Object cards) {
    return '3 ใบในชุดไพ่';
  }

  @override
  String get new_spread_button => 'ทำชุดไพ่ใหม่';

  @override
  String get disclaimer_text =>
      'แอปใช้ปัญญาประดิษฐ์เพื่อความบันเทิงเท่านั้น เราไม่รับผิดชอบต่อการตัดสินใจของคุณ หากจำเป็นโปรดปรึกษาผู้เชี่ยวชาญ';

  @override
  String get enter_your_question => 'กรอกคำถามของคุณ...';

  @override
  String get classic_spreads_screen_title => 'การวางไพ่แบบคลาสสิก';

  @override
  String get classic_spreads_screen_three_cards_title => '3 ใบ';

  @override
  String get classic_spreads_screen_three_cards_description =>
      'อดีต ปัจจุบัน อนาคต';

  @override
  String get classic_spreads_screen_five_cards_title => '5 ใบ';

  @override
  String get classic_spreads_screen_five_cards_description =>
      'การวิเคราะห์สถานการณ์อย่างลึกซึ้ง';

  @override
  String get classic_spreads_screen_celtic_cross_title => 'กางเขนครอสเซลติก';

  @override
  String get classic_spreads_screen_celtic_cross_description =>
      'การเปิดไพ่ครบ 10 ใบ';

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
    return 'คุณเป็นนักอ่านไพ่ทาโรต์ที่มีประสบการณ์ ผู้ใช้ $userName ถามว่า: \"$userQuestion\". ตอบโดยใช้การวางไพ่ \"5 ใบ\" ไพ่จะถูกให้ตามลำดับ: อดีต - $pastCard; ปัจจุบัน - $presentCard; ซ่อนเร้น - $hiddenCard; คำแนะนำ - $adviceCard; ผลลัพธ์ - $outcomeCard อ้างอิงถึง $userName อย่างน้อยห้าครั้งและให้แน่ใจว่าคุณเชื่อมโยงไพ่แต่ละใบกับคำถาม ตามโครงสร้าง:\n\n1) ทักทายด้วยชื่อ $userName\n\n2) หัวข้อ: การวางไพ่: อดีต ($pastCard) / ปัจจุบัน ($presentCard) / ซ่อนเร้น ($hiddenCard) / คำแนะนำ ($adviceCard) / ผลลัพธ์ ($outcomeCard)\n\n3) อดีต — $pastCard (45-55 คำ): คำสำคัญสามคำ, สัญลักษณ์ของไพ่ และอิทธิพลของอดีตต่อ $userQuestion สำหรับ $userName\n\n4) ปัจจุบัน — $presentCard (45-55 คำ): คำสำคัญ, สัญลักษณ์ และสถานะปัจจุบันของคำถามของ $userName\n\n5) ซ่อนเร้น — $hiddenCard (45-55 คำ): สิ่งที่ส่งผลต่อสถานการณ์ของ $userName โดยไม่รู้ตัว โดยเน้นที่สัญลักษณ์\n\n6) คำแนะนำ — $adviceCard (45-55 คำ): การกระทำที่ปฏิบัติได้จริงสำหรับ $userName โดยอิงจากภาพของไพ่\n\n7) ผลลัพธ์ — $outcomeCard (45-55 คำ): สถานการณ์ที่เป็นไปได้หากปฏิบัติตามคำแนะนำ โดยกล่าวถึง $userName\n\n8) สรุป: การสนับสนุนที่เป็นมิตรและการยืนยันเชิงบวก (25-30 คำ) สำหรับ $userName\n\nข้อกำหนด: ปริมาณรวม 230-260 คำ, น้ำเสียงสนทนาที่มีชีวิตชีวา, อิโมจิลึกลับ 3-5 ตัว; แยกแต่ละบล็อกด้วยการขึ้นบรรทัดใหม่สองครั้ง (\\n\\n); อย่าใช้สัญลักษณ์ *, # หรือมาร์กอัปอื่นๆ; เขียนเฉพาะข้อความธรรมดา';
  }

  @override
  String get fiveCardsInSpread => '5 ใบในการเปิดไพ่';

  @override
  String get makeNewSpread => 'ทำการเปิดไพ่ใหม่';

  @override
  String
  get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMake =>
      'Приложение использует ИИ исключительно в развлекательных целях. Мы не несем ответственности за принятые вами решения. При необходимости обратитесь к специалисту.';

  @override
  String get requestReceivedPleaseOpenCards =>
      'คำขอของคุณได้รับการยอมรับ กรุณาเปิดไพ่';

  @override
  String love_spread_prompt(
    Object dynamicCard,
    Object partnerCard,
    Object userName,
    Object userQuestion,
    Object youCard,
  ) {
    return 'คุณเป็นนักทาโรต์ที่มีประสบการณ์ ผู้ใช้ $userName ถามว่า: «$userQuestion» โปรดตอบโดยใช้การเปิดไพ่รักสามใบ ไพ่ถูกแจกดังนี้: ความรู้สึกของ $userName — $youCard; ความรู้สึกของคู่รัก — $partnerCard; พลวัตหรือศักยภาพของความสัมพันธ์ — $dynamicCard โปรดกล่าวถึงชื่อ $userName อย่างน้อยสามครั้งและเชื่อมโยงแต่ละไพ่กับคำถาม รักษาโครงสร้างดังนี้:\n1) ทักทายโดยใช้ชื่อ $userName\n2) หัวข้อ: การเปิดไพ่: $youCard | $partnerCard | $dynamicCard\n3) $youCard — 40–50 คำ: อธิบายว่าไพ่ใบนี้บอกอะไรเกี่ยวกับความรู้สึกและความคาดหวังของ $userName\n4) $partnerCard — 40–50 คำ: เปิดเผยอารมณ์และเจตนาของคู่รักที่มีต่อคำถามของ $userName\n5) $dynamicCard — 40–50 คำ: แสดงให้เห็นว่าพลังงานทั้งสองนี้โต้ตอบกันอย่างไรและความสัมพันธ์อาจนำไปสู่สิ่งใด\n6) สรุป: คำแนะนำอบอุ่นใจและคำยืนยันในเชิงบวก (20–25 คำ) สำหรับ $userName\nข้อกำหนด: ความยาวรวม 150–180 คำ น้ำเสียงเป็นมิตรและโรแมนติก ใช้อีโมจิธีม 2–4 ตัว; เว้นบรรทัดวรรคสองครั้ง (\\n\\n); หลีกเลี่ยงสัญลักษณ์ *, # และการจัดรูปแบบใดๆ';
  }

  @override
  String get loveSpread => 'การเปิดไพ่รัก';

  @override
  String
  get applicationUsesAIExclusivelyForEntertainmentWeDoNotTakeResponsibilityForDecisionsYouHaveMadeIfNeededPleaseConsultSpecialist =>
      'แอปใช้ปัญญาประดิษฐ์เพื่อความบันเทิงเท่านั้น เราไม่รับผิดชอบต่อการตัดสินใจของคุณ หากจำเป็นโปรดปรึกษาผู้เชี่ยวชาญ';

  @override
  String main_screen_greeting_with_name(Object name) {
    return 'สวัสดี, $name';
  }

  @override
  String get main_screen_monday => 'วันจันทร์';

  @override
  String get main_screen_tuesday => 'วันอังคาร';

  @override
  String get main_screen_wednesday => 'วันพุธ';

  @override
  String get main_screen_thursday => 'วันพฤหัสบดี';

  @override
  String get main_screen_friday => 'วันศุกร์';

  @override
  String get main_screen_saturday => 'วันเสาร์';

  @override
  String get main_screen_sunday => 'วันอาทิตย์';

  @override
  String get main_screen_your_card_of_the_day => 'ไพ่ของคุณในวันนี้';

  @override
  String main_screen_card_of_the_day_with_name(Object cardName) {
    return 'ไพ่ประจำวัน: $cardName';
  }

  @override
  String get main_screen_card_of_the_day => 'ไพ่ประจำวัน:';

  @override
  String get main_screen_viewed => 'เปิดอยู่';

  @override
  String get main_screen_not_viewed => 'ดู';

  @override
  String get main_screen_spreads => 'การแจกไพ่';

  @override
  String get main_screen_training => 'การฝึกอบรม';

  @override
  String get main_screen_entertainment => 'ความบันเทิง';

  @override
  String get main_screen_glad_to_see_you_here => 'ดีใจที่ได้พบคุณที่นี่!';

  @override
  String get main_screen_quick_reading_title => 'การเปิดไพ่รวดเร็ว';

  @override
  String get main_screen_quick_reading_description =>
      'เพียงไม่กี่สัมผัส รับคำตอบที่ชัดเจนสำหรับคำถามของคุณด้วยไพ่ใบเดียว';

  @override
  String get monthly_forecast_spread_screen_request_accepted =>
      'คำขอของคุณได้รับการยอมรับ กรุณาเปิดไพ่';

  @override
  String monthly_forecast_spread_screen_prompt(Object cards, Object userName) {
    return 'ทำพยากรณ์รายเดือนสำหรับ $userName จากไพ่เหล่านี้: $cards';
  }

  @override
  String get aboutSpread => 'เกี่ยวกับการแจกไพ่';

  @override
  String get monthlyForecast => 'พยากรณ์รายเดือน';

  @override
  String
  get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNecessaryPleaseConsultSpecialist =>
      'แอปใช้ปัญญาประดิษฐ์เพื่อความบันเทิงเท่านั้น เราไม่รับผิดชอบต่อการตัดสินใจของคุณ หากจำเป็นโปรดปรึกษาผู้เชี่ยวชาญ';

  @override
  String purchase_love_screen_test_message(Object planName) {
    return 'ข้อความทดสอบ: เลือกแผน \"$planName\"';
  }

  @override
  String get quick_reading_screen_what_is_quick_reading =>
      'การเปิดไพ่แบบด่วนคืออะไร?';

  @override
  String get quick_reading_screen_quick_reading_explanation =>
      'การเปิดไพ่แบบด่วนคือการเปิดไพ่แบบเร่งด่วน (คำตอบ: ใช่ หรือ ไม่) ที่ช่วยให้ได้รับคำตอบที่ชัดเจนทันทีสำหรับคำถามเฉพาะหรือบรรยากาศทั่วไปของวัน เหมาะอย่างยิ่งเมื่อคุณต้องการแรงบันดาลใจหรือคำแนะนำอย่างรวดเร็ว \"ที่นี่และตอนนี้\"';

  @override
  String get self_development_balance_spread_screen_request_accepted =>
      'คำขอของคุณได้รับการยอมรับแล้ว กรุณาเปิดไพ่';

  @override
  String get self_development_balance_spread_screen_error_getting_value =>
      'เกิดข้อผิดพลาดในการรับค่าการเปิดไพ่ กรุณาลองอีกครั้ง';

  @override
  String
  get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNeededConsultSpecialist =>
      'แอปพลิเคชันใช้ปัญญาประดิษฐ์เพื่อความบันเทิงเท่านั้น เราไม่รับผิดชอบต่อการตัดสินใจที่คุณทำ หากจำเป็นโปรดปรึกษาผู้เชี่ยวชาญ';

  @override
  String get thematic_spreads_screen_title => 'การวางไพ่ตามหัวข้อ';

  @override
  String get thematic_spreads_screen_love_spread_title => 'การวางไพ่ความรัก';

  @override
  String get thematic_spreads_screen_love_spread_description =>
      'การวิเคราะห์ความสัมพันธ์และความรู้สึก';

  @override
  String get thematic_spreads_screen_career_finance_title => 'อาชีพและการเงิน';

  @override
  String get thematic_spreads_screen_career_finance_description =>
      'การวิเคราะห์ทางอาชีพและการเงินอย่างมืออาชีพ';

  @override
  String get thematic_spreads_screen_pros_cons_title => 'ข้อดีและข้อเสีย';

  @override
  String get thematic_spreads_screen_pros_cons_description =>
      'การวิเคราะห์ข้อดีและข้อเสีย';

  @override
  String get thematic_spreads_screen_monthly_forecast_title =>
      'คำทำนายรายเดือน';

  @override
  String get thematic_spreads_screen_monthly_forecast_description =>
      'คำทำนายรายเดือน';

  @override
  String get thematic_spreads_screen_self_development_title =>
      'การพัฒนาตนเองและความสมดุล';

  @override
  String get thematic_spreads_screen_self_development_description =>
      'การเติบโตทางจิตวิญญาณและความสมดุล';

  @override
  String get requestReceived => 'คำขอของคุณได้รับการยอมรับ กรุณาเปิดไพ่';

  @override
  String pros_cons_spread_prompt(Object cards, Object userName) {
    return 'ทำการแจกไพ่ข้อดีและข้อเสียสำหรับ $userName ด้วยไพ่เหล่านี้: $cards';
  }

  @override
  String get pros_cons_spread_screen_what_is_pros_cons_spread =>
      'การแจกไพ่ \"ข้อดีและข้อเสีย\" คืออะไร?';

  @override
  String get pros_cons_spread_screen_pros_cons_spread_explanation =>
      'การแจกไพ่ \"ข้อดีและข้อเสีย\" ช่วยวิเคราะห์ข้อดีและข้อเสียของสถานการณ์เพื่อให้ตัดสินใจได้อย่างรอบคอบ';

  @override
  String get pros_cons_spread_screen_understand_button => 'เข้าใจแล้ว';

  @override
  String get prosConsSpreadTitle => 'การอ่านไพ่ \"ข้อดีและข้อเสีย\"';

  @override
  String get spreadDisclaimer =>
      'แอปใช้ปัญญาประดิษฐ์เพื่อความบันเทิงเท่านั้น เราไม่รับผิดชอบต่อการตัดสินใจของคุณ หากจำเป็น โปรดปรึกษาผู้เชี่ยวชาญ';

  @override
  String get fun_spread_screen_generation_error =>
      'เกิดข้อผิดพลาดในการสร้างการอ่านไพ่ กรุณาลองอีกครั้ง';

  @override
  String get fun_spread_screen_share_error => 'เกิดข้อผิดพลาดในการบันทึกรูปภาพ';

  @override
  String get fun_spread_screen_about_fun_spread =>
      'การอ่านไพ่ที่สนุกสนานคืออะไร?';

  @override
  String get fun_spread_screen_fun_spread_explanation =>
      'การอ่านไพ่ที่สนุกสนานคือวิธีพิเศษในการทำนายด้วยไพ่ทาโรต์ ที่ผสมผสานความลึกซึ้งของการอ่านไพ่แบบดั้งเดิมกับวิธีการที่เบาและเป็นบวก มันจะช่วยให้คุณมองสถานการณ์จากมุมมองใหม่และค้นหาความสุขในชีวิตประจำวัน';

  @override
  String get fun_spread_screen_understand_button => 'เข้าใจแล้ว';

  @override
  String get fun_spread_screen_title => 'การอ่านไพ่ที่สนุกสนาน';

  @override
  String get fun_spread_screen_generate_button => 'สร้างการอ่านไพ่';

  @override
  String get fun_spread_screen_share_button => 'แชร์';

  @override
  String get fun_spread_screen_new_button => 'การแจกไพ่ใหม่';

  @override
  String get fun_spread_screen_share_text =>
      'ดูการแจกไพ่ทาโรต์ที่สนุกสนานที่ฉันได้รับในแอป Tarot AI!';

  @override
  String get ad_promo_tariff => 'แผนราคา';

  @override
  String get ad_promo_love => 'ความรัก';

  @override
  String get ad_promo_discount => 'โปรโมชั่น -50%';

  @override
  String get ad_promo_no_ads => '• ไม่มีโฆษณา';

  @override
  String get ad_promo_no_limits => '• ไม่มีข้อจำกัด';

  @override
  String get no_internet_error =>
      'แอปของเราทำงานได้เฉพาะเมื่อเชื่อมต่ออินเทอร์เน็ต กรุณาเปิด Wi-Fi หรืออินเทอร์เน็ตมือถือ';

  @override
  String fun_spread_screen_mate_prompt_3cards(Object userName) {
    return 'ทำไพ่ทาโรต์ 3 ใบที่ตลกมาก ดุเดือด และมีคำหยาบสำหรับ $userName สำหรับแต่ละใบคิดชื่อที่ตลกและเขียนย่อหน้าแยก: ใบแรก: <ชื่อ> — <คำอธิบายตลกสั้นๆ>, ใบที่สอง: <ชื่อ> — <คำอธิบายตลกสั้นๆ>, ใบที่สาม: <ชื่อ> — <คำอธิบายตลกสั้นๆ> ใช้คำหยาบเพื่อเพิ่มความฮา แต่ไม่ดูถูกใคร ข้อความทั้งหมดไม่เกิน 7 ประโยค';
  }

  @override
  String fun_spread_screen_no_mate_prompt_3cards(Object userName) {
    return 'สร้างการเปิดไพ่ทาโร่ที่สนุกสนานสำหรับ $userName โดยใช้ไพ่ 3 ใบ สำหรับแต่ละใบคิดชื่อที่ตลกและเขียนย่อหน้าแยก: ไพ่ใบแรก: <ชื่อ> — <คำอธิบายตลกสั้นๆ>, ไพ่ใบที่สอง: <ชื่อ> — <คำอธิบายตลกสั้นๆ>, ไพ่ใบที่สาม: <ชื่อ> — <คำอธิบายตลกสั้นๆ> การเปิดไพ่ต้องสนุกแต่มีความหมายลึกซึ้ง มีแค่ 3 ใบ ข้อความทั้งหมดไม่เกิน 7 ประโยค';
  }

  @override
  String get fun_spread_screen_title_top => 'การเปิดไพ่ทาโร่';

  @override
  String fun_spread_screen_title_for_name(Object name) {
    return 'สำหรับ $name';
  }

  @override
  String get contact_us_screen_message_sent =>
      'เราได้รับข้อความของคุณแล้ว ขอบคุณ!';

  @override
  String get contact_us_screen_message_error => 'เกิดข้อผิดพลาดในการส่งข้อความ';

  @override
  String get love_spread_screen_initial_message =>
      'สวัสดีครับ กรุณาเขียนคำถามของคุณด้านล่าง:';

  @override
  String get main_screen_tariff => 'อัตราค่าบริการ';

  @override
  String get main_screen_promo_50 => 'โปรโมชั่น -50%';

  @override
  String get main_screen_rate_hint =>
      'หากหน้าต่างให้คะแนนไม่ปรากฏขึ้น คุณสามารถแสดงความคิดเห็นใน Google Play ได้';

  @override
  String get main_screen_rate_error =>
      'ไม่สามารถเปิด Google Play ได้ กรุณาลองใหม่ภายหลัง';

  @override
  String get love_spread_screen_suggested_questions_1 =>
      'ความรู้สึกของฉันต่อคนนี้คืออะไร?';

  @override
  String get love_spread_screen_suggested_questions_2 =>
      'อะไรที่ขัดขวางความสัมพันธ์ของเรา?';

  @override
  String get love_spread_screen_suggested_questions_3 =>
      'อนาคตของความสัมพันธ์ของเราจะเป็นอย่างไร?';

  @override
  String get career_finance_spread_screen_suggested_questions_1 =>
      'โอกาสอะไรที่รอฉันอยู่ในอาชีพการงาน?';

  @override
  String get career_finance_spread_screen_suggested_questions_2 =>
      'จะปรับปรุงสถานะการเงินของฉันได้อย่างไร?';

  @override
  String get career_finance_spread_screen_suggested_questions_3 =>
      'ควรเปลี่ยนงานไหม?';

  @override
  String get pros_cons_spread_screen_suggested_questions_1 =>
      'ฉันควรตัดสินใจเรื่องนี้ไหม?';

  @override
  String get pros_cons_spread_screen_suggested_questions_2 =>
      'ข้อดีและข้อเสียของทางเลือกนี้มีอะไรบ้าง?';

  @override
  String get pros_cons_spread_screen_suggested_questions_3 =>
      'อะไรสำคัญกว่ากันในสถานการณ์นี้?';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_1 =>
      'อะไรจะรอฉันอยู่ในเดือนนี้?';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_2 =>
      'เหตุการณ์ใดที่จะเกิดขึ้นในเร็วๆ นี้?';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_3 =>
      'ควรให้ความสำคัญกับอะไรในเดือนนี้?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_1 =>
      'ฉันจะพัฒนาจิตวิญญาณได้อย่างไร?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_2 =>
      'อะไรที่ขัดขวางความสมดุลภายในของฉัน?';

  @override
  String get self_development_balance_spread_screen_suggested_questions_3 =>
      'จะหาความสมดุลในชีวิตได้อย่างไร?';

  @override
  String career_three_card_prompt(
    Object adviceCard,
    Object challengeCard,
    Object situationCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'คุณเป็นโค้ชทาโรต์ที่มีประสบการณ์ ผู้ใช้ $userName ถามว่า: «$userQuestion» ทำการเปิดไพ่สามใบเกี่ยวกับอาชีพและการเงิน ไพ่ถูกแจกดังนี้: 1) สถานการณ์ — $situationCard; 2) อุปสรรคหรือโอกาสสำคัญ — $challengeCard; 3) คำแนะนำและศักยภาพ — $adviceCard ระบุเพศของผู้ใช้จากชื่อ $userName และใช้คำลงท้ายและสรรพนามที่ถูกต้อง พูดกับ $userName อย่างเป็นมิตรและตรงประเด็น: แสดงให้เห็นว่าเขายืนอยู่ที่ไหน อะไรที่ขัดขวางการเติบโต (หรือโอกาสใดที่ควรสังเกต) และก้าวปฏิบัติใดที่จะนำไปสู่รายได้ที่ต้องการ กล่าวถึงชื่อ $userName อย่างน้อยสามครั้ง รักษาโครงสร้างดังนี้:\n1) คำทักทาย — 1 ประโยค\n2) หัวข้อ: การเปิดไพ่: $situationCard | $challengeCard | $adviceCard\n3) $situationCard — 45–55 คำ: อธิบายสถานะปัจจุบันของ $userName (งาน ธุรกิจ หรือภาพรวมการเงิน) และสัญลักษณ์ของไพ่\n4) $challengeCard — 45–55 คำ: เปิดเผยอุปสรรคหลักหรือโอกาสที่ไม่ชัดเจน; ชี้ให้เห็นว่ามันสะท้อนในไพ่และคำถามของ $userName อย่างไร\n5) $adviceCard — 45–55 คำ: เสนอการกระทำที่ชัดเจน (เช่น ทบทวนงบประมาณ ขอขึ้นเงินเดือน เรียนรู้ทักษะใหม่) และอธิบายผลลัพธ์ที่เป็นไปได้\n6) สรุป — 20–25 คำ: ข้อสรุปอย่างเป็นมิตร การยืนยันเชิงบวก และอีโมจิธุรกิจ 2 ตัว\nข้อกำหนด: ความยาวรวม 160–185 คำ น้ำเสียงชัดเจนและเป็นทางการโดยไม่ใช้ศัพท์แสลง มีอีโมจิ 2–3 ตัว; แบ่งย่อหน้าด้วย \\n\\n; หลีกเลี่ยงการใช้ *, # หรือเครื่องหมายอื่น ๆ';
  }

  @override
  String pros_cons_three_card_prompt(
    Object adviceCard,
    Object conCard,
    Object proCard,
    Object userName,
    Object userQuestion,
  ) {
    return 'คุณเป็นนักทาโรต์ที่มีประสบการณ์ ผู้ใช้ $userName ถามว่า: «$userQuestion» ทำการเปิดไพ่ “ข้อดีและข้อเสีย” จากไพ่สามใบ ไพ่ถูกแจกดังนี้: ข้อดี — $proCard; ข้อเสีย — $conCard; คำแนะนำ/สรุป — $adviceCard ระบุเพศของผู้ใช้จากชื่อ $userName และใช้คำลงท้ายและสรรพนามที่ถูกต้อง กล่าวถึงชื่อ $userName อย่างน้อยสามครั้งและเชื่อมโยงแต่ละไพ่กับคำถาม รักษาโครงสร้างดังนี้:\n1) คำทักทายโดยใช้ชื่อ $userName\n2) หัวข้อ: การเปิดไพ่: $proCard | $conCard | $adviceCard\n3) ข้อดี: $proCard — 45–55 คำ อธิบายประโยชน์หลักหรือทรัพยากรเชิงบวกที่ไพ่นี้นำมาสู่สถานการณ์ของ $userName\n4) ข้อเสีย: $conCard — 45–55 คำ อธิบายความเสี่ยง ค่าใช้จ่ายที่ซ่อนอยู่ หรือจุดอ่อนของการตัดสินใจสำหรับ $userName\n5) คำแนะนำ: $adviceCard — 45–55 คำ ชั่งน้ำหนักข้อดีข้อเสีย เสนอการกระทำที่ชัดเจนหนึ่งอย่าง (กริยา + วัตถุ) และบอกว่าการกระทำนั้นจะเปลี่ยนผลลัพธ์สำหรับ $userName อย่างไร\n6) สรุป — คำเดียวว่า “ใช่” หรือ “ไม่” ตามด้วยประโยคอธิบายและคำยืนยันให้กำลังใจ (20–25 คำ) พร้อมอีโมจิ 1–2 ตัว\nข้อกำหนด: ความยาวรวม 150–180 คำ น้ำเสียงเป็นกันเองและสนทนา แบ่งแต่ละบล็อกด้วย \\n\\n; หลีกเลี่ยงการใช้ *, # หรือเครื่องหมายอื่น ๆ';
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
    return 'คุณเป็นนักทาโรต์มืออาชีพ ผู้ใช้ $userName ถามว่า: «$userQuestion» จัดทำการเปิดไพ่ “วงล้อเดือน” สำหรับ $month ไพ่เรียงตามลำดับ: 1 — $card1, 2 — $card2, 3 — $card3, 4 — $card4, 5 — $card5, 6 — $card6, 7 — $card7, 8 — $card8, 9 — $card9, 10 — $card10, 11 — $card11, 12 — $card12 ระบุเพศของ $userName จากชื่อและใช้คำลงท้ายและสรรพนามที่ถูกต้อง กล่าวถึงชื่ออย่างน้อยห้าครั้ง แต่ไม่ใส่ชื่อหลังแต่ละวันที่ — ใช้ชื่อเฉพาะในคำแนะนำภายในข้อความ ใช้ตารางวันที่ปฏิทิน: 1–3, 4–6, 7–9, 10–12, 13–15, 16–18, 19–21, 22–24, 25–26, 27–28, 29–30, 31 (ถ้าเดือนมี 30 วัน ไพ่ใบที่ 12 ก็เกี่ยวข้องกับวันที่ 30 ด้วย) รูปแบบ:\n1) คำทักทายโดยใช้ชื่อ $userName (1–2 ประโยค)\n2) บทนำสั้น ๆ เกี่ยวกับวัตถุประสงค์ของการเปิดไพ่ (1 ประโยค)\n3–14) สำหรับแต่ละไพ่ใช้บรรทัดเช่น “1–3 $month — $card1” (ไม่ใส่ชื่อ): ตามด้วย 2–3 ประโยคเกี่ยวกับพลังงานหลักของช่วงเวลานั้นและคำแนะนำเชิงปฏิบัติ โดยกล่าวถึง $userName อย่างเป็นธรรมชาติ\n15) สรุป: คำแนะนำทั่วไปสำหรับเดือน (ประมาณ 40 คำ) และคำยืนยันสร้างแรงบันดาลใจพร้อมอีโมจิ 2–3 ตัว\nข้อกำหนด: ความยาวรวม 360–400 คำ; น้ำเสียงเป็นมิตรและกระตุ้น; แบ่งบล็อกด้วย \\n\\n; หลีกเลี่ยงการใช้ *, # รายการ หรือหมายเหตุทางเทคนิค';
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
    return 'คุณเป็นโค้ชทาโรต์ที่มีประสบการณ์ ผู้ใช้ $userName ถามว่า: «$userQuestion» ทำการเปิดไพ่ “การพัฒนาตนเองและสมดุล” จากไพ่เจ็ดใบ ไพ่ถูกแจกดังนี้: แกนหลัก — $coreCard; จิตใจ — $mindCard; อารมณ์ — $emotionCard; ร่างกาย — $bodyCard; ทรัพยากร — $strengthCard; อุปสรรค — $challengeCard; คำแนะนำ — $adviceCard ระบุเพศของผู้ใช้จากชื่อ $userName และใช้คำลงท้ายและสรรพนามที่ถูกต้อง พูดอย่างมีชีวิตชีวาและให้กำลังใจ กล่าวถึงชื่อ $userName อย่างน้อยสี่ครั้งและเชื่อมโยงแต่ละไพ่กับคำถาม รักษาโครงสร้างและรูปแบบดังนี้:\n1) คำทักทายโดยใช้ชื่อ $userName\n2) หัวข้อ: การเปิดไพ่: $coreCard | $mindCard | $emotionCard | $bodyCard | $strengthCard | $challengeCard | $adviceCard\n3) $coreCard — อธิบายจุดสนใจหลักในการพัฒนาตนเองของ $userName\n4) $mindCard — บอกวิธีปรับความคิดและสิ่งที่ควรเรียนรู้\n5) $emotionCard — เปิดเผยทรัพยากรทางอารมณ์และแรงจูงใจ\n6) $bodyCard — แนะนำวิธีดูแลร่างกายและพลังงาน\n7) $strengthCard — แสดงของขวัญภายในหรือการสนับสนุนภายนอก\n8) $challengeCard — ระบุความไม่สมดุลหลักและสาเหตุ\n9) $adviceCard — เสนอการกระทำที่ชัดเจนซึ่งรวมทุกแง่มุมเข้าด้วยกัน\n10) สรุป: คำยืนยันสร้างแรงบันดาลใจและคำอวยพรอบอุ่นพร้อมอีโมจิ 2–3 ตัว\nข้อกำหนด: แต่ละข้อ 2–3 ประโยค; เว้นบรรทัดด้วย \\n\\n; หลีกเลี่ยงการใช้ *, # หรือเครื่องหมายอื่น ๆ';
  }

  @override
  String get main_screen_suggest_spread =>
      'อยากเพิ่มการเปิดไพ่แบบไหน? เขียนถึงเรามาได้เลย';

  @override
  String get main_screen_disclaimer =>
      'แอปพลิเคชันใช้ปัญญาประดิษฐ์เพื่อความบันเทิงเท่านั้น เราไม่รับผิดชอบต่อการตัดสินใจที่คุณทำ หากจำเป็นโปรดปรึกษาผู้เชี่ยวชาญ';

  @override
  String get month_january => 'มกราคม';

  @override
  String get month_february => 'กุมภาพันธ์';

  @override
  String get month_march => 'มีนาคม';

  @override
  String get month_april => 'เมษายน';

  @override
  String get month_may => 'พฤษภาคม';

  @override
  String get month_june => 'มิถุนายน';

  @override
  String get month_july => 'กรกฎาคม';

  @override
  String get month_august => 'สิงหาคม';

  @override
  String get month_september => 'กันยายน';

  @override
  String get month_october => 'ตุลาคม';

  @override
  String get month_november => 'พฤศจิกายน';

  @override
  String get month_december => 'ธันวาคม';

  @override
  String get fun_share_button => 'แชร์';

  @override
  String get fun_new_spread_button => 'การแพร่กระจายใหม่';
}
