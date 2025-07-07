// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get main_title => '占卜并学习塔罗牌';

  @override
  String get your_name => '您的名字';

  @override
  String get personalization_hint => '向AI塔罗师提问，获得个性化牌阵';

  @override
  String get start_button => '开始';

  @override
  String get language => '语言';

  @override
  String get continueBtn => '继续';

  @override
  String get card_of_the_day => '今日之卡';

  @override
  String get description => '描述';

  @override
  String get spreads => '牌阵';

  @override
  String get quick_spread => '快速牌阵';

  @override
  String get classic_spreads => '经典牌阵';

  @override
  String get thematic_spreads => '主题牌阵';

  @override
  String get card_combination => '牌组组合';

  @override
  String get card_meanings => '牌义';

  @override
  String get training => '教学';

  @override
  String get welcome => '欢迎';

  @override
  String get today => '今天';

  @override
  String get view => '观看';

  @override
  String get select_card => '选择卡片';

  @override
  String get please_select_cards => '请在所有字段中选择不同的卡片。';

  @override
  String get good_day => '祝你有美好的一天，\n选择牌卡以了解它们的组合和含义';

  @override
  String get language_hint => '为了完全个性化牌阵';

  @override
  String get quickReading => '快速牌阵';

  @override
  String get comingSoon => '即将推出';

  @override
  String get onboarding_notifications_title => '🔔 想不错过\"今日之牌\"和新的牌阵吗？';

  @override
  String get onboarding_notifications_subtitle => '请同意接收通知（无垃圾信息）。';

  @override
  String get onboarding_notifications_allow => '同意';

  @override
  String get onboarding_notifications_decline => '拒绝';

  @override
  String get suggested_questions_chat_1 => '告诉我我的爱情生活';

  @override
  String get suggested_questions_chat_2 => '我的职业生涯会发生什么？';

  @override
  String get suggested_questions_chat_3 => '我如何能够提升自己？';

  @override
  String get suggested_questions_chat_4 => '未来有哪些机会在等待我？';

  @override
  String get onboarding_final_title => '一切就绪！';

  @override
  String get onboarding_final_subtitle => '为了维持项目运行，我们会展示广告。但如果您不想看到，可以订阅';

  @override
  String get onboarding_final_benefits => '无广告\n无限制牌阵\n无限制学习';

  @override
  String get onboarding_final_yearly => '每年';

  @override
  String get onboarding_final_badge => '节省 50%';

  @override
  String get onboarding_final_yearly_price => '249/年';

  @override
  String get onboarding_final_yearly_month => '24/月';

  @override
  String get onboarding_final_trial => '7 天免费试用';

  @override
  String get onboarding_final_trial_price => '然后每月9';

  @override
  String get onboarding_final_trial_month => '每月';

  @override
  String get onboarding_final_note => '订阅不是强制的，会自动续订。您可以随时取消';

  @override
  String get onboarding_final_choose_yearly => '选择年度';

  @override
  String get onboarding_final_choose_trial => '选择7天免费试用';

  @override
  String get onboarding_final_or => '或者';

  @override
  String get onboarding_final_continue_ads => '继续观看广告';

  @override
  String get main_screen_greeting => '您好';

  @override
  String main_screen_date_today(Object date) {
    return '今天，$date';
  }

  @override
  String get main_screen_card_of_day_title => '您今天的牌卡';

  @override
  String main_screen_card_of_day_description(Object cardName) {
    return '今日之卡：$cardName';
  }

  @override
  String get main_screen_card_of_day_description_empty => '今日之卡：';

  @override
  String get main_screen_card_of_day_status_viewed => '已开启';

  @override
  String get main_screen_card_of_day_status_view => '查看';

  @override
  String get main_screen_section_spreads => '牌阵';

  @override
  String get main_screen_section_training => '学习';

  @override
  String get main_screen_section_entertainment => '娱乐';

  @override
  String get main_screen_quick_spread_title => '快速牌阵';

  @override
  String get main_screen_quick_spread_description => '只需轻触几下，即可用一张牌获得您问题的明确答案';

  @override
  String get main_screen_thematic_spreads_title => '主题牌阵';

  @override
  String get main_screen_thematic_spreads_description =>
      '重要领域的现成方案：爱情、事业、健康、旅行';

  @override
  String get main_screen_card_combination_title => '牌组组合';

  @override
  String get main_screen_fun_spread_title => '趣味牌阵';

  @override
  String get main_screen_fun_spread_description => '提升心情，做一个趣味牌阵并分享到社交网络';

  @override
  String get main_screen_love_badge => '爱情';

  @override
  String get card_combination_screen_title => '牌组组合';

  @override
  String get card_combination_screen_greeting => '您好，请选择牌组以了解组合和含义';

  @override
  String get card_combination_screen_card_hint => '牌';

  @override
  String get card_combination_screen_get_combination_button => '查看组合';

  @override
  String get card_combination_screen_new_spread_button => '进行新的牌阵';

  @override
  String get card_combination_screen_fill_all_fields_error => '请填写所有卡片字段。';

  @override
  String get card_combination_screen_invalid_cards_error =>
      '请选择仅来自建议列表的卡片。无效的卡片：';

  @override
  String get card_combination_screen_duplicate_cards_error => '请在所有字段中选择不同的卡片。';

  @override
  String get card_combination_screen_general_error => '错误：未能获取响应。请再试一次。';

  @override
  String get card_combination_screen_disclaimer =>
      '该应用程序仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String card_combination_screen_prompt(Object cards, Object lang) {
    return '分析塔罗牌组合：$cards。深入神秘地分析它们的相互作用并给出总体建议。答案完全使用$lang语言。无问候和结尾。';
  }

  @override
  String get quick_reading_screen_title => '快速占卜';

  @override
  String get quick_reading_screen_select_card => '选择一张牌';

  @override
  String get quick_reading_screen_get_answer_button => '获取答案';

  @override
  String get quick_reading_screen_what_is_quick_spread => '什么是快速占卜？';

  @override
  String get quick_reading_screen_quick_spread_explanation =>
      '快速占卜是一种快速占卜（答案：是或否），帮助您立即获得对具体问题或当天整体氛围的清晰回答。非常适合需要\"此时此刻\"快速灵感或建议的情况。';

  @override
  String get quick_reading_screen_understand_button => '明白了';

  @override
  String get quick_reading_result_screen_generating_response => '正在生成回答...';

  @override
  String quick_reading_result_screen_error_generating(Object error) {
    return '生成回答时出错：$error';
  }

  @override
  String quick_reading_result_screen_error_generating_response(Object e) {
    return '生成回答时出错：$e';
  }

  @override
  String get quick_reading_result_screen_what_is_quick_spread => '什么是快速牌阵？';

  @override
  String get quick_reading_result_screen_quick_spread_explanation =>
      '快速牌阵是一种快速占卜（答案：是或否），帮助您立即获得对具体问题或当天整体氛围的清晰回答。非常适合需要\"此时此刻\"的快速灵感或建议。';

  @override
  String get quick_reading_result_screen_understand_button => '明白了';

  @override
  String get quick_reading_result_screen_quick_spread_title => '快速牌阵';

  @override
  String get quick_reading_result_screen_new_spread_button => '新牌阵';

  @override
  String get quick_reading_result_screen_disclaimer =>
      '该应用程序仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String quick_reading_result_screen_prompt(Object cardName, Object userName) {
    return '你是一位经验丰富的塔罗牌读者。用户 $userName 抽到了牌——$cardName。\n答案牌：是 或 否（根据具体情况选择\"是\"或\"否\"）\n$userName，这张$cardName牌的能量带来了这样的答案，因为它象征着内心的力量和转变。$userName，这意味着你正处于一个重要的转折点，牌面显示你需要相信自己的直觉和潜力。 这张牌提醒你，虽然前路可能充满挑战，但坚持下去会带来积极的变化。它鼓励你勇敢面对未知，抓住机会。✨ 这对你来说是一个积极的信号，表明你正走在正确的道路上。';
  }

  @override
  String get career_finance_spread_screen_request_accepted => '您的请求已收到。请展开牌阵';

  @override
  String get career_finance_spread_screen_error_getting_value =>
      '获取牌阵数值时出错。请再试一次。';

  @override
  String get career_finance_spread_screen_what_is_career_finance =>
      '什么是职业与财务牌阵？';

  @override
  String get career_finance_spread_screen_career_finance_explanation =>
      '这个牌阵有助于分析职业和财务领域。您将了解机会、障碍和成长前景。';

  @override
  String get career_finance_spread_screen_understand_button => '明白了';

  @override
  String get career_finance_spread_screen_learn_meaning_button => '了解含义';

  @override
  String get career_finance_spread_screen_career_finance_title => '职业与财务';

  @override
  String get career_finance_spread_screen_new_spread_button => '进行新的牌阵分析';

  @override
  String get career_finance_spread_screen_disclaimer =>
      '该应用程序仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String get career_finance_spread_screen_enter_question_hint => '请输入您的问题...';

  @override
  String get pros_cons_spread_screen_what_is_pros_cons => '什么是\"利与弊\"牌阵？';

  @override
  String get pros_cons_spread_screen_pros_cons_title => '\"利与弊\"牌阵';

  @override
  String get pros_cons_spread_screen_enter_question_hint => '请输入您的问题...';

  @override
  String
      get self_development_balance_spread_screen_self_development_explanation =>
          '\"自我提升与平衡\"牌阵由7张牌组成，排列成圆形。每张牌象征着你精神成长和内在和谐的某个方面。';

  @override
  String get card_meanings_screen_major_arcana => '大阿尔克那';

  @override
  String get card_meanings_screen_wands => '权杖';

  @override
  String get card_meanings_screen_cups => '圣杯';

  @override
  String get card_meanings_screen_swords => '宝剑';

  @override
  String get card_meanings_screen_pentacles => '五角星';

  @override
  String get card_meanings_screen_title => '牌义';

  @override
  String get love_spread_screen_new_spread_button => '进行新牌阵';

  @override
  String get love_spread_screen_enter_question_hint => '请输入您的问题...';

  @override
  String purchase_love_screen_test_stub(Object plan) {
    return '测试占位符：已选择套餐 \"$plan\"';
  }

  @override
  String get purchase_love_screen_love_tariff_title => '爱心套餐';

  @override
  String get ad_promo_block_tariff => '套餐';

  @override
  String get ad_promo_block_love => '爱心';

  @override
  String get ad_promo_block_promotion_70 => '促销 -50%';

  @override
  String get ad_promo_block_no_ads => '• 无广告';

  @override
  String get ad_promo_block_no_limits => '• 无限制';

  @override
  String three_cards_screen_title(Object cards) {
    return '牌阵中有3张牌';
  }

  @override
  String get three_cards_screen_initial_message => '您好，请在下方输入您的请求：';

  @override
  String get three_cards_screen_request_accepted => '您的请求已收到。请翻开牌';

  @override
  String get three_cards_screen_suggested_questions_1 => '我现在的主要问题是什么？';

  @override
  String get three_cards_screen_suggested_questions_2 => '我应该在近期关注什么？';

  @override
  String get three_cards_screen_suggested_questions_3 => '有什么对我隐藏？';

  @override
  String get three_cards_screen_see_meaning_button => '了解含义';

  @override
  String get three_cards_screen_new_spread_button => '新牌阵';

  @override
  String get three_cards_screen_enter_question_hint => '请输入您的请求...';

  @override
  String get three_cards_screen_what_is_three_cards => '什么是三张牌牌阵？';

  @override
  String get three_cards_screen_three_cards_explanation =>
      '经典牌阵，展示您情况的过去、现在和未来。第一张牌代表过去，第二张牌代表现在，第三张牌代表未来。';

  @override
  String get three_cards_screen_understand_button => '明白了';

  @override
  String get three_cards_screen_error_getting_value => '获取牌阵值时出错。请再试一次。';

  @override
  String get three_cards_screen_disclaimer =>
      '本应用仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String get five_cards_screen_title => '牌阵中有5张牌';

  @override
  String get five_cards_screen_initial_message => '您好，请在下面写下您的请求：';

  @override
  String get five_cards_screen_request_accepted => '您的请求已收到。请展开牌阵';

  @override
  String get five_cards_screen_suggested_questions_1 => '我应该选择哪条路？';

  @override
  String get five_cards_screen_suggested_questions_2 => '是什么阻碍我实现目标？';

  @override
  String get five_cards_screen_suggested_questions_3 => '我有什么功能？';

  @override
  String get five_cards_screen_see_meaning_button => '了解含义';

  @override
  String get five_cards_screen_new_spread_button => '做一个新的牌阵';

  @override
  String get five_cards_screen_enter_question_hint => '请输入您的请求...';

  @override
  String get five_cards_screen_what_is_five_cards => '什么是五张牌牌阵？';

  @override
  String get five_cards_screen_five_cards_explanation =>
      '五张牌的牌阵是一种紧凑的布局，揭示了情况的五个关键方面：过去、现在、隐藏的影响、助手/障碍和可能的结果。';

  @override
  String get five_cards_screen_understand_button => '明白';

  @override
  String get five_cards_screen_error_getting_value => '获取牌阵数值时出错。请再试一次。';

  @override
  String get five_cards_screen_disclaimer =>
      '本应用仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String get celtic_cross_screen_title => '凯尔特十字架';

  @override
  String get celtic_cross_screen_initial_message => '您好，请在下面写下您的请求：';

  @override
  String get celtic_cross_screen_suggested_questions_1 => '我目前的主要问题是什么？';

  @override
  String get celtic_cross_screen_suggested_questions_2 => '我未来应该重点关注什么？';

  @override
  String get celtic_cross_screen_suggested_questions_3 => '有什么是对我隐藏的？';

  @override
  String get celtic_cross_screen_see_meaning_button => '了解含义';

  @override
  String get celtic_cross_screen_new_spread_button => '制作新牌阵';

  @override
  String get celtic_cross_screen_enter_question_hint => '请输入您的请求...';

  @override
  String get celtic_cross_screen_what_is_celtic_cross_dialog => '什么是凯尔特十字？';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_dialog =>
      '\"凯尔特十字\"是一种由10张牌组成的牌阵，详细解析情况的各个方面：当前环境、障碍、内在和外在影响，以及近期动态和最终结果。牌按顺序摆放：\n1 - 情况 — 问题的本质，此时此刻。\n2 - 挑战 — 有助或阻碍前进的因素。\n3 - 潜意识（根源）— 隐藏的动机和深层力量。\n4 - 最近的过去 — 导致当前状况的事件。\n5 - 意识（目标）— 询问者当前关注的焦点。\n6 - 近期未来 — 未来几周的可能发展。\n7 - \"我自己\" — 内心状态、资源、对问题的态度。\n8 - 环境 — 周围人的影响和环境因素。\n9 - 希望/恐惧 — 期待、疑虑、强烈情绪。\n10 - 结果 — 如果趋势持续，可能的结局。\n此牌阵帮助看到\"大局\"：你所处的位置，阻碍或助力，幕后隐藏的冲动，以及未来的走向。\n牌阵示意图见下图。';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_image =>
      'assets/images/kelt.png';

  @override
  String get celtic_cross_screen_understand_button => '明白';

  @override
  String celtic_cross_screen_please_open_cards(Object cards) {
    return '您的请求已收到。请打开卡片';
  }

  @override
  String celtic_cross_screen_request_accepted(Object cards) {
    return '请求已收到，请打开卡片';
  }

  @override
  String get the_user => '用户';

  @override
  String get good_day_please_write_your_question_below => '您好，请在下面写下您的请求';

  @override
  String get errorGettingSpreadMeaning => '获取牌阵结果时出错。请再试一次。';

  @override
  String get errorGettingSpreadMeaningPleaseTryAgain => '获取牌阵结果时出错。请再试一次。';

  @override
  String get seeMeaning => '查看结果';

  @override
  String get newSpread => '进行新的牌阵';

  @override
  String get enterYourQuestion => '请输入您的问题...';

  @override
  String get enterQuestion => '请输入您的问题...';

  @override
  String makeTarotReadingFor(Object lang) {
    return '为以下对象制作';
  }

  @override
  String get theUser => '用户';

  @override
  String onTheseThreeCards(Object userName) {
    return '为这三张牌做一个牌阵：';
  }

  @override
  String makeSelfDevelopmentAndBalanceTarotReadingFor(Object cards) {
    return '为$cards做一个自我发展与平衡的牌阵';
  }

  @override
  String get getAnswer => '了解答案';

  @override
  String get aboutTheSpread => '关于牌阵';

  @override
  String get aboutSpreadDescription => '这个牌阵有助于分析您的精神成长和内在和谐。';

  @override
  String get gotIt => '明白了';

  @override
  String get selfDevelopmentAndBalance => '自我发展与平衡';

  @override
  String get appUsageDisclaimer =>
      '该应用程序仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String get careerFinance => '职业与财务';

  @override
  String get fun_spread_screen_with_swear_words_title => '含脏话（18+）';

  @override
  String get fun_spread_screen_with_swear_words_subtitle => '适合喜欢刺激的人';

  @override
  String get fun_spread_screen_without_swear_words_title => '无脏话';

  @override
  String get fun_spread_screen_without_swear_words_subtitle => '没有脏话的有趣牌阵';

  @override
  String get fun_spread_screen_generating => '正在生成您的牌阵...';

  @override
  String get card_name_the_fool => '愚者';

  @override
  String get card_name_the_magician => '魔术师';

  @override
  String get card_name_the_high_priestess => '女祭司';

  @override
  String get card_name_the_empress => '女皇';

  @override
  String get card_name_the_emperor => '皇帝';

  @override
  String get card_name_the_hierophant => '教皇';

  @override
  String get card_name_the_lovers => '恋人';

  @override
  String get card_name_the_chariot => '战车';

  @override
  String get card_name_strength => '力量';

  @override
  String get card_name_the_hermit => '隐士';

  @override
  String get ok_button => '确定';

  @override
  String get cancel_button => '取消';

  @override
  String get analyzing_cards => '正在分析卡牌...';

  @override
  String get yes_button => '是';

  @override
  String get no_button => '没有';

  @override
  String get loading => '加载中...';

  @override
  String get error => '错误';

  @override
  String get success => '成功';

  @override
  String get failed => '失败';

  @override
  String get language_russian => '俄语';

  @override
  String get language_english_us => '英语（美国）';

  @override
  String get language_english_gb => '英语（英国）';

  @override
  String get card_name_wheel_of_fortune => '命运之轮';

  @override
  String get card_name_justice => '正义';

  @override
  String get card_name_the_hanged_man => '倒吊人';

  @override
  String get card_name_death => '死神';

  @override
  String get card_name_temperance => '节制';

  @override
  String get card_name_the_devil => '恶魔';

  @override
  String get card_name_the_tower => '塔楼';

  @override
  String get card_name_the_star => '星星';

  @override
  String get card_name_the_moon => '月亮';

  @override
  String get card_name_the_sun => '太阳';

  @override
  String get card_name_judgement => '审判';

  @override
  String get card_name_the_world => '世界';

  @override
  String get card_name_ace_of_wands => '权杖王牌';

  @override
  String get card_name_two_of_wands => '权杖二';

  @override
  String get card_name_three_of_wands => '权杖三';

  @override
  String get card_name_four_of_wands => '权杖四';

  @override
  String get card_name_five_of_wands => '权杖五';

  @override
  String get card_name_six_of_wands => '权杖六';

  @override
  String get card_name_seven_of_wands => '权杖七';

  @override
  String get card_name_eight_of_wands => '权杖八';

  @override
  String get card_name_nine_of_wands => '权杖九';

  @override
  String get card_name_ten_of_wands => '权杖十';

  @override
  String get card_name_page_of_wands => '权杖侍者';

  @override
  String get card_name_knight_of_wands => '权杖骑士';

  @override
  String get card_name_queen_of_wands => '权杖皇后';

  @override
  String get card_name_king_of_wands => '权杖国王';

  @override
  String get card_name_ace_of_cups => '圣杯王牌';

  @override
  String get card_name_two_of_cups => '圣杯二';

  @override
  String get card_name_three_of_cups => '圣杯三';

  @override
  String get card_name_four_of_cups => '圣杯四';

  @override
  String get card_name_five_of_cups => '圣杯五';

  @override
  String get card_name_six_of_cups => '圣杯六';

  @override
  String get card_name_seven_of_cups => '圣杯七';

  @override
  String get card_name_eight_of_cups => '圣杯八';

  @override
  String get card_name_nine_of_cups => '圣杯九';

  @override
  String get card_name_ten_of_cups => '圣杯十';

  @override
  String get card_name_page_of_cups => '圣杯侍者';

  @override
  String get card_name_knight_of_cups => '圣杯骑士';

  @override
  String get card_name_queen_of_cups => '圣杯皇后';

  @override
  String get card_name_king_of_cups => '圣杯国王';

  @override
  String get card_name_ace_of_swords => '宝剑王牌';

  @override
  String get card_name_two_of_swords => '宝剑二';

  @override
  String get card_name_three_of_swords => '三剑牌';

  @override
  String get card_name_four_of_swords => '四剑牌';

  @override
  String get card_name_five_of_swords => '五剑牌';

  @override
  String get card_name_six_of_swords => '六剑牌';

  @override
  String get card_name_seven_of_swords => '七剑牌';

  @override
  String get card_name_eight_of_swords => '宝剑八';

  @override
  String get card_name_nine_of_swords => '宝剑九';

  @override
  String get card_name_ten_of_swords => '宝剑十';

  @override
  String get card_name_page_of_swords => '宝剑侍从';

  @override
  String get card_name_knight_of_swords => '宝剑骑士';

  @override
  String get card_name_queen_of_swords => '宝剑皇后';

  @override
  String get card_name_king_of_swords => '宝剑国王';

  @override
  String get card_name_ace_of_pentacles => '金币王牌';

  @override
  String get card_name_two_of_pentacles => '金币二';

  @override
  String get card_name_three_of_pentacles => '金币三';

  @override
  String get card_name_four_of_pentacles => '五角星四';

  @override
  String get card_name_five_of_pentacles => '五角星五';

  @override
  String get card_name_six_of_pentacles => '五角星六';

  @override
  String get card_name_seven_of_pentacles => '五角星七';

  @override
  String get card_name_eight_of_pentacles => '五角星八';

  @override
  String get card_name_nine_of_pentacles => '九角星九';

  @override
  String get card_name_ten_of_pentacles => '九角星十';

  @override
  String get card_name_page_of_pentacles => '九角星侍从';

  @override
  String get card_name_knight_of_pentacles => '九角星骑士';

  @override
  String get card_name_queen_of_pentacles => '九角星皇后';

  @override
  String get card_name_king_of_pentacles => '五角星国王';

  @override
  String get quick_reading_screen_suggested_questions_1 => '我应该这样做吗？';

  @override
  String get quick_reading_screen_suggested_questions_2 => '这是正确的道路吗？';

  @override
  String get quick_reading_screen_suggested_questions_3 => '我需要知道什么？';

  @override
  String get monthly_forecast_spread_screen_see_meaning_button => '了解含义';

  @override
  String get monthly_forecast_spread_screen_new_spread_button => '制作新的牌阵';

  @override
  String get monthly_forecast_spread_screen_enter_question_hint => '请输入您的请求...';

  @override
  String get monthly_forecast_spread_screen_what_is_monthly_forecast =>
      '什么是月度预测？';

  @override
  String get monthly_forecast_spread_screen_monthly_forecast_explanation =>
      '月度预测显示未来一个月的主要事件和趋势。帮助您为变化做好准备并利用机会。';

  @override
  String get monthly_forecast_spread_screen_understand_button => '明白了';

  @override
  String get monthly_forecast_spread_screen_error_getting_value =>
      '获取牌阵数值时出错。请再试一次。';

  @override
  String get monthly_forecast_spread_screen_disclaimer =>
      '本应用仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String self_development_balance_spread_screen_prompt(
      Object cards, Object userName) {
    return '为$userName做一个关于自我提升和平衡的三张牌牌阵：$cards';
  }

  @override
  String get error_getting_answer_try_again => '错误：未能获得响应。请再试一次。';

  @override
  String get card_detail_screen_title => '牌卡详情';

  @override
  String get card_detail_screen_general_meaning => '总体含义';

  @override
  String get card_detail_screen_reversed_meaning => '颠倒含义';

  @override
  String get card_detail_screen_symbolism => '象征意义';

  @override
  String get card_detail_screen_error_loading_text => '文本加载错误';

  @override
  String card_detail_screen_general_meaning_prompt(
      Object cardName, Object lang) {
    return '用$lang语言描述塔罗牌\"\"$cardName\\\"的总体含义。包括历史、象征意义和主要含义。';
  }

  @override
  String card_detail_screen_reversed_meaning_prompt(
      Object cardName, Object lang) {
    return '用$lang语言描述塔罗牌\"\"$cardName\\\"的逆位含义。包括相反的意义和警示。';
  }

  @override
  String card_detail_screen_symbolism_prompt(Object cardName, Object lang) {
    return '用$lang语言描述塔罗牌\"\"$cardName\\\"的象征意义。包括图像细节、颜色及其含义。';
  }

  @override
  String card_detail_screen_description(Object cardName) {
    return '$cardName牌的描述';
  }

  @override
  String get card_detail_screen_see_other_card_meaning => '查看另一张牌的含义';

  @override
  String get card_detail_screen_or => '或者';

  @override
  String get card_detail_screen_loading_language => '加载语言...';

  @override
  String get card_detail_screen_see_card_meaning => '查看卡牌含义';

  @override
  String get card_detail_screen_original_waite_text => '韦特原文';

  @override
  String get card_detail_screen_no_original_text => '无原文';

  @override
  String card_of_the_day_screen_translate_card_name_prompt(
      Object cardName, Object languageCode) {
    return '将塔罗牌名称 \"\"$cardName\\\" 翻译成 $languageCode。答案应仅包含翻译后的名称，不包含额外文本或标点符号。';
  }

  @override
  String card_of_the_day_screen_generate_description_prompt(
      Object cardName, Object name) {
    return '你是专业的塔罗牌读者。请为用户$name用该请求的语言写一条鼓舞人心的\"今日之牌\"信息。遵循结构和篇幅要求。\n🌟 $name，你的今日之牌是$cardName！\n🔑 关键词：<请列出3–5个简短关键词>\n🃏 含义（约45–50字）：描述这张牌的主要能量以及它今天如何在$name身上体现。\n💡 建议（约35–40字）：提出具体的行动或心态，帮助$name利用这股能量。\n✨ 肯定语（1行）：以\"我……\"开头的积极肯定句。\n要求：总长度120–150字，温暖的神秘语气，3–4个主题表情符号，不使用HTML/Markdown列表；段落用双换行分隔（\\n\\n）。';
  }

  @override
  String get card_of_the_day_screen_title => '今日之牌';

  @override
  String get card_of_the_day_screen_error_loading_card => '牌面加载错误';

  @override
  String career_finance_spread_screen_prompt(Object cards, Object userName) {
    return '为$userName根据这三张牌$cards做一次职业和财务的牌阵解读';
  }

  @override
  String get contact_us_title => '联系我们';

  @override
  String get contact_us_email_hint => '您的电子邮件';

  @override
  String get contact_us_email_empty => '请输入电子邮件';

  @override
  String get contact_us_email_invalid => '电子邮件格式不正确';

  @override
  String get contact_us_message_hint => '您的留言';

  @override
  String get contact_us_message_empty => '请输入留言';

  @override
  String get contact_us_send_button => '发送';

  @override
  String get five_cards_spread_screen_what_is_five_cards_dialog => '什么是五张牌的牌阵？';

  @override
  String get five_cards_spread_screen_five_cards_explanation_dialog =>
      '这个牌阵揭示了你问题的整个过程：\n牌1 - 过去 显示最初的情况，\n牌2 - 现在 — 当前的能量，\n牌3 - 隐藏 揭示隐藏的影响，\n牌4 - 建议 指出最佳行动，\n牌5 - 结果 预测可能的结局。';

  @override
  String get five_cards_spread_screen_understand_button => '明白了';

  @override
  String get language_selection_screen_title => '语言';

  @override
  String get love_spread_screen_what_is_love_spread => '什么是爱情牌阵？';

  @override
  String get love_spread_screen_love_spread_explanation =>
      '爱情三联牌是三张牌，从左到右排列：\n牌1 - 你 — 显示求问者的感情、动机和立场。\n牌2 - 伴侣 — 揭示对方的情感、计划和准备情况。\n牌3 - 动态 / 潜力 — 描述两种能量目前如何互动，以及关系在近期可能的发展方向。';

  @override
  String get love_spread_screen_understand_button => '明白了';

  @override
  String get main_screen_your_plan_trial => '您的计划：试用（含广告）';

  @override
  String get main_screen_no_ads => '• 无广告';

  @override
  String get main_screen_no_limits => '• 无限制';

  @override
  String get main_screen_shop_soon => '商店（即将推出）';

  @override
  String get main_screen_notification_settings => '通知设置';

  @override
  String get main_screen_language_selection => '语言选择';

  @override
  String get main_screen_rate_app => '评价应用程序';

  @override
  String get main_screen_contact_us => '联系我们';

  @override
  String get main_screen_classic_spreads_title => '经典牌阵';

  @override
  String get main_screen_classic_spreads_description =>
      '2 / 3 / 5 张牌的牌阵和完整展开的凯尔特十字';

  @override
  String get main_screen_card_meanings_title => '牌义';

  @override
  String get main_screen_card_meanings_description =>
      '所有大阿尔克那和小阿尔克那正位与逆位含义的完整指南';

  @override
  String get main_screen_card_combination_description =>
      '\"塔罗牌计算器\" 选择牌卡并获得深入的关系分析';

  @override
  String get notification_settings_screen_title => '通知设置';

  @override
  String get notification_settings_screen_frequency_question =>
      '您希望多久收到一次每日牌卡通知？';

  @override
  String get notification_settings_screen_every_day => '每天';

  @override
  String get notification_settings_screen_every_three_days => '每三天一次';

  @override
  String get notification_settings_screen_every_week => '每周一次';

  @override
  String get notification_settings_screen_time_question => '一天中的哪个时间？';

  @override
  String get notification_settings_screen_morning => '早上';

  @override
  String get notification_settings_screen_day => '下午';

  @override
  String get notification_settings_screen_evening => '晚上';

  @override
  String get notification_settings_screen_save_button => '保存';

  @override
  String get onboarding_final_screen_yearly_price => '249/年';

  @override
  String get onboarding_final_screen_yearly_month_price => '24/月';

  @override
  String get onboarding_final_screen_monthly_price => '月付';

  @override
  String get onboarding_final_screen_monthly_month_price => '9/月';

  @override
  String get onboarding_final_screen_yearly_plan => '每年';

  @override
  String get onboarding_final_screen_free_trial => '7天免费';

  @override
  String get onboarding_final_screen_purchase_title => '购买';

  @override
  String onboarding_final_screen_test_stub_message(Object plan) {
    return '测试占位符：已选择套餐\"$plan\\\"';
  }

  @override
  String get onboarding_final_screen_ok_button => '确定';

  @override
  String get purchase_love_screen_yearly_price => '249/年';

  @override
  String get purchase_love_screen_yearly_month_price => '24/月';

  @override
  String get purchase_love_screen_monthly_price => '月付';

  @override
  String get purchase_love_screen_monthly_month_price => '9/月';

  @override
  String get purchase_love_screen_title => '购买';

  @override
  String get purchase_love_screen_ok_button => '确定';

  @override
  String quick_reading_screen_error_no_image_file_found(Object cardName) {
    return '错误：未找到卡片的图像文件：$cardName';
  }

  @override
  String get please_fill_all_fields => '请填写所有卡片字段。';

  @override
  String get please_select_cards_only_from_suggested_list =>
      '请选择仅来自建议列表的卡片。无效的卡片：';

  @override
  String get please_select_different_cards_in_all_fields => '请在所有字段中选择不同的卡片。';

  @override
  String get card => '牌';

  @override
  String get get_combination => '查看组合';

  @override
  String get new_spread => '做一个新的牌阵';

  @override
  String get app_uses_ai_for_entertainment_purposes =>
      '该应用程序仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String get career_finance_spread_screen_what_is_career_finance_spread =>
      '什么是职业和财务牌阵？';

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
    return '你是经验丰富的塔罗师。用户 $userName 问道：\"$userQuestion\\\"。请用\"凯尔特十字\"牌阵（韦特经典布局）回答。牌面顺序为：现状 - $situationCard；挑战 - $challengeCard；潜意识 - $subconsciousCard；近期过去 - $pastCard；意识 - $consciousCard；近期未来 - $hiddenCard；内在自我 - $selfCard；环境 - $environmentCard；希望或恐惧 - $hopesCard；结果 - $outcomeCard。请至少提及 $userName 六次，并确保每张牌都与问题相关。结构如下：\n1) 向 $userName 打招呼。\n2) 标题：牌阵：现状（$situationCard）/ 挑战（$challengeCard）/ 潜意识（$subconsciousCard）/ 近期过去（$pastCard）/ 意识（$consciousCard）/ 近期未来（$hiddenCard）/ 内在自我（$selfCard）/ 环境（$environmentCard）/ 希望/恐惧（$hopesCard）/ 结果（$outcomeCard）。\n3) 现状 — $situationCard（45-55字）：三个关键词，牌面象征及当前关于 $userName 的问题 $userQuestion 的形势。\n4) 挑战 — $challengeCard（45-55字）：对 $userName 来说的主要障碍或帮助。\n5) 潜意识 — $subconsciousCard（45-55字）：影响 $userName 的隐藏动机或能量。\n6) 近期过去 — $pastCard（45-55字）：导致 $userName 现状的事件。\n7) 意识 — $consciousCard（45-55字）：$userName 的目标、期望或意识到的事物。\n8) 近期未来 — $hiddenCard（45-55字）：未来几周可能的发展。\n9) 内在自我 — $selfCard（45-55字）：$userName 的状态和资源。\n10) 环境 — $environmentCard（45-55字）：人际和环境的影响。\n11) 希望 / 恐惧 — $hopesCard（45-55字）：$userName 的期望或担忧。\n12) 结果 — $outcomeCard（45-55字）：结合牌阵建议的可能结果。\n13) 结语：对 $userName 的友好支持和积极肯定（30-35字）。\n要求：总字数400-500字，语气生动口语化，包含4-6个神秘主题表情符号；每个部分用双换行分隔\n；不使用 *、# 或其他格式符号；仅用纯文本书写。';
  }

  @override
  String get celtic_cross_screen_unable_to_load_card => '无法加载牌面';

  @override
  String get celticCrossTitle => '凯尔特十字';

  @override
  String get chat_with_tarot_reader_screen_request_received => '您的请求已收到。请展开牌面';

  @override
  String chat_with_tarot_reader_screen_prompt(
      Object hiddenCard,
      Object pastCard,
      Object presentCard,
      Object userName,
      Object userQuestion) {
    return '你是经验丰富的塔罗师。用户 $userName 问道：\"$userQuestion\"。请用\"过去 - 现在 - 未来\"牌阵回答。牌面顺序为：过去 - $pastCard；现在 - $presentCard；未来 - $hiddenCard。请至少提及 $userName 四次，并确保牌义与问题相关。结构如下：\n1) 向 $userName 打招呼。\n2) 标题：牌阵：过去（$pastCard）- 现在（$presentCard）- 未来（$hiddenCard）。\n3) 过去部分 — $pastCard（40-50字）：三个关键词，牌面象征及过去事件如何影响 $userName 的问题 $userQuestion 的结果。\n4) 现在部分 — $presentCard（40-50字）：关键词，牌面象征及当前影响 $userName 对问题 $userQuestion 回答的因素。\n5) 未来部分 — $hiddenCard（40-50字）：关键词，牌面象征及关于 $userName 问题的可能发展情景。\n6) 结论：简短建议，积极肯定（20-30字）及明确的机会总结。\n要求：总字数180-220字，语气温暖神秘，包含3-5个主题表情符号；每个部分用双换行分隔\n；禁止使用 *、# 或其他格式符号；仅用纯文本书写。';
  }

  @override
  String get see_meaning_button => '了解含义';

  @override
  String three_cards_title(Object cards) {
    return '牌阵中有3张牌';
  }

  @override
  String get new_spread_button => '制作新的牌阵';

  @override
  String get disclaimer_text => '本应用仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String get enter_your_question => '请输入您的问题...';

  @override
  String get classic_spreads_screen_title => '经典牌阵';

  @override
  String get classic_spreads_screen_three_cards_title => '3张牌';

  @override
  String get classic_spreads_screen_three_cards_description => '过去，现在，未来';

  @override
  String get classic_spreads_screen_five_cards_title => '5张牌';

  @override
  String get classic_spreads_screen_five_cards_description => '深入分析情况';

  @override
  String get classic_spreads_screen_celtic_cross_title => '凯尔特十字';

  @override
  String get classic_spreads_screen_celtic_cross_description => '完整的10张牌牌阵';

  @override
  String five_cards_screen_prompt(
      Object adviceCard,
      Object hiddenCard,
      Object outcomeCard,
      Object pastCard,
      Object presentCard,
      Object userName,
      Object userQuestion) {
    return '你是一位经验丰富的塔罗牌占卜师。用户$userName问道：\"$userQuestion\"。请使用\"5张牌\"阵型回答。牌按顺序给出：过去 - $pastCard; 现在 - $presentCard; 隐藏 - $hiddenCard; 建议 - $adviceCard; 结果 - $outcomeCard。请至少五次提到$userName，并确保将每张牌与问题联系起来。请遵循以下结构：\n\n1）以$userName的名字问候。\n\n2）标题：阵型：过去（$pastCard）/ 现在（$presentCard）/ 隐藏（$hiddenCard）/ 建议（$adviceCard）/ 结果（$outcomeCard）。\n\n3）过去 — $pastCard（45-55字）：三个关键词，牌的象征意义，以及过去对$userName的$userQuestion的影响。\n\n4）现在 — $presentCard（45-55字）：关键词，象征意义，$userName问题的当前状态。\n\n5）隐藏 — $hiddenCard（45-55字）：无意识地影响$userName情况的因素，重点关注象征意义。\n\n6）建议 — $adviceCard（45-55字）：基于牌面图像的$userName的实用行动。\n\n7）结果 — $outcomeCard（45-55字）：如果遵循建议的可能情景，向$userName致辞。\n\n8）结论：对$userName的友好支持和积极肯定（25-30字）。\n\n要求：总字数230-260字，生动的对话语调，3-5个神秘表情符号；用双换行（\\n\\n）分隔每个块；不要使用*, #或其他标记符号；只写纯文本。';
  }

  @override
  String get fiveCardsInSpread => '牌阵中的5张牌';

  @override
  String get makeNewSpread => '进行新的牌阵';

  @override
  String
      get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMake =>
          '该应用程序仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String get requestReceivedPleaseOpenCards => '您的请求已收到。请翻开牌卡。';

  @override
  String love_spread_prompt(Object dynamicCard, Object partnerCard,
      Object userName, Object userQuestion, Object youCard) {
    return '你是一位经验丰富的塔罗牌读者。用户 $userName 问道：\"$userQuestion\"。请用三张牌的爱情牌阵回答。牌面如下：$userName 的感情 — $youCard；伴侣的感情 — $partnerCard；关系的动态或潜力 — $dynamicCard。请至少三次提及 $userName 的名字，并将每张牌与问题联系起来。结构如下：\n1) 以 $userName 的名字打招呼。\n2) 标题：牌阵：$youCard | $partnerCard | $dynamicCard。\n3) $youCard — 40–50 字：描述这张牌对 $userName 的感情和期待的含义。\n4) $partnerCard — 40–50 字：揭示伴侣对 $userName 问题的情感和意图。\n5) $dynamicCard — 40–50 字：展示这两种能量如何互动以及关系可能的发展。\n6) 结语：给 $userName 温暖的建议和积极的肯定（20–25 字）。\n要求：总字数 150–180 字，友好浪漫的语气，2–4 个主题表情符号；段落用双换行分隔（\\n\\n）；避免使用 *、# 及任何格式标记。';
  }

  @override
  String get loveSpread => '爱情牌阵';

  @override
  String
      get applicationUsesAIExclusivelyForEntertainmentWeDoNotTakeResponsibilityForDecisionsYouHaveMadeIfNeededPleaseConsultSpecialist =>
          '该应用程序仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String main_screen_greeting_with_name(Object name) {
    return '你好，$name';
  }

  @override
  String get main_screen_monday => '星期一';

  @override
  String get main_screen_tuesday => '星期二';

  @override
  String get main_screen_wednesday => '星期三';

  @override
  String get main_screen_thursday => '星期四';

  @override
  String get main_screen_friday => '星期五';

  @override
  String get main_screen_saturday => '星期六';

  @override
  String get main_screen_sunday => '星期日';

  @override
  String get main_screen_your_card_of_the_day => '你今天的牌';

  @override
  String main_screen_card_of_the_day_with_name(Object cardName) {
    return '今日之牌：$cardName';
  }

  @override
  String get main_screen_card_of_the_day => '今日之卡：';

  @override
  String get main_screen_viewed => '已开启';

  @override
  String get main_screen_not_viewed => '查看';

  @override
  String get main_screen_spreads => '牌阵';

  @override
  String get main_screen_training => '教程';

  @override
  String get main_screen_entertainment => '娱乐';

  @override
  String get main_screen_glad_to_see_you_here => '很高兴见到您！';

  @override
  String get main_screen_quick_reading_title => '快速占卜';

  @override
  String get main_screen_quick_reading_description => '只需轻触几下，即可用一张牌获得您问题的明确答案';

  @override
  String get monthly_forecast_spread_screen_request_accepted => '您的请求已收到。请展开牌阵';

  @override
  String monthly_forecast_spread_screen_prompt(Object cards, Object userName) {
    return '为 $userName 制作这些牌的月度预测：$cards';
  }

  @override
  String get aboutSpread => '关于牌阵';

  @override
  String get monthlyForecast => '月度预测';

  @override
  String
      get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNecessaryPleaseConsultSpecialist =>
          '本应用程序仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String purchase_love_screen_test_message(Object planName) {
    return '测试占位符：已选择套餐 \"$planName\\\"';
  }

  @override
  String get quick_reading_screen_what_is_quick_reading => '什么是快速占卜？';

  @override
  String get quick_reading_screen_quick_reading_explanation =>
      '快速占卜是一种快速占卜（答案：是或否），帮助您立即获得对具体问题或当天整体氛围的清晰回答。非常适合需要\"此时此刻\"快速灵感或建议的时候。';

  @override
  String get self_development_balance_spread_screen_request_accepted =>
      '您的请求已被接受。请翻开牌卡';

  @override
  String get self_development_balance_spread_screen_error_getting_value =>
      '获取占卜结果时出错。请再试一次。';

  @override
  String
      get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNeededConsultSpecialist =>
          '本应用仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String get thematic_spreads_screen_title => '主题牌阵';

  @override
  String get thematic_spreads_screen_love_spread_title => '爱情牌阵';

  @override
  String get thematic_spreads_screen_love_spread_description => '关系与感情分析';

  @override
  String get thematic_spreads_screen_career_finance_title => '职业与财务';

  @override
  String get thematic_spreads_screen_career_finance_description => '专业与财务分析';

  @override
  String get thematic_spreads_screen_pros_cons_title => '利与弊';

  @override
  String get thematic_spreads_screen_pros_cons_description => '优缺点分析';

  @override
  String get thematic_spreads_screen_monthly_forecast_title => '月度预测';

  @override
  String get thematic_spreads_screen_monthly_forecast_description => '按月预测';

  @override
  String get thematic_spreads_screen_self_development_title => '自我提升与平衡';

  @override
  String get thematic_spreads_screen_self_development_description => '精神成长与和谐';

  @override
  String get requestReceived => '您的请求已被接受。请翻开牌卡';

  @override
  String pros_cons_spread_prompt(Object cards, Object userName) {
    return '为$userName做一组关于这些牌卡的利与弊解析：$cards';
  }

  @override
  String get pros_cons_spread_screen_what_is_pros_cons_spread =>
      '什么是\"利与弊\"牌阵？';

  @override
  String get pros_cons_spread_screen_pros_cons_spread_explanation =>
      '\"利与弊\"牌阵帮助分析情况的优缺点，以便做出明智的决定。';

  @override
  String get pros_cons_spread_screen_understand_button => '明白';

  @override
  String get prosConsSpreadTitle => '正反两面牌阵';

  @override
  String get spreadDisclaimer => '本应用仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String get fun_spread_screen_generation_error => '生成牌阵时出错。请再试一次。';

  @override
  String get fun_spread_screen_share_error => '保存图片时出错。';

  @override
  String get fun_spread_screen_about_fun_spread => '什么是有趣的牌阵？';

  @override
  String get fun_spread_screen_fun_spread_explanation =>
      '有趣的牌阵是一种特殊的塔罗牌占卜方式，结合了传统牌阵的深度与轻松积极的态度。它将帮助你从新的角度看待情况，在日常生活中找到快乐。';

  @override
  String get fun_spread_screen_understand_button => '明白了';

  @override
  String get fun_spread_screen_title => '有趣的牌阵';

  @override
  String get fun_spread_screen_generate_button => '创建牌阵';

  @override
  String get fun_spread_screen_share_button => '分享';

  @override
  String get fun_spread_screen_new_button => '新牌阵';

  @override
  String get fun_spread_screen_share_text => '看看我在Tarot AI应用中得到的有趣塔罗牌阵！';

  @override
  String get ad_promo_tariff => '套餐';

  @override
  String get ad_promo_love => '爱情';

  @override
  String get ad_promo_discount => '促销 -50%';

  @override
  String get ad_promo_no_ads => '• 无广告';

  @override
  String get ad_promo_no_limits => '• 无限制';

  @override
  String get no_internet_error => '我们的应用程序仅在联网状态下工作。请开启Wi-Fi或移动网络。';

  @override
  String fun_spread_screen_mate_prompt_3cards(Object userName) {
    return '为$userName做一个非常搞笑、放肆且带点脏话的三张塔罗牌占卜。每张牌起一个搞笑的名字，并写一个独立段落：第一张牌：<名称> — <简短搞笑描述>，第二张牌：<名称> — <简短搞笑描述>，第三张牌：<名称> — <简短搞笑描述>。使用脏话增加幽默感，但不要冒犯人。全文不超过7句。';
  }

  @override
  String fun_spread_screen_no_mate_prompt_3cards(Object userName) {
    return '为$userName创建一个有趣的三张牌塔罗牌阵。为每张牌想一个搞笑的名称并写一个单独的段落：第一张牌：<名称> — <简短搞笑的描述>，第二张牌：<名称> — <简短搞笑的描述>，第三张牌：<名称> — <简短搞笑的描述>。牌阵应当有趣但富有深意。仅限三张牌。全文不超过7句。';
  }

  @override
  String get fun_spread_screen_title_top => '塔罗牌阵';

  @override
  String fun_spread_screen_title_for_name(Object name) {
    return '为$name';
  }

  @override
  String get contact_us_screen_message_sent => '您的消息已收到，谢谢！';

  @override
  String get contact_us_screen_message_error => '消息发送失败';

  @override
  String get love_spread_screen_initial_message => '您好，请在下方写下您的问题：';

  @override
  String get main_screen_tariff => '资费';

  @override
  String get main_screen_promo_50 => '促销 -50%';

  @override
  String get main_screen_rate_hint => '如果评分窗口未出现，您可以在 Google Play 留下评论。';

  @override
  String get main_screen_rate_error => '无法打开 Google Play。请稍后再试。';

  @override
  String get love_spread_screen_suggested_questions_1 => '我对这个人有什么感觉？';

  @override
  String get love_spread_screen_suggested_questions_2 => '是什么阻碍了我们的关系？';

  @override
  String get love_spread_screen_suggested_questions_3 => '我们的关系将会有什么样的未来？';

  @override
  String get career_finance_spread_screen_suggested_questions_1 =>
      '我的职业生涯有哪些机会？';

  @override
  String get career_finance_spread_screen_suggested_questions_2 =>
      '如何改善我的财务状况？';

  @override
  String get career_finance_spread_screen_suggested_questions_3 => '值得换工作吗？';

  @override
  String get pros_cons_spread_screen_suggested_questions_1 => '我应该做出这个决定吗？';

  @override
  String get pros_cons_spread_screen_suggested_questions_2 => '这个选择有哪些优点和缺点？';

  @override
  String get pros_cons_spread_screen_suggested_questions_3 => '在这种情况下什么更重要？';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_1 =>
      '这个月我会遇到什么？';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_2 =>
      '近期会发生哪些事件？';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_3 =>
      '本月应重点关注什么？';

  @override
  String get self_development_balance_spread_screen_suggested_questions_1 =>
      '我该如何进行精神上的成长？';

  @override
  String get self_development_balance_spread_screen_suggested_questions_2 =>
      '什么阻碍了我的内心平衡？';

  @override
  String get self_development_balance_spread_screen_suggested_questions_3 =>
      '如何在生活中找到和谐？';

  @override
  String career_three_card_prompt(Object adviceCard, Object challengeCard,
      Object situationCard, Object userName, Object userQuestion) {
    return '你是一位经验丰富的塔罗教练。用户$userName问道：\"$userQuestion\"。请做一个关于职业和财务的三张牌牌阵。牌的顺序是：1）现状 — $situationCard；2）障碍或关键机会 — $challengeCard；3）建议与潜力 — $adviceCard。根据$userName的名字判断性别，并使用正确的词尾和代词。以友好且专业的方式与$userName交流：指出他目前的位置，阻碍成长的因素（或需要注意的机会），以及实现理想收入的实际步骤。至少提及$userName三次。结构如下：\n1）问候 — 1句。\n2）标题：牌阵：$situationCard | $challengeCard | $adviceCard。\n3）$situationCard — 45–55字：描述$userName当前的状况（工作、业务或整体财务背景）及牌的象征意义。\n4）$challengeCard — 45–55字：揭示主要障碍或隐含机会；说明其如何反映在牌面和$userName的问题中。\n5）$adviceCard — 45–55字：提出具体行动（如重新审视预算、请求加薪、学习新技能）及可能的结果。\n6）结尾 — 20–25字：友好总结，积极肯定及两个商务表情符号。\n要求：总字数160–185字，清晰专业语气，无俚语，2–3个表情符号；段落用双换行分隔；不使用*、#等标记。';
  }

  @override
  String pros_cons_three_card_prompt(Object adviceCard, Object conCard,
      Object proCard, Object userName, Object userQuestion) {
    return '你是一位经验丰富的塔罗师。用户$userName问道：\"$userQuestion\"。请做一个三张牌的\"利与弊\"牌阵。牌的顺序是：优点 — $proCard；缺点 — $conCard；建议/总结 — $adviceCard。根据$userName的名字判断性别，并使用正确的词尾和代词。至少提及$userName三次，并将每张牌与问题关联。结构如下：\n1）以$userName的名字问候。\n2）标题：牌阵：$proCard | $conCard | $adviceCard。\n3）优点：$proCard — 45–55字。揭示这张牌为$userName的情况带来的主要利益或积极资源。\n4）缺点：$conCard — 45–55字。描述对$userName方案的风险、隐性成本或弱点。\n5）建议：$adviceCard — 45–55字。权衡利弊，提出一个具体行动（动词+对象），并说明这将如何改变$userName的结果。\n6）总结 — 一个词\"是\"或\"否\"，随后一句理由和鼓励性肯定（20–25字），附1–2个表情符号。\n要求：总字数150–180字，友好口语语气；各部分用双换行分隔；不使用*、#或其他标记。';
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
    return '你是一位专业塔罗师。用户$userName问道：\"$userQuestion\"。请做一个关于$month的\"月轮\"牌阵。牌按顺序为：1 — $card1，2 — $card2，3 — $card3，4 — $card4，5 — $card5，6 — $card6，7 — $card7，8 — $card8，9 — $card9，10 — $card10，11 — $card11，12 — $card12。根据$userName的名字判断性别，并使用正确的词尾和代词。至少提及$userName五次，但**不要在每个日期后都插入名字**，只在建议内容中自然提及。使用日期网格：1–3，4–6，7–9，10–12，13–15，16–18，19–21，22–24，25–26，27–28，29–30，31（如果月份有30天，第12张牌对应30号）。格式：\n1）以$userName的名字问候（1–2句）。\n2）简短介绍牌阵目的（1句）。\n3–14）每张牌用\"1–3 $month — $card1\"格式（不带名字）：随后2–3句描述该期间的主要能量和实用建议，自然提及$userName。\n15）总结：本月总体建议（约40字）及激励肯定，附2–3个表情符号。\n要求：总字数360–400字；友好激励语气；各部分用双换行分隔；不使用*、#、列表或技术标记。';
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
    return '你是一位经验丰富的塔罗教练。用户$userName问道：\"$userQuestion\"。请做一个七张牌的\"自我发展与平衡\"牌阵。牌的顺序是：核心 — $coreCard；思维 — $mindCard；情绪 — $emotionCard；身体 — $bodyCard；资源 — $strengthCard；阻碍 — $challengeCard；建议 — $adviceCard。根据$userName的名字判断性别，并使用正确的词尾和代词。语言生动且支持性强，至少提及$userName四次，且每张牌都要与问题相关。结构和格式如下：\n1）以$userName的名字问候。\n2）标题：牌阵：$coreCard | $mindCard | $emotionCard | $bodyCard | $strengthCard | $challengeCard | $adviceCard。\n3）$coreCard — 描述$userName自我发展的主要焦点。\n4）$mindCard — 说明如何调整思维及学习内容。\n5）$emotionCard — 揭示情绪资源和动力。\n6）$bodyCard — 提示如何照顾身体和能量。\n7）$strengthCard — 展示内在天赋或外部支持。\n8）$challengeCard — 指出主要失衡及其原因。\n9）$adviceCard — 提出整合各方面的具体行动。\n10）结尾：激励肯定和温暖祝福，附2–3个表情符号。\n要求：每点2–3句；各点间用双换行分隔；不使用*、#或其他标记。';
  }

  @override
  String get main_screen_suggest_spread => '还缺少什么牌阵？请写信告诉我们';

  @override
  String get main_screen_disclaimer =>
      '本应用仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String get month_january => '一月';

  @override
  String get month_february => '二月';

  @override
  String get month_march => '三月';

  @override
  String get month_april => '四月';

  @override
  String get month_may => '五月';

  @override
  String get month_june => '六月';

  @override
  String get month_july => '七月';

  @override
  String get month_august => '八月';

  @override
  String get month_september => '九月';

  @override
  String get month_october => '十月';

  @override
  String get month_november => '十一月';

  @override
  String get month_december => '十二月';

  @override
  String get fun_share_button => '分享';

  @override
  String get fun_new_spread_button => '新牌阵';
}

/// The translations for Chinese, as used in China (`zh_CN`).
class AppLocalizationsZhCn extends AppLocalizationsZh {
  AppLocalizationsZhCn() : super('zh_CN');

  @override
  String get main_title => '占卜并学习塔罗牌';

  @override
  String get your_name => '您的名字';

  @override
  String get personalization_hint => '向AI塔罗师提问，获得个性化牌阵';

  @override
  String get start_button => '开始';

  @override
  String get language => '语言';

  @override
  String get continueBtn => '继续';

  @override
  String get card_of_the_day => '今日之卡';

  @override
  String get description => '描述';

  @override
  String get spreads => '牌阵';

  @override
  String get quick_spread => '快速牌阵';

  @override
  String get classic_spreads => '经典牌阵';

  @override
  String get thematic_spreads => '主题牌阵';

  @override
  String get card_combination => '牌组组合';

  @override
  String get card_meanings => '牌义';

  @override
  String get training => '教学';

  @override
  String get welcome => '欢迎';

  @override
  String get today => '今天';

  @override
  String get view => '观看';

  @override
  String get select_card => '选择卡片';

  @override
  String get please_select_cards => '请在所有字段中选择不同的卡片。';

  @override
  String get good_day => '祝你有美好的一天，\n选择牌卡以了解它们的组合和含义';

  @override
  String get language_hint => '为了完全个性化牌阵';

  @override
  String get quickReading => '快速牌阵';

  @override
  String get comingSoon => '即将推出';

  @override
  String get onboarding_notifications_title => '🔔 想不错过\"今日之牌\"和新的牌阵吗？';

  @override
  String get onboarding_notifications_subtitle => '请同意接收通知（无垃圾信息）。';

  @override
  String get onboarding_notifications_allow => '同意';

  @override
  String get onboarding_notifications_decline => '拒绝';

  @override
  String get suggested_questions_chat_1 => '告诉我我的爱情生活';

  @override
  String get suggested_questions_chat_2 => '我的职业生涯会发生什么？';

  @override
  String get suggested_questions_chat_3 => '我如何能够提升自己？';

  @override
  String get suggested_questions_chat_4 => '未来有哪些机会在等待我？';

  @override
  String get onboarding_final_title => '一切就绪！';

  @override
  String get onboarding_final_subtitle => '为了维持项目运行，我们会展示广告。但如果您不想看到，可以订阅';

  @override
  String get onboarding_final_benefits => '无广告\n无限制牌阵\n无限制学习';

  @override
  String get onboarding_final_yearly => '每年';

  @override
  String get onboarding_final_badge => '节省 50%';

  @override
  String get onboarding_final_yearly_price => '249/年';

  @override
  String get onboarding_final_yearly_month => '24/月';

  @override
  String get onboarding_final_trial => '7 天免费试用';

  @override
  String get onboarding_final_trial_price => '然后每月9';

  @override
  String get onboarding_final_trial_month => '每月';

  @override
  String get onboarding_final_note => '订阅不是强制的，会自动续订。您可以随时取消';

  @override
  String get onboarding_final_choose_yearly => '选择年度';

  @override
  String get onboarding_final_choose_trial => '选择7天免费试用';

  @override
  String get onboarding_final_or => '或者';

  @override
  String get onboarding_final_continue_ads => '继续观看广告';

  @override
  String get main_screen_greeting => '您好';

  @override
  String main_screen_date_today(Object date) {
    return '今天，$date';
  }

  @override
  String get main_screen_card_of_day_title => '您今天的牌卡';

  @override
  String main_screen_card_of_day_description(Object cardName) {
    return '今日之卡：$cardName';
  }

  @override
  String get main_screen_card_of_day_description_empty => '今日之卡：';

  @override
  String get main_screen_card_of_day_status_viewed => '已开启';

  @override
  String get main_screen_card_of_day_status_view => '查看';

  @override
  String get main_screen_section_spreads => '牌阵';

  @override
  String get main_screen_section_training => '学习';

  @override
  String get main_screen_section_entertainment => '娱乐';

  @override
  String get main_screen_quick_spread_title => '快速牌阵';

  @override
  String get main_screen_quick_spread_description => '只需轻触几下，即可用一张牌获得您问题的明确答案';

  @override
  String get main_screen_thematic_spreads_title => '主题牌阵';

  @override
  String get main_screen_thematic_spreads_description =>
      '重要领域的现成方案：爱情、事业、健康、旅行';

  @override
  String get main_screen_card_combination_title => '牌组组合';

  @override
  String get main_screen_fun_spread_title => '趣味牌阵';

  @override
  String get main_screen_fun_spread_description => '提升心情，做一个趣味牌阵并分享到社交网络';

  @override
  String get main_screen_love_badge => '爱情';

  @override
  String get card_combination_screen_title => '牌组组合';

  @override
  String get card_combination_screen_greeting => '您好，请选择牌组以了解组合和含义';

  @override
  String get card_combination_screen_card_hint => '牌';

  @override
  String get card_combination_screen_get_combination_button => '查看组合';

  @override
  String get card_combination_screen_new_spread_button => '进行新的牌阵';

  @override
  String get card_combination_screen_fill_all_fields_error => '请填写所有卡片字段。';

  @override
  String get card_combination_screen_invalid_cards_error =>
      '请选择仅来自建议列表的卡片。无效的卡片：';

  @override
  String get card_combination_screen_duplicate_cards_error => '请在所有字段中选择不同的卡片。';

  @override
  String get card_combination_screen_general_error => '错误：未能获取响应。请再试一次。';

  @override
  String get card_combination_screen_disclaimer =>
      '该应用程序仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String card_combination_screen_prompt(Object cards, Object lang) {
    return '分析塔罗牌组合：$cards。深入神秘地分析它们的相互作用并给出总体建议。答案完全使用$lang语言。无问候和结尾。';
  }

  @override
  String get quick_reading_screen_title => '快速占卜';

  @override
  String get quick_reading_screen_select_card => '选择一张牌';

  @override
  String get quick_reading_screen_get_answer_button => '获取答案';

  @override
  String get quick_reading_screen_what_is_quick_spread => '什么是快速占卜？';

  @override
  String get quick_reading_screen_quick_spread_explanation =>
      '快速占卜是一种快速占卜（答案：是或否），帮助您立即获得对具体问题或当天整体氛围的清晰回答。非常适合需要\"此时此刻\"快速灵感或建议的情况。';

  @override
  String get quick_reading_screen_understand_button => '明白了';

  @override
  String get quick_reading_result_screen_generating_response => '正在生成回答...';

  @override
  String quick_reading_result_screen_error_generating(Object error) {
    return '生成回答时出错：$error';
  }

  @override
  String quick_reading_result_screen_error_generating_response(Object e) {
    return '生成回答时出错：$e';
  }

  @override
  String get quick_reading_result_screen_what_is_quick_spread => '什么是快速牌阵？';

  @override
  String get quick_reading_result_screen_quick_spread_explanation =>
      '快速牌阵是一种快速占卜（答案：是或否），帮助您立即获得对具体问题或当天整体氛围的清晰回答。非常适合需要\"此时此刻\"的快速灵感或建议。';

  @override
  String get quick_reading_result_screen_understand_button => '明白了';

  @override
  String get quick_reading_result_screen_quick_spread_title => '快速牌阵';

  @override
  String get quick_reading_result_screen_new_spread_button => '新牌阵';

  @override
  String get quick_reading_result_screen_disclaimer =>
      '该应用程序仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String quick_reading_result_screen_prompt(Object cardName, Object userName) {
    return '你是一位经验丰富的塔罗牌读者。用户 $userName 抽到了牌——$cardName。\n答案牌：是 或 否（根据具体情况选择\"是\"或\"否\"）\n$userName，这张$cardName牌的能量带来了这样的答案，因为它象征着内心的力量和转变。$userName，这意味着你正处于一个重要的转折点，牌面显示你需要相信自己的直觉和潜力。 这张牌提醒你，虽然前路可能充满挑战，但坚持下去会带来积极的变化。它鼓励你勇敢面对未知，抓住机会。✨ 这对你来说是一个积极的信号，表明你正走在正确的道路上。';
  }

  @override
  String get career_finance_spread_screen_request_accepted => '您的请求已收到。请展开牌阵';

  @override
  String get career_finance_spread_screen_error_getting_value =>
      '获取牌阵数值时出错。请再试一次。';

  @override
  String get career_finance_spread_screen_what_is_career_finance =>
      '什么是职业与财务牌阵？';

  @override
  String get career_finance_spread_screen_career_finance_explanation =>
      '这个牌阵有助于分析职业和财务领域。您将了解机会、障碍和成长前景。';

  @override
  String get career_finance_spread_screen_understand_button => '明白了';

  @override
  String get career_finance_spread_screen_learn_meaning_button => '了解含义';

  @override
  String get career_finance_spread_screen_career_finance_title => '职业与财务';

  @override
  String get career_finance_spread_screen_new_spread_button => '进行新的牌阵分析';

  @override
  String get career_finance_spread_screen_disclaimer =>
      '该应用程序仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String get career_finance_spread_screen_enter_question_hint => '请输入您的问题...';

  @override
  String get pros_cons_spread_screen_what_is_pros_cons => '什么是\"利与弊\"牌阵？';

  @override
  String get pros_cons_spread_screen_pros_cons_title => '\"利与弊\"牌阵';

  @override
  String get pros_cons_spread_screen_enter_question_hint => '请输入您的问题...';

  @override
  String
      get self_development_balance_spread_screen_self_development_explanation =>
          '\"自我提升与平衡\"牌阵由7张牌组成，排列成圆形。每张牌象征着你精神成长和内在和谐的某个方面。';

  @override
  String get card_meanings_screen_major_arcana => '大阿尔克那';

  @override
  String get card_meanings_screen_wands => '权杖';

  @override
  String get card_meanings_screen_cups => '圣杯';

  @override
  String get card_meanings_screen_swords => '宝剑';

  @override
  String get card_meanings_screen_pentacles => '五角星';

  @override
  String get card_meanings_screen_title => '牌义';

  @override
  String get love_spread_screen_new_spread_button => '进行新牌阵';

  @override
  String get love_spread_screen_enter_question_hint => '请输入您的问题...';

  @override
  String purchase_love_screen_test_stub(Object plan) {
    return '测试占位符：已选择套餐 \"$plan\"';
  }

  @override
  String get purchase_love_screen_love_tariff_title => '爱心套餐';

  @override
  String get ad_promo_block_tariff => '套餐';

  @override
  String get ad_promo_block_love => '爱心';

  @override
  String get ad_promo_block_promotion_70 => '促销 -50%';

  @override
  String get ad_promo_block_no_ads => '• 无广告';

  @override
  String get ad_promo_block_no_limits => '• 无限制';

  @override
  String three_cards_screen_title(Object cards) {
    return '牌阵中有3张牌';
  }

  @override
  String get three_cards_screen_initial_message => '您好，请在下方输入您的请求：';

  @override
  String get three_cards_screen_request_accepted => '您的请求已收到。请翻开牌';

  @override
  String get three_cards_screen_suggested_questions_1 => '我现在的主要问题是什么？';

  @override
  String get three_cards_screen_suggested_questions_2 => '我应该在近期关注什么？';

  @override
  String get three_cards_screen_suggested_questions_3 => '有什么对我隐藏？';

  @override
  String get three_cards_screen_see_meaning_button => '了解含义';

  @override
  String get three_cards_screen_new_spread_button => '新牌阵';

  @override
  String get three_cards_screen_enter_question_hint => '请输入您的请求...';

  @override
  String get three_cards_screen_what_is_three_cards => '什么是三张牌牌阵？';

  @override
  String get three_cards_screen_three_cards_explanation =>
      '经典牌阵，展示您情况的过去、现在和未来。第一张牌代表过去，第二张牌代表现在，第三张牌代表未来。';

  @override
  String get three_cards_screen_understand_button => '明白了';

  @override
  String get three_cards_screen_error_getting_value => '获取牌阵值时出错。请再试一次。';

  @override
  String get three_cards_screen_disclaimer =>
      '本应用仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String get five_cards_screen_title => '牌阵中有5张牌';

  @override
  String get five_cards_screen_initial_message => '您好，请在下面写下您的请求：';

  @override
  String get five_cards_screen_request_accepted => '您的请求已收到。请展开牌阵';

  @override
  String get five_cards_screen_suggested_questions_1 => '我应该选择哪条路？';

  @override
  String get five_cards_screen_suggested_questions_2 => '是什么阻碍我实现目标？';

  @override
  String get five_cards_screen_suggested_questions_3 => '我有什么功能？';

  @override
  String get five_cards_screen_see_meaning_button => '了解含义';

  @override
  String get five_cards_screen_new_spread_button => '做一个新的牌阵';

  @override
  String get five_cards_screen_enter_question_hint => '请输入您的请求...';

  @override
  String get five_cards_screen_what_is_five_cards => '什么是五张牌牌阵？';

  @override
  String get five_cards_screen_five_cards_explanation =>
      '五张牌的牌阵是一种紧凑的布局，揭示了情况的五个关键方面：过去、现在、隐藏的影响、助手/障碍和可能的结果。';

  @override
  String get five_cards_screen_understand_button => '明白';

  @override
  String get five_cards_screen_error_getting_value => '获取牌阵数值时出错。请再试一次。';

  @override
  String get five_cards_screen_disclaimer =>
      '本应用仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String get celtic_cross_screen_title => '凯尔特十字架';

  @override
  String get celtic_cross_screen_initial_message => '您好，请在下面写下您的请求：';

  @override
  String get celtic_cross_screen_suggested_questions_1 => '我目前的主要问题是什么？';

  @override
  String get celtic_cross_screen_suggested_questions_2 => '我未来应该重点关注什么？';

  @override
  String get celtic_cross_screen_suggested_questions_3 => '有什么是对我隐藏的？';

  @override
  String get celtic_cross_screen_see_meaning_button => '了解含义';

  @override
  String get celtic_cross_screen_new_spread_button => '制作新牌阵';

  @override
  String get celtic_cross_screen_enter_question_hint => '请输入您的请求...';

  @override
  String get celtic_cross_screen_what_is_celtic_cross_dialog => '什么是凯尔特十字？';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_dialog =>
      '\"凯尔特十字\"是一种由10张牌组成的牌阵，详细解析情况的各个方面：当前环境、障碍、内在和外在影响，以及近期动态和最终结果。牌按顺序摆放：\n1 - 情况 — 问题的本质，此时此刻。\n2 - 挑战 — 有助或阻碍前进的因素。\n3 - 潜意识（根源）— 隐藏的动机和深层力量。\n4 - 最近的过去 — 导致当前状况的事件。\n5 - 意识（目标）— 询问者当前关注的焦点。\n6 - 近期未来 — 未来几周的可能发展。\n7 - \"我自己\" — 内心状态、资源、对问题的态度。\n8 - 环境 — 周围人的影响和环境因素。\n9 - 希望/恐惧 — 期待、疑虑、强烈情绪。\n10 - 结果 — 如果趋势持续，可能的结局。\n此牌阵帮助看到\"大局\"：你所处的位置，阻碍或助力，幕后隐藏的冲动，以及未来的走向。\n牌阵示意图见下图。';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_image =>
      'assets/images/kelt.png';

  @override
  String get celtic_cross_screen_understand_button => '明白';

  @override
  String celtic_cross_screen_please_open_cards(Object cards) {
    return '您的请求已收到。请打开卡片';
  }

  @override
  String celtic_cross_screen_request_accepted(Object cards) {
    return '请求已收到，请打开卡片';
  }

  @override
  String get the_user => '用户';

  @override
  String get good_day_please_write_your_question_below => '您好，请在下面写下您的请求';

  @override
  String get errorGettingSpreadMeaning => '获取牌阵结果时出错。请再试一次。';

  @override
  String get errorGettingSpreadMeaningPleaseTryAgain => '获取牌阵结果时出错。请再试一次。';

  @override
  String get seeMeaning => '查看结果';

  @override
  String get newSpread => '进行新的牌阵';

  @override
  String get enterYourQuestion => '请输入您的问题...';

  @override
  String get enterQuestion => '请输入您的问题...';

  @override
  String makeTarotReadingFor(Object lang) {
    return '为以下对象制作';
  }

  @override
  String get theUser => '用户';

  @override
  String onTheseThreeCards(Object userName) {
    return '为这三张牌做一个牌阵：';
  }

  @override
  String makeSelfDevelopmentAndBalanceTarotReadingFor(Object cards) {
    return '为$cards做一个自我发展与平衡的牌阵';
  }

  @override
  String get getAnswer => '了解答案';

  @override
  String get aboutTheSpread => '关于牌阵';

  @override
  String get aboutSpreadDescription => '这个牌阵有助于分析您的精神成长和内在和谐。';

  @override
  String get gotIt => '明白了';

  @override
  String get selfDevelopmentAndBalance => '自我发展与平衡';

  @override
  String get appUsageDisclaimer =>
      '该应用程序仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String get careerFinance => '职业与财务';

  @override
  String get fun_spread_screen_with_swear_words_title => '含脏话（18+）';

  @override
  String get fun_spread_screen_with_swear_words_subtitle => '适合喜欢刺激的人';

  @override
  String get fun_spread_screen_without_swear_words_title => '无脏话';

  @override
  String get fun_spread_screen_without_swear_words_subtitle => '没有脏话的有趣牌阵';

  @override
  String get fun_spread_screen_generating => '正在生成您的牌阵...';

  @override
  String get card_name_the_fool => '愚者';

  @override
  String get card_name_the_magician => '魔术师';

  @override
  String get card_name_the_high_priestess => '女祭司';

  @override
  String get card_name_the_empress => '女皇';

  @override
  String get card_name_the_emperor => '皇帝';

  @override
  String get card_name_the_hierophant => '教皇';

  @override
  String get card_name_the_lovers => '恋人';

  @override
  String get card_name_the_chariot => '战车';

  @override
  String get card_name_strength => '力量';

  @override
  String get card_name_the_hermit => '隐士';

  @override
  String get ok_button => '确定';

  @override
  String get cancel_button => '取消';

  @override
  String get analyzing_cards => '正在分析卡牌...';

  @override
  String get yes_button => '是';

  @override
  String get no_button => '没有';

  @override
  String get loading => '加载中...';

  @override
  String get error => '错误';

  @override
  String get success => '成功';

  @override
  String get failed => '失败';

  @override
  String get language_russian => '俄语';

  @override
  String get language_english_us => '英语（美国）';

  @override
  String get language_english_gb => '英语（英国）';

  @override
  String get card_name_wheel_of_fortune => '命运之轮';

  @override
  String get card_name_justice => '正义';

  @override
  String get card_name_the_hanged_man => '倒吊人';

  @override
  String get card_name_death => '死神';

  @override
  String get card_name_temperance => '节制';

  @override
  String get card_name_the_devil => '恶魔';

  @override
  String get card_name_the_tower => '塔楼';

  @override
  String get card_name_the_star => '星星';

  @override
  String get card_name_the_moon => '月亮';

  @override
  String get card_name_the_sun => '太阳';

  @override
  String get card_name_judgement => '审判';

  @override
  String get card_name_the_world => '世界';

  @override
  String get card_name_ace_of_wands => '权杖王牌';

  @override
  String get card_name_two_of_wands => '权杖二';

  @override
  String get card_name_three_of_wands => '权杖三';

  @override
  String get card_name_four_of_wands => '权杖四';

  @override
  String get card_name_five_of_wands => '权杖五';

  @override
  String get card_name_six_of_wands => '权杖六';

  @override
  String get card_name_seven_of_wands => '权杖七';

  @override
  String get card_name_eight_of_wands => '权杖八';

  @override
  String get card_name_nine_of_wands => '权杖九';

  @override
  String get card_name_ten_of_wands => '权杖十';

  @override
  String get card_name_page_of_wands => '权杖侍者';

  @override
  String get card_name_knight_of_wands => '权杖骑士';

  @override
  String get card_name_queen_of_wands => '权杖皇后';

  @override
  String get card_name_king_of_wands => '权杖国王';

  @override
  String get card_name_ace_of_cups => '圣杯王牌';

  @override
  String get card_name_two_of_cups => '圣杯二';

  @override
  String get card_name_three_of_cups => '圣杯三';

  @override
  String get card_name_four_of_cups => '圣杯四';

  @override
  String get card_name_five_of_cups => '圣杯五';

  @override
  String get card_name_six_of_cups => '圣杯六';

  @override
  String get card_name_seven_of_cups => '圣杯七';

  @override
  String get card_name_eight_of_cups => '圣杯八';

  @override
  String get card_name_nine_of_cups => '圣杯九';

  @override
  String get card_name_ten_of_cups => '圣杯十';

  @override
  String get card_name_page_of_cups => '圣杯侍者';

  @override
  String get card_name_knight_of_cups => '圣杯骑士';

  @override
  String get card_name_queen_of_cups => '圣杯皇后';

  @override
  String get card_name_king_of_cups => '圣杯国王';

  @override
  String get card_name_ace_of_swords => '宝剑王牌';

  @override
  String get card_name_two_of_swords => '宝剑二';

  @override
  String get card_name_three_of_swords => '三剑牌';

  @override
  String get card_name_four_of_swords => '四剑牌';

  @override
  String get card_name_five_of_swords => '五剑牌';

  @override
  String get card_name_six_of_swords => '六剑牌';

  @override
  String get card_name_seven_of_swords => '七剑牌';

  @override
  String get card_name_eight_of_swords => '宝剑八';

  @override
  String get card_name_nine_of_swords => '宝剑九';

  @override
  String get card_name_ten_of_swords => '宝剑十';

  @override
  String get card_name_page_of_swords => '宝剑侍从';

  @override
  String get card_name_knight_of_swords => '宝剑骑士';

  @override
  String get card_name_queen_of_swords => '宝剑皇后';

  @override
  String get card_name_king_of_swords => '宝剑国王';

  @override
  String get card_name_ace_of_pentacles => '金币王牌';

  @override
  String get card_name_two_of_pentacles => '金币二';

  @override
  String get card_name_three_of_pentacles => '金币三';

  @override
  String get card_name_four_of_pentacles => '五角星四';

  @override
  String get card_name_five_of_pentacles => '五角星五';

  @override
  String get card_name_six_of_pentacles => '五角星六';

  @override
  String get card_name_seven_of_pentacles => '五角星七';

  @override
  String get card_name_eight_of_pentacles => '五角星八';

  @override
  String get card_name_nine_of_pentacles => '九角星九';

  @override
  String get card_name_ten_of_pentacles => '九角星十';

  @override
  String get card_name_page_of_pentacles => '九角星侍从';

  @override
  String get card_name_knight_of_pentacles => '九角星骑士';

  @override
  String get card_name_queen_of_pentacles => '九角星皇后';

  @override
  String get card_name_king_of_pentacles => '五角星国王';

  @override
  String get quick_reading_screen_suggested_questions_1 => '我应该这样做吗？';

  @override
  String get quick_reading_screen_suggested_questions_2 => '这是正确的道路吗？';

  @override
  String get quick_reading_screen_suggested_questions_3 => '我需要知道什么？';

  @override
  String get monthly_forecast_spread_screen_see_meaning_button => '了解含义';

  @override
  String get monthly_forecast_spread_screen_new_spread_button => '制作新的牌阵';

  @override
  String get monthly_forecast_spread_screen_enter_question_hint => '请输入您的请求...';

  @override
  String get monthly_forecast_spread_screen_what_is_monthly_forecast =>
      '什么是月度预测？';

  @override
  String get monthly_forecast_spread_screen_monthly_forecast_explanation =>
      '月度预测显示未来一个月的主要事件和趋势。帮助您为变化做好准备并利用机会。';

  @override
  String get monthly_forecast_spread_screen_understand_button => '明白了';

  @override
  String get monthly_forecast_spread_screen_error_getting_value =>
      '获取牌阵数值时出错。请再试一次。';

  @override
  String get monthly_forecast_spread_screen_disclaimer =>
      '本应用仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String self_development_balance_spread_screen_prompt(
      Object cards, Object userName) {
    return '为$userName做一个关于自我提升和平衡的三张牌牌阵：$cards';
  }

  @override
  String get error_getting_answer_try_again => '错误：未能获得响应。请再试一次。';

  @override
  String get card_detail_screen_title => '牌卡详情';

  @override
  String get card_detail_screen_general_meaning => '总体含义';

  @override
  String get card_detail_screen_reversed_meaning => '颠倒含义';

  @override
  String get card_detail_screen_symbolism => '象征意义';

  @override
  String get card_detail_screen_error_loading_text => '文本加载错误';

  @override
  String card_detail_screen_general_meaning_prompt(
      Object cardName, Object lang) {
    return '用$lang语言描述塔罗牌\"\"$cardName\\\"的总体含义。包括历史、象征意义和主要含义。';
  }

  @override
  String card_detail_screen_reversed_meaning_prompt(
      Object cardName, Object lang) {
    return '用$lang语言描述塔罗牌\"\"$cardName\\\"的逆位含义。包括相反的意义和警示。';
  }

  @override
  String card_detail_screen_symbolism_prompt(Object cardName, Object lang) {
    return '用$lang语言描述塔罗牌\"\"$cardName\\\"的象征意义。包括图像细节、颜色及其含义。';
  }

  @override
  String card_detail_screen_description(Object cardName) {
    return '$cardName牌的描述';
  }

  @override
  String get card_detail_screen_see_other_card_meaning => '查看另一张牌的含义';

  @override
  String get card_detail_screen_or => '或者';

  @override
  String get card_detail_screen_loading_language => '加载语言...';

  @override
  String get card_detail_screen_see_card_meaning => '查看卡牌含义';

  @override
  String get card_detail_screen_original_waite_text => '韦特原文';

  @override
  String get card_detail_screen_no_original_text => '无原文';

  @override
  String card_of_the_day_screen_translate_card_name_prompt(
      Object cardName, Object languageCode) {
    return '将塔罗牌名称 \"\"$cardName\\\" 翻译成 $languageCode。答案应仅包含翻译后的名称，不包含额外文本或标点符号。';
  }

  @override
  String card_of_the_day_screen_generate_description_prompt(
      Object cardName, Object name) {
    return '你是专业的塔罗牌读者。请为用户$name用该请求的语言写一条鼓舞人心的\"今日之牌\"信息。遵循结构和篇幅要求。\n🌟 $name，你的今日之牌是$cardName！\n🔑 关键词：<请列出3–5个简短关键词>\n🃏 含义（约45–50字）：描述这张牌的主要能量以及它今天如何在$name身上体现。\n💡 建议（约35–40字）：提出具体的行动或心态，帮助$name利用这股能量。\n✨ 肯定语（1行）：以\"我……\"开头的积极肯定句。\n要求：总长度120–150字，温暖的神秘语气，3–4个主题表情符号，不使用HTML/Markdown列表；段落用双换行分隔（\\n\\n）。';
  }

  @override
  String get card_of_the_day_screen_title => '今日之牌';

  @override
  String get card_of_the_day_screen_error_loading_card => '牌面加载错误';

  @override
  String career_finance_spread_screen_prompt(Object cards, Object userName) {
    return '为$userName根据这三张牌$cards做一次职业和财务的牌阵解读';
  }

  @override
  String get contact_us_title => '联系我们';

  @override
  String get contact_us_email_hint => '您的电子邮件';

  @override
  String get contact_us_email_empty => '请输入电子邮件';

  @override
  String get contact_us_email_invalid => '电子邮件格式不正确';

  @override
  String get contact_us_message_hint => '您的留言';

  @override
  String get contact_us_message_empty => '请输入留言';

  @override
  String get contact_us_send_button => '发送';

  @override
  String get five_cards_spread_screen_what_is_five_cards_dialog => '什么是五张牌的牌阵？';

  @override
  String get five_cards_spread_screen_five_cards_explanation_dialog =>
      '这个牌阵揭示了你问题的整个过程：\n牌1 - 过去 显示最初的情况，\n牌2 - 现在 — 当前的能量，\n牌3 - 隐藏 揭示隐藏的影响，\n牌4 - 建议 指出最佳行动，\n牌5 - 结果 预测可能的结局。';

  @override
  String get five_cards_spread_screen_understand_button => '明白了';

  @override
  String get language_selection_screen_title => '语言';

  @override
  String get love_spread_screen_what_is_love_spread => '什么是爱情牌阵？';

  @override
  String get love_spread_screen_love_spread_explanation =>
      '爱情三联牌是三张牌，从左到右排列：\n牌1 - 你 — 显示求问者的感情、动机和立场。\n牌2 - 伴侣 — 揭示对方的情感、计划和准备情况。\n牌3 - 动态 / 潜力 — 描述两种能量目前如何互动，以及关系在近期可能的发展方向。';

  @override
  String get love_spread_screen_understand_button => '明白了';

  @override
  String get main_screen_your_plan_trial => '您的计划：试用（含广告）';

  @override
  String get main_screen_no_ads => '• 无广告';

  @override
  String get main_screen_no_limits => '• 无限制';

  @override
  String get main_screen_shop_soon => '商店（即将推出）';

  @override
  String get main_screen_notification_settings => '通知设置';

  @override
  String get main_screen_language_selection => '语言选择';

  @override
  String get main_screen_rate_app => '评价应用程序';

  @override
  String get main_screen_contact_us => '联系我们';

  @override
  String get main_screen_classic_spreads_title => '经典牌阵';

  @override
  String get main_screen_classic_spreads_description =>
      '2 / 3 / 5 张牌的牌阵和完整展开的凯尔特十字';

  @override
  String get main_screen_card_meanings_title => '牌义';

  @override
  String get main_screen_card_meanings_description =>
      '所有大阿尔克那和小阿尔克那正位与逆位含义的完整指南';

  @override
  String get main_screen_card_combination_description =>
      '\"塔罗牌计算器\" 选择牌卡并获得深入的关系分析';

  @override
  String get notification_settings_screen_title => '通知设置';

  @override
  String get notification_settings_screen_frequency_question =>
      '您希望多久收到一次每日牌卡通知？';

  @override
  String get notification_settings_screen_every_day => '每天';

  @override
  String get notification_settings_screen_every_three_days => '每三天一次';

  @override
  String get notification_settings_screen_every_week => '每周一次';

  @override
  String get notification_settings_screen_time_question => '一天中的哪个时间？';

  @override
  String get notification_settings_screen_morning => '早上';

  @override
  String get notification_settings_screen_day => '下午';

  @override
  String get notification_settings_screen_evening => '晚上';

  @override
  String get notification_settings_screen_save_button => '保存';

  @override
  String get onboarding_final_screen_yearly_price => '249/年';

  @override
  String get onboarding_final_screen_yearly_month_price => '24/月';

  @override
  String get onboarding_final_screen_monthly_price => '月付';

  @override
  String get onboarding_final_screen_monthly_month_price => '9/月';

  @override
  String get onboarding_final_screen_yearly_plan => '每年';

  @override
  String get onboarding_final_screen_free_trial => '7天免费';

  @override
  String get onboarding_final_screen_purchase_title => '购买';

  @override
  String onboarding_final_screen_test_stub_message(Object plan) {
    return '测试占位符：已选择套餐\"$plan\\\"';
  }

  @override
  String get onboarding_final_screen_ok_button => '确定';

  @override
  String get purchase_love_screen_yearly_price => '249/年';

  @override
  String get purchase_love_screen_yearly_month_price => '24/月';

  @override
  String get purchase_love_screen_monthly_price => '月付';

  @override
  String get purchase_love_screen_monthly_month_price => '9/月';

  @override
  String get purchase_love_screen_title => '购买';

  @override
  String get purchase_love_screen_ok_button => '确定';

  @override
  String quick_reading_screen_error_no_image_file_found(Object cardName) {
    return '错误：未找到卡片的图像文件：$cardName';
  }

  @override
  String get please_fill_all_fields => '请填写所有卡片字段。';

  @override
  String get please_select_cards_only_from_suggested_list =>
      '请选择仅来自建议列表的卡片。无效的卡片：';

  @override
  String get please_select_different_cards_in_all_fields => '请在所有字段中选择不同的卡片。';

  @override
  String get card => '牌';

  @override
  String get get_combination => '查看组合';

  @override
  String get new_spread => '做一个新的牌阵';

  @override
  String get app_uses_ai_for_entertainment_purposes =>
      '该应用程序仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String get career_finance_spread_screen_what_is_career_finance_spread =>
      '什么是职业和财务牌阵？';

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
    return '你是经验丰富的塔罗师。用户 $userName 问道：\"$userQuestion\\\"。请用\"凯尔特十字\"牌阵（韦特经典布局）回答。牌面顺序为：现状 - $situationCard；挑战 - $challengeCard；潜意识 - $subconsciousCard；近期过去 - $pastCard；意识 - $consciousCard；近期未来 - $hiddenCard；内在自我 - $selfCard；环境 - $environmentCard；希望或恐惧 - $hopesCard；结果 - $outcomeCard。请至少提及 $userName 六次，并确保每张牌都与问题相关。结构如下：\n1) 向 $userName 打招呼。\n2) 标题：牌阵：现状（$situationCard）/ 挑战（$challengeCard）/ 潜意识（$subconsciousCard）/ 近期过去（$pastCard）/ 意识（$consciousCard）/ 近期未来（$hiddenCard）/ 内在自我（$selfCard）/ 环境（$environmentCard）/ 希望/恐惧（$hopesCard）/ 结果（$outcomeCard）。\n3) 现状 — $situationCard（45-55字）：三个关键词，牌面象征及当前关于 $userName 的问题 $userQuestion 的形势。\n4) 挑战 — $challengeCard（45-55字）：对 $userName 来说的主要障碍或帮助。\n5) 潜意识 — $subconsciousCard（45-55字）：影响 $userName 的隐藏动机或能量。\n6) 近期过去 — $pastCard（45-55字）：导致 $userName 现状的事件。\n7) 意识 — $consciousCard（45-55字）：$userName 的目标、期望或意识到的事物。\n8) 近期未来 — $hiddenCard（45-55字）：未来几周可能的发展。\n9) 内在自我 — $selfCard（45-55字）：$userName 的状态和资源。\n10) 环境 — $environmentCard（45-55字）：人际和环境的影响。\n11) 希望 / 恐惧 — $hopesCard（45-55字）：$userName 的期望或担忧。\n12) 结果 — $outcomeCard（45-55字）：结合牌阵建议的可能结果。\n13) 结语：对 $userName 的友好支持和积极肯定（30-35字）。\n要求：总字数400-500字，语气生动口语化，包含4-6个神秘主题表情符号；每个部分用双换行分隔\n；不使用 *、# 或其他格式符号；仅用纯文本书写。';
  }

  @override
  String get celtic_cross_screen_unable_to_load_card => '无法加载牌面';

  @override
  String get celticCrossTitle => '凯尔特十字';

  @override
  String get chat_with_tarot_reader_screen_request_received => '您的请求已收到。请展开牌面';

  @override
  String chat_with_tarot_reader_screen_prompt(
      Object hiddenCard,
      Object pastCard,
      Object presentCard,
      Object userName,
      Object userQuestion) {
    return '你是经验丰富的塔罗师。用户 $userName 问道：\"$userQuestion\"。请用\"过去 - 现在 - 未来\"牌阵回答。牌面顺序为：过去 - $pastCard；现在 - $presentCard；未来 - $hiddenCard。请至少提及 $userName 四次，并确保牌义与问题相关。结构如下：\n1) 向 $userName 打招呼。\n2) 标题：牌阵：过去（$pastCard）- 现在（$presentCard）- 未来（$hiddenCard）。\n3) 过去部分 — $pastCard（40-50字）：三个关键词，牌面象征及过去事件如何影响 $userName 的问题 $userQuestion 的结果。\n4) 现在部分 — $presentCard（40-50字）：关键词，牌面象征及当前影响 $userName 对问题 $userQuestion 回答的因素。\n5) 未来部分 — $hiddenCard（40-50字）：关键词，牌面象征及关于 $userName 问题的可能发展情景。\n6) 结论：简短建议，积极肯定（20-30字）及明确的机会总结。\n要求：总字数180-220字，语气温暖神秘，包含3-5个主题表情符号；每个部分用双换行分隔\n；禁止使用 *、# 或其他格式符号；仅用纯文本书写。';
  }

  @override
  String get see_meaning_button => '了解含义';

  @override
  String three_cards_title(Object cards) {
    return '牌阵中有3张牌';
  }

  @override
  String get new_spread_button => '制作新的牌阵';

  @override
  String get disclaimer_text => '本应用仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String get enter_your_question => '请输入您的问题...';

  @override
  String get classic_spreads_screen_title => '经典牌阵';

  @override
  String get classic_spreads_screen_three_cards_title => '3张牌';

  @override
  String get classic_spreads_screen_three_cards_description => '过去，现在，未来';

  @override
  String get classic_spreads_screen_five_cards_title => '5张牌';

  @override
  String get classic_spreads_screen_five_cards_description => '深入分析情况';

  @override
  String get classic_spreads_screen_celtic_cross_title => '凯尔特十字';

  @override
  String get classic_spreads_screen_celtic_cross_description => '完整的10张牌牌阵';

  @override
  String five_cards_screen_prompt(
      Object adviceCard,
      Object hiddenCard,
      Object outcomeCard,
      Object pastCard,
      Object presentCard,
      Object userName,
      Object userQuestion) {
    return '你是一位经验丰富的塔罗牌占卜师。用户$userName问道：\"$userQuestion\"。请使用\"5张牌\"阵型回答。牌按顺序给出：过去 - $pastCard; 现在 - $presentCard; 隐藏 - $hiddenCard; 建议 - $adviceCard; 结果 - $outcomeCard。请至少五次提到$userName，并确保将每张牌与问题联系起来。请遵循以下结构：\n\n1）以$userName的名字问候。\n\n2）标题：阵型：过去（$pastCard）/ 现在（$presentCard）/ 隐藏（$hiddenCard）/ 建议（$adviceCard）/ 结果（$outcomeCard）。\n\n3）过去 — $pastCard（45-55字）：三个关键词，牌的象征意义，以及过去对$userName的$userQuestion的影响。\n\n4）现在 — $presentCard（45-55字）：关键词，象征意义，$userName问题的当前状态。\n\n5）隐藏 — $hiddenCard（45-55字）：无意识地影响$userName情况的因素，重点关注象征意义。\n\n6）建议 — $adviceCard（45-55字）：基于牌面图像的$userName的实用行动。\n\n7）结果 — $outcomeCard（45-55字）：如果遵循建议的可能情景，向$userName致辞。\n\n8）结论：对$userName的友好支持和积极肯定（25-30字）。\n\n要求：总字数230-260字，生动的对话语调，3-5个神秘表情符号；用双换行（\\n\\n）分隔每个块；不要使用*, #或其他标记符号；只写纯文本。';
  }

  @override
  String get fiveCardsInSpread => '牌阵中的5张牌';

  @override
  String get makeNewSpread => '进行新的牌阵';

  @override
  String
      get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMake =>
          '该应用程序仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String get requestReceivedPleaseOpenCards => '您的请求已收到。请翻开牌卡。';

  @override
  String love_spread_prompt(Object dynamicCard, Object partnerCard,
      Object userName, Object userQuestion, Object youCard) {
    return '你是一位经验丰富的塔罗牌读者。用户 $userName 问道：\"$userQuestion\"。请用三张牌的爱情牌阵回答。牌面如下：$userName 的感情 — $youCard；伴侣的感情 — $partnerCard；关系的动态或潜力 — $dynamicCard。请至少三次提及 $userName 的名字，并将每张牌与问题联系起来。结构如下：\n1) 以 $userName 的名字打招呼。\n2) 标题：牌阵：$youCard | $partnerCard | $dynamicCard。\n3) $youCard — 40–50 字：描述这张牌对 $userName 的感情和期待的含义。\n4) $partnerCard — 40–50 字：揭示伴侣对 $userName 问题的情感和意图。\n5) $dynamicCard — 40–50 字：展示这两种能量如何互动以及关系可能的发展。\n6) 结语：给 $userName 温暖的建议和积极的肯定（20–25 字）。\n要求：总字数 150–180 字，友好浪漫的语气，2–4 个主题表情符号；段落用双换行分隔（\\n\\n）；避免使用 *、# 及任何格式标记。';
  }

  @override
  String get loveSpread => '爱情牌阵';

  @override
  String
      get applicationUsesAIExclusivelyForEntertainmentWeDoNotTakeResponsibilityForDecisionsYouHaveMadeIfNeededPleaseConsultSpecialist =>
          '该应用程序仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String main_screen_greeting_with_name(Object name) {
    return '你好，$name';
  }

  @override
  String get main_screen_monday => '星期一';

  @override
  String get main_screen_tuesday => '星期二';

  @override
  String get main_screen_wednesday => '星期三';

  @override
  String get main_screen_thursday => '星期四';

  @override
  String get main_screen_friday => '星期五';

  @override
  String get main_screen_saturday => '星期六';

  @override
  String get main_screen_sunday => '星期日';

  @override
  String get main_screen_your_card_of_the_day => '你今天的牌';

  @override
  String main_screen_card_of_the_day_with_name(Object cardName) {
    return '今日之牌：$cardName';
  }

  @override
  String get main_screen_card_of_the_day => '今日之卡：';

  @override
  String get main_screen_viewed => '已开启';

  @override
  String get main_screen_not_viewed => '查看';

  @override
  String get main_screen_spreads => '牌阵';

  @override
  String get main_screen_training => '教程';

  @override
  String get main_screen_entertainment => '娱乐';

  @override
  String get main_screen_glad_to_see_you_here => '很高兴见到您！';

  @override
  String get main_screen_quick_reading_title => '快速占卜';

  @override
  String get main_screen_quick_reading_description => '只需轻触几下，即可用一张牌获得您问题的明确答案';

  @override
  String get monthly_forecast_spread_screen_request_accepted => '您的请求已收到。请展开牌阵';

  @override
  String monthly_forecast_spread_screen_prompt(Object cards, Object userName) {
    return '为 $userName 制作这些牌的月度预测：$cards';
  }

  @override
  String get aboutSpread => '关于牌阵';

  @override
  String get monthlyForecast => '月度预测';

  @override
  String
      get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNecessaryPleaseConsultSpecialist =>
          '本应用程序仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String purchase_love_screen_test_message(Object planName) {
    return '测试占位符：已选择套餐 \"$planName\\\"';
  }

  @override
  String get quick_reading_screen_what_is_quick_reading => '什么是快速占卜？';

  @override
  String get quick_reading_screen_quick_reading_explanation =>
      '快速占卜是一种快速占卜（答案：是或否），帮助您立即获得对具体问题或当天整体氛围的清晰回答。非常适合需要\"此时此刻\"快速灵感或建议的时候。';

  @override
  String get self_development_balance_spread_screen_request_accepted =>
      '您的请求已被接受。请翻开牌卡';

  @override
  String get self_development_balance_spread_screen_error_getting_value =>
      '获取占卜结果时出错。请再试一次。';

  @override
  String
      get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNeededConsultSpecialist =>
          '本应用仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String get thematic_spreads_screen_title => '主题牌阵';

  @override
  String get thematic_spreads_screen_love_spread_title => '爱情牌阵';

  @override
  String get thematic_spreads_screen_love_spread_description => '关系与感情分析';

  @override
  String get thematic_spreads_screen_career_finance_title => '职业与财务';

  @override
  String get thematic_spreads_screen_career_finance_description => '专业与财务分析';

  @override
  String get thematic_spreads_screen_pros_cons_title => '利与弊';

  @override
  String get thematic_spreads_screen_pros_cons_description => '优缺点分析';

  @override
  String get thematic_spreads_screen_monthly_forecast_title => '月度预测';

  @override
  String get thematic_spreads_screen_monthly_forecast_description => '按月预测';

  @override
  String get thematic_spreads_screen_self_development_title => '自我提升与平衡';

  @override
  String get thematic_spreads_screen_self_development_description => '精神成长与和谐';

  @override
  String get requestReceived => '您的请求已被接受。请翻开牌卡';

  @override
  String pros_cons_spread_prompt(Object cards, Object userName) {
    return '为$userName做一组关于这些牌卡的利与弊解析：$cards';
  }

  @override
  String get pros_cons_spread_screen_what_is_pros_cons_spread =>
      '什么是\"利与弊\"牌阵？';

  @override
  String get pros_cons_spread_screen_pros_cons_spread_explanation =>
      '\"利与弊\"牌阵帮助分析情况的优缺点，以便做出明智的决定。';

  @override
  String get pros_cons_spread_screen_understand_button => '明白';

  @override
  String get prosConsSpreadTitle => '正反两面牌阵';

  @override
  String get spreadDisclaimer => '本应用仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String get fun_spread_screen_generation_error => '生成牌阵时出错。请再试一次。';

  @override
  String get fun_spread_screen_share_error => '保存图片时出错。';

  @override
  String get fun_spread_screen_about_fun_spread => '什么是有趣的牌阵？';

  @override
  String get fun_spread_screen_fun_spread_explanation =>
      '有趣的牌阵是一种特殊的塔罗牌占卜方式，结合了传统牌阵的深度与轻松积极的态度。它将帮助你从新的角度看待情况，在日常生活中找到快乐。';

  @override
  String get fun_spread_screen_understand_button => '明白了';

  @override
  String get fun_spread_screen_title => '有趣的牌阵';

  @override
  String get fun_spread_screen_generate_button => '创建牌阵';

  @override
  String get fun_spread_screen_share_button => '分享';

  @override
  String get fun_spread_screen_new_button => '新牌阵';

  @override
  String get fun_spread_screen_share_text => '看看我在Tarot AI应用中得到的有趣塔罗牌阵！';

  @override
  String get ad_promo_tariff => '套餐';

  @override
  String get ad_promo_love => '爱情';

  @override
  String get ad_promo_discount => '促销 -50%';

  @override
  String get ad_promo_no_ads => '• 无广告';

  @override
  String get ad_promo_no_limits => '• 无限制';

  @override
  String get no_internet_error => '我们的应用程序仅在联网状态下工作。请开启Wi-Fi或移动网络。';

  @override
  String fun_spread_screen_mate_prompt_3cards(Object userName) {
    return '为$userName做一个非常搞笑、放肆且带点脏话的三张塔罗牌占卜。每张牌起一个搞笑的名字，并写一个独立段落：第一张牌：<名称> — <简短搞笑描述>，第二张牌：<名称> — <简短搞笑描述>，第三张牌：<名称> — <简短搞笑描述>。使用脏话增加幽默感，但不要冒犯人。全文不超过7句。';
  }

  @override
  String fun_spread_screen_no_mate_prompt_3cards(Object userName) {
    return '为$userName创建一个有趣的三张牌塔罗牌阵。为每张牌想一个搞笑的名称并写一个单独的段落：第一张牌：<名称> — <简短搞笑的描述>，第二张牌：<名称> — <简短搞笑的描述>，第三张牌：<名称> — <简短搞笑的描述>。牌阵应当有趣但富有深意。仅限三张牌。全文不超过7句。';
  }

  @override
  String get fun_spread_screen_title_top => '塔罗牌阵';

  @override
  String fun_spread_screen_title_for_name(Object name) {
    return '为$name';
  }

  @override
  String get contact_us_screen_message_sent => '您的消息已收到，谢谢！';

  @override
  String get contact_us_screen_message_error => '消息发送失败';

  @override
  String get love_spread_screen_initial_message => '您好，请在下方写下您的问题：';

  @override
  String get main_screen_tariff => '资费';

  @override
  String get main_screen_promo_50 => '促销 -50%';

  @override
  String get main_screen_rate_hint => '如果评分窗口未出现，您可以在 Google Play 留下评论。';

  @override
  String get main_screen_rate_error => '无法打开 Google Play。请稍后再试。';

  @override
  String get love_spread_screen_suggested_questions_1 => '我对这个人有什么感觉？';

  @override
  String get love_spread_screen_suggested_questions_2 => '是什么阻碍了我们的关系？';

  @override
  String get love_spread_screen_suggested_questions_3 => '我们的关系将会有什么样的未来？';

  @override
  String get career_finance_spread_screen_suggested_questions_1 =>
      '我的职业生涯有哪些机会？';

  @override
  String get career_finance_spread_screen_suggested_questions_2 =>
      '如何改善我的财务状况？';

  @override
  String get career_finance_spread_screen_suggested_questions_3 => '值得换工作吗？';

  @override
  String get pros_cons_spread_screen_suggested_questions_1 => '我应该做出这个决定吗？';

  @override
  String get pros_cons_spread_screen_suggested_questions_2 => '这个选择有哪些优点和缺点？';

  @override
  String get pros_cons_spread_screen_suggested_questions_3 => '在这种情况下什么更重要？';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_1 =>
      '这个月我会遇到什么？';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_2 =>
      '近期会发生哪些事件？';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_3 =>
      '本月应重点关注什么？';

  @override
  String get self_development_balance_spread_screen_suggested_questions_1 =>
      '我该如何进行精神上的成长？';

  @override
  String get self_development_balance_spread_screen_suggested_questions_2 =>
      '什么阻碍了我的内心平衡？';

  @override
  String get self_development_balance_spread_screen_suggested_questions_3 =>
      '如何在生活中找到和谐？';

  @override
  String career_three_card_prompt(Object adviceCard, Object challengeCard,
      Object situationCard, Object userName, Object userQuestion) {
    return '你是一位经验丰富的塔罗教练。用户$userName问道：\"$userQuestion\"。请做一个关于职业和财务的三张牌牌阵。牌的顺序是：1）现状 — $situationCard；2）障碍或关键机会 — $challengeCard；3）建议与潜力 — $adviceCard。根据$userName的名字判断性别，并使用正确的词尾和代词。以友好且专业的方式与$userName交流：指出他目前的位置，阻碍成长的因素（或需要注意的机会），以及实现理想收入的实际步骤。至少提及$userName三次。结构如下：\n1）问候 — 1句。\n2）标题：牌阵：$situationCard | $challengeCard | $adviceCard。\n3）$situationCard — 45–55字：描述$userName当前的状况（工作、业务或整体财务背景）及牌的象征意义。\n4）$challengeCard — 45–55字：揭示主要障碍或隐含机会；说明其如何反映在牌面和$userName的问题中。\n5）$adviceCard — 45–55字：提出具体行动（如重新审视预算、请求加薪、学习新技能）及可能的结果。\n6）结尾 — 20–25字：友好总结，积极肯定及两个商务表情符号。\n要求：总字数160–185字，清晰专业语气，无俚语，2–3个表情符号；段落用双换行分隔；不使用*、#等标记。';
  }

  @override
  String pros_cons_three_card_prompt(Object adviceCard, Object conCard,
      Object proCard, Object userName, Object userQuestion) {
    return '你是一位经验丰富的塔罗师。用户$userName问道：\"$userQuestion\"。请做一个三张牌的\"利与弊\"牌阵。牌的顺序是：优点 — $proCard；缺点 — $conCard；建议/总结 — $adviceCard。根据$userName的名字判断性别，并使用正确的词尾和代词。至少提及$userName三次，并将每张牌与问题关联。结构如下：\n1）以$userName的名字问候。\n2）标题：牌阵：$proCard | $conCard | $adviceCard。\n3）优点：$proCard — 45–55字。揭示这张牌为$userName的情况带来的主要利益或积极资源。\n4）缺点：$conCard — 45–55字。描述对$userName方案的风险、隐性成本或弱点。\n5）建议：$adviceCard — 45–55字。权衡利弊，提出一个具体行动（动词+对象），并说明这将如何改变$userName的结果。\n6）总结 — 一个词\"是\"或\"否\"，随后一句理由和鼓励性肯定（20–25字），附1–2个表情符号。\n要求：总字数150–180字，友好口语语气；各部分用双换行分隔；不使用*、#或其他标记。';
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
    return '你是一位专业塔罗师。用户$userName问道：\"$userQuestion\"。请做一个关于$month的\"月轮\"牌阵。牌按顺序为：1 — $card1，2 — $card2，3 — $card3，4 — $card4，5 — $card5，6 — $card6，7 — $card7，8 — $card8，9 — $card9，10 — $card10，11 — $card11，12 — $card12。根据$userName的名字判断性别，并使用正确的词尾和代词。至少提及$userName五次，但**不要在每个日期后都插入名字**，只在建议内容中自然提及。使用日期网格：1–3，4–6，7–9，10–12，13–15，16–18，19–21，22–24，25–26，27–28，29–30，31（如果月份有30天，第12张牌对应30号）。格式：\n1）以$userName的名字问候（1–2句）。\n2）简短介绍牌阵目的（1句）。\n3–14）每张牌用\"1–3 $month — $card1\"格式（不带名字）：随后2–3句描述该期间的主要能量和实用建议，自然提及$userName。\n15）总结：本月总体建议（约40字）及激励肯定，附2–3个表情符号。\n要求：总字数360–400字；友好激励语气；各部分用双换行分隔；不使用*、#、列表或技术标记。';
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
    return '你是一位经验丰富的塔罗教练。用户$userName问道：\"$userQuestion\"。请做一个七张牌的\"自我发展与平衡\"牌阵。牌的顺序是：核心 — $coreCard；思维 — $mindCard；情绪 — $emotionCard；身体 — $bodyCard；资源 — $strengthCard；阻碍 — $challengeCard；建议 — $adviceCard。根据$userName的名字判断性别，并使用正确的词尾和代词。语言生动且支持性强，至少提及$userName四次，且每张牌都要与问题相关。结构和格式如下：\n1）以$userName的名字问候。\n2）标题：牌阵：$coreCard | $mindCard | $emotionCard | $bodyCard | $strengthCard | $challengeCard | $adviceCard。\n3）$coreCard — 描述$userName自我发展的主要焦点。\n4）$mindCard — 说明如何调整思维及学习内容。\n5）$emotionCard — 揭示情绪资源和动力。\n6）$bodyCard — 提示如何照顾身体和能量。\n7）$strengthCard — 展示内在天赋或外部支持。\n8）$challengeCard — 指出主要失衡及其原因。\n9）$adviceCard — 提出整合各方面的具体行动。\n10）结尾：激励肯定和温暖祝福，附2–3个表情符号。\n要求：每点2–3句；各点间用双换行分隔；不使用*、#或其他标记。';
  }

  @override
  String get main_screen_suggest_spread => '还缺少什么牌阵？请写信告诉我们';

  @override
  String get main_screen_disclaimer =>
      '本应用仅将人工智能用于娱乐目的。我们不对您所做的决定负责。如有需要，请咨询专业人士。';

  @override
  String get month_january => '一月';

  @override
  String get month_february => '二月';

  @override
  String get month_march => '三月';

  @override
  String get month_april => '四月';

  @override
  String get month_may => '五月';

  @override
  String get month_june => '六月';

  @override
  String get month_july => '七月';

  @override
  String get month_august => '八月';

  @override
  String get month_september => '九月';

  @override
  String get month_october => '十月';

  @override
  String get month_november => '十一月';

  @override
  String get month_december => '十二月';

  @override
  String get fun_share_button => '分享';

  @override
  String get fun_new_spread_button => '新牌阵';
}

/// The translations for Chinese, as used in Hong Kong (`zh_HK`).
class AppLocalizationsZhHk extends AppLocalizationsZh {
  AppLocalizationsZhHk() : super('zh_HK');

  @override
  String get main_title => '占卜與學習塔羅';

  @override
  String get your_name => '您的名字';

  @override
  String get personalization_hint => '向AI塔羅師提問並獲得個人化牌陣';

  @override
  String get start_button => '開始';

  @override
  String get language => '語言';

  @override
  String get continueBtn => '繼續';

  @override
  String get card_of_the_day => '今日之卡';

  @override
  String get description => '描述';

  @override
  String get spreads => '牌陣';

  @override
  String get quick_spread => '快速牌陣';

  @override
  String get classic_spreads => '經典牌陣';

  @override
  String get thematic_spreads => '主題牌陣';

  @override
  String get card_combination => '牌組組合';

  @override
  String get card_meanings => '牌義';

  @override
  String get training => '教學';

  @override
  String get welcome => '歡迎';

  @override
  String get today => '今天';

  @override
  String get view => '觀看';

  @override
  String get select_card => '選擇卡片';

  @override
  String get please_select_cards => '請在所有欄位選擇不同的卡片。';

  @override
  String get good_day => '祝你有美好的一天，\n選擇牌卡以了解它們的組合和含義';

  @override
  String get language_hint => '為了完全個性化牌陣';

  @override
  String get quickReading => '快速牌陣';

  @override
  String get comingSoon => '即將推出';

  @override
  String get onboarding_notifications_title => '🔔 想不錯過「今日之牌」和新的牌陣嗎？';

  @override
  String get onboarding_notifications_subtitle => '請同意接收通知（不會發送垃圾郵件）。';

  @override
  String get onboarding_notifications_allow => '同意';

  @override
  String get onboarding_notifications_decline => '拒絕';

  @override
  String get suggested_questions_chat_1 => '告訴我關於我的愛情生活';

  @override
  String get suggested_questions_chat_2 => '我的事業會發生什麼？';

  @override
  String get suggested_questions_chat_3 => '我如何能提升自己？';

  @override
  String get suggested_questions_chat_4 => '未來有哪些機會在等待我？';

  @override
  String get onboarding_final_title => '一切就緒！';

  @override
  String get onboarding_final_subtitle => '為了維持項目運作，我們會顯示廣告。但如果您不想看到，可以訂閱';

  @override
  String get onboarding_final_benefits => '無廣告\n無限制的牌局\n無限制的教學';

  @override
  String get onboarding_final_yearly => '每年';

  @override
  String get onboarding_final_badge => '節省 50%';

  @override
  String get onboarding_final_yearly_price => '249/年';

  @override
  String get onboarding_final_yearly_month => '24/月';

  @override
  String get onboarding_final_trial => '7 天免費';

  @override
  String get onboarding_final_trial_price => '然後每月9';

  @override
  String get onboarding_final_trial_month => '每月';

  @override
  String get onboarding_final_note => '訂閱非強制且會自動續訂。您可以隨時取消';

  @override
  String get onboarding_final_choose_yearly => '選擇每年';

  @override
  String get onboarding_final_choose_trial => '選擇7天免費試用';

  @override
  String get onboarding_final_or => '或者';

  @override
  String get onboarding_final_continue_ads => '繼續觀看廣告';

  @override
  String get main_screen_greeting => '您好';

  @override
  String main_screen_date_today(Object date) {
    return '今天，$date';
  }

  @override
  String get main_screen_card_of_day_title => '您的今日卡牌';

  @override
  String main_screen_card_of_day_description(Object cardName) {
    return '今日之牌：$cardName';
  }

  @override
  String get main_screen_card_of_day_description_empty => '今日之牌：';

  @override
  String get main_screen_card_of_day_status_viewed => '已開啟';

  @override
  String get main_screen_card_of_day_status_view => '查看';

  @override
  String get main_screen_section_spreads => '牌陣';

  @override
  String get main_screen_section_training => '學習';

  @override
  String get main_screen_section_entertainment => '娛樂';

  @override
  String get main_screen_quick_spread_title => '快速占卜';

  @override
  String get main_screen_quick_spread_description => '只需輕觸幾下，即可用一張牌獲得清晰的答案';

  @override
  String get main_screen_thematic_spreads_title => '主題占卜';

  @override
  String get main_screen_thematic_spreads_description =>
      '重要領域的現成方案：愛情、事業、健康、旅行';

  @override
  String get main_screen_card_combination_title => '牌組組合';

  @override
  String get main_screen_fun_spread_title => '趣味牌陣';

  @override
  String get main_screen_fun_spread_description => '提升心情，做個趣味牌陣並分享到社交媒體';

  @override
  String get main_screen_love_badge => '愛情';

  @override
  String get card_combination_screen_title => '牌組組合';

  @override
  String get card_combination_screen_greeting => '您好，請選擇牌組以了解組合和含義';

  @override
  String get card_combination_screen_card_hint => '牌';

  @override
  String get card_combination_screen_get_combination_button => '查看組合';

  @override
  String get card_combination_screen_new_spread_button => '重新占卜';

  @override
  String get card_combination_screen_fill_all_fields_error => '請填寫所有卡片欄位。';

  @override
  String get card_combination_screen_invalid_cards_error =>
      '請僅從提供的清單中選擇卡片。錯誤的卡片：';

  @override
  String get card_combination_screen_duplicate_cards_error => '請在所有欄位中選擇不同的卡片。';

  @override
  String get card_combination_screen_general_error => '錯誤：無法獲取回應。請再試一次。';

  @override
  String get card_combination_screen_disclaimer =>
      '本應用程式僅將人工智能用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String card_combination_screen_prompt(Object cards, Object lang) {
    return '分析塔羅牌組合：$cards。深入神秘地解析它們的互動及整體建議。回答完全使用$lang語言。不包含問候語和結語。';
  }

  @override
  String get quick_reading_screen_title => '快速占卜';

  @override
  String get quick_reading_screen_select_card => '選擇牌卡';

  @override
  String get quick_reading_screen_get_answer_button => '獲取答案';

  @override
  String get quick_reading_screen_what_is_quick_spread => '什麼是快速占卜？';

  @override
  String get quick_reading_screen_quick_spread_explanation =>
      '快速占卜是一種快速占卜（答案：是或否），幫助您立即獲得對具體問題或當日整體氛圍的清晰回答。非常適合需要「此時此刻」快速靈感或建議的時候。';

  @override
  String get quick_reading_screen_understand_button => '明白了';

  @override
  String get quick_reading_result_screen_generating_response => '正在生成回答...';

  @override
  String quick_reading_result_screen_error_generating(Object error) {
    return '生成回答時出錯：$error';
  }

  @override
  String quick_reading_result_screen_error_generating_response(Object e) {
    return '生成回答時出錯：$e';
  }

  @override
  String get quick_reading_result_screen_what_is_quick_spread => '什麼是快速牌陣？';

  @override
  String get quick_reading_result_screen_quick_spread_explanation =>
      '快速牌陣是一種快速占卜（答案：是或否），幫助您立即獲得對具體問題或當天整體氛圍的清晰回答。非常適合需要「此時此刻」快速靈感或建議的時候。';

  @override
  String get quick_reading_result_screen_understand_button => '明白了';

  @override
  String get quick_reading_result_screen_quick_spread_title => '快速牌陣';

  @override
  String get quick_reading_result_screen_new_spread_button => '新牌陣';

  @override
  String get quick_reading_result_screen_disclaimer =>
      '該應用程式僅將人工智能用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String quick_reading_result_screen_prompt(Object cardName, Object userName) {
    return '你是一位經驗豐富的塔羅師。用戶 $userName 抽到了牌——$cardName。\n答案卡：是\n$cardName 的能量帶來這個答案，是因為它象徵著積極的變化和新的機會。對於 $userName 來說，這張牌暗示著目前的情況正朝著有利的方向發展，鼓勵他們勇敢面對挑戰。$userName 會感受到內心的力量和自信，這將幫助他們克服障礙。這張牌還提醒 $userName 保持耐心，因為成功需要時間。🌟✨ 這是個充滿希望的訊號，讓 $userName 知道未來充滿可能。';
  }

  @override
  String get career_finance_spread_screen_request_accepted => '您的請求已被接受。請翻開牌卡';

  @override
  String get career_finance_spread_screen_error_getting_value =>
      '獲取牌陣數值時出錯。請再試一次。';

  @override
  String get career_finance_spread_screen_what_is_career_finance =>
      '什麼是職業與財務牌陣？';

  @override
  String get career_finance_spread_screen_career_finance_explanation =>
      '這個牌陣有助於分析職業和財務領域。您將了解機會、障礙和成長前景。';

  @override
  String get career_finance_spread_screen_understand_button => '明白';

  @override
  String get career_finance_spread_screen_learn_meaning_button => '了解含義';

  @override
  String get career_finance_spread_screen_career_finance_title => '職業與財務';

  @override
  String get career_finance_spread_screen_new_spread_button => '進行新的牌陣';

  @override
  String get career_finance_spread_screen_disclaimer =>
      '該應用程式僅將人工智能用於娛樂目的。我們不對您所做的決定承擔任何責任。如有需要，請諮詢專業人士。';

  @override
  String get career_finance_spread_screen_enter_question_hint => '請輸入您的問題...';

  @override
  String get pros_cons_spread_screen_what_is_pros_cons => '什麼是「利與弊」牌陣？';

  @override
  String get pros_cons_spread_screen_pros_cons_title => '「利與弊」牌陣';

  @override
  String get pros_cons_spread_screen_enter_question_hint => '請輸入您的問題...';

  @override
  String
      get self_development_balance_spread_screen_self_development_explanation =>
          '「自我成長與平衡」牌陣由7張牌組成，排列成圓形。每張牌象徵您靈性成長和內在和諧的特定面向。';

  @override
  String get card_meanings_screen_major_arcana => '大阿爾克那牌';

  @override
  String get card_meanings_screen_wands => '權杖';

  @override
  String get card_meanings_screen_cups => '聖杯';

  @override
  String get card_meanings_screen_swords => '寶劍';

  @override
  String get card_meanings_screen_pentacles => '錢幣';

  @override
  String get card_meanings_screen_title => '牌義';

  @override
  String get love_spread_screen_new_spread_button => '進行新牌陣';

  @override
  String get love_spread_screen_enter_question_hint => '輸入您的問題...';

  @override
  String purchase_love_screen_test_stub(Object plan) {
    return '測試佔位符：選擇的方案 \"$plan\"';
  }

  @override
  String get purchase_love_screen_love_tariff_title => '愛情方案';

  @override
  String get ad_promo_block_tariff => '方案';

  @override
  String get ad_promo_block_love => '愛情';

  @override
  String get ad_promo_block_promotion_70 => '促銷 -50%';

  @override
  String get ad_promo_block_no_ads => '• 無廣告';

  @override
  String get ad_promo_block_no_limits => '• 無限制';

  @override
  String three_cards_screen_title(Object cards) {
    return '3 張牌在牌陣中';
  }

  @override
  String get three_cards_screen_initial_message => '您好，請在下方輸入您的問題：';

  @override
  String get three_cards_screen_request_accepted => '您的問題已收到。請翻開牌卡';

  @override
  String get three_cards_screen_suggested_questions_1 => '我現在的主要問題是什麼？';

  @override
  String get three_cards_screen_suggested_questions_2 => '我應該在近期專注於什麼？';

  @override
  String get three_cards_screen_suggested_questions_3 => '有什麼是對我隱藏的？';

  @override
  String get three_cards_screen_see_meaning_button => '了解含義';

  @override
  String get three_cards_screen_new_spread_button => '新牌陣';

  @override
  String get three_cards_screen_enter_question_hint => '請輸入您的查詢...';

  @override
  String get three_cards_screen_what_is_three_cards => '什麼是三張牌陣？';

  @override
  String get three_cards_screen_three_cards_explanation =>
      '經典牌陣，展示您情況的過去、現在和未來。第一張牌代表過去，第二張牌代表現在，第三張牌代表未來。';

  @override
  String get three_cards_screen_understand_button => '明白了';

  @override
  String get three_cards_screen_error_getting_value => '獲取牌陣數值時出錯。請再試一次。';

  @override
  String get three_cards_screen_disclaimer =>
      '本應用程式僅將人工智能用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String get five_cards_screen_title => '牌陣中有5張牌';

  @override
  String get five_cards_screen_initial_message => '您好，請在下方輸入您的問題：';

  @override
  String get five_cards_screen_request_accepted => '您的問題已收到。請翻開牌卡';

  @override
  String get five_cards_screen_suggested_questions_1 => '我應該選擇哪條路？';

  @override
  String get five_cards_screen_suggested_questions_2 => '是什麼阻礙我達成目標？';

  @override
  String get five_cards_screen_suggested_questions_3 => '我有哪些功能？';

  @override
  String get five_cards_screen_see_meaning_button => '了解含義';

  @override
  String get five_cards_screen_new_spread_button => '進行新的牌陣';

  @override
  String get five_cards_screen_enter_question_hint => '請輸入您的查詢...';

  @override
  String get five_cards_screen_what_is_five_cards => '什麼是五張牌牌陣？';

  @override
  String get five_cards_screen_five_cards_explanation =>
      '五張牌陣是一個緊湊的布局，揭示情況的五個關鍵方面：過去、現在、隱藏影響、助手/障礙和可能的結果。';

  @override
  String get five_cards_screen_understand_button => '明白了';

  @override
  String get five_cards_screen_error_getting_value => '獲取牌陣數值時出錯。請再試一次。';

  @override
  String get five_cards_screen_disclaimer =>
      '本應用程式僅將人工智能用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String get celtic_cross_screen_title => '凱爾特十字';

  @override
  String get celtic_cross_screen_initial_message => '您好，請在下方輸入您的請求：';

  @override
  String get celtic_cross_screen_suggested_questions_1 => '我現在的主要問題是什麼？';

  @override
  String get celtic_cross_screen_suggested_questions_2 => '我應該在近期專注於什麼？';

  @override
  String get celtic_cross_screen_suggested_questions_3 => '有什麼是對我隱藏的？';

  @override
  String get celtic_cross_screen_see_meaning_button => '了解含義';

  @override
  String get celtic_cross_screen_new_spread_button => '製作新牌陣';

  @override
  String get celtic_cross_screen_enter_question_hint => '輸入您的查詢...';

  @override
  String get celtic_cross_screen_what_is_celtic_cross_dialog => '什麼是凱爾特十字？';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_dialog =>
      '「凱爾特十字」是一個由10張牌組成的牌陣，從各個角度詳細解析情況：當前環境、障礙、內外影響，以及近期動態和最終結果。牌依序排列：\n1 - 情況 — 問題的當下核心。\n2 - 挑戰 — 幫助或阻礙前進的因素。\n3 - 潛意識（根源）— 隱藏的動機和深層力量。\n4 - 最近過去 — 導致當前狀況的事件。\n5 - 意識（目標）— 目前詢問者的注意焦點。\n6 - 近期未來 — 未來幾週的可能發展。\n7 - 「我自己」— 內心狀態、資源、對問題的態度。\n8 - 環境 — 周圍人的影響和環境因素。\n9 - 希望／恐懼 — 期待、疑慮和強烈情緒。\n10 - 結果 — 若趨勢持續，可能的結局。\n此牌陣讓您看到「全貌」：您所處的位置、阻礙或助力、幕後的隱藏動力，以及未來走向。\n牌陣示意圖見下圖。';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_image =>
      'assets/images/kelt.png';

  @override
  String get celtic_cross_screen_understand_button => '明白';

  @override
  String celtic_cross_screen_please_open_cards(Object cards) {
    return '您的請求已接收。請打開卡牌';
  }

  @override
  String celtic_cross_screen_request_accepted(Object cards) {
    return '請求已接收，請打開卡牌';
  }

  @override
  String get the_user => '用戶';

  @override
  String get good_day_please_write_your_question_below => '您好，請在下方輸入您的請求';

  @override
  String get errorGettingSpreadMeaning => '獲取牌陣結果時出錯。請再試一次。';

  @override
  String get errorGettingSpreadMeaningPleaseTryAgain => '獲取牌陣結果時出錯。請再試一次。';

  @override
  String get seeMeaning => '查看結果';

  @override
  String get newSpread => '進行新的牌陣';

  @override
  String get enterYourQuestion => '請輸入您的問題...';

  @override
  String get enterQuestion => '輸入您的問題...';

  @override
  String makeTarotReadingFor(Object lang) {
    return '為';
  }

  @override
  String get theUser => '用戶';

  @override
  String onTheseThreeCards(Object userName) {
    return '做這三張牌的牌陣：';
  }

  @override
  String makeSelfDevelopmentAndBalanceTarotReadingFor(Object cards) {
    return '為 $cards 做自我成長與平衡牌陣';
  }

  @override
  String get getAnswer => '了解答案';

  @override
  String get aboutTheSpread => '關於牌陣';

  @override
  String get aboutSpreadDescription => '這個牌陣有助於分析您的靈性成長和內在和諧。';

  @override
  String get gotIt => '明白了';

  @override
  String get selfDevelopmentAndBalance => '自我成長與平衡';

  @override
  String get appUsageDisclaimer =>
      '該應用程式僅將人工智能用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String get careerFinance => '事業與財務';

  @override
  String get fun_spread_screen_with_swear_words_title => '含粗口（18+）';

  @override
  String get fun_spread_screen_with_swear_words_subtitle => '適合喜歡刺激的人';

  @override
  String get fun_spread_screen_without_swear_words_title => '無粗口';

  @override
  String get fun_spread_screen_without_swear_words_subtitle => '無粗口的歡樂牌陣';

  @override
  String get fun_spread_screen_generating => '正在生成您的牌陣...';

  @override
  String get card_name_the_fool => '愚者';

  @override
  String get card_name_the_magician => '魔術師';

  @override
  String get card_name_the_high_priestess => '女祭司';

  @override
  String get card_name_the_empress => '女皇';

  @override
  String get card_name_the_emperor => '皇帝';

  @override
  String get card_name_the_hierophant => '教皇';

  @override
  String get card_name_the_lovers => '戀人';

  @override
  String get card_name_the_chariot => '戰車';

  @override
  String get card_name_strength => '力量';

  @override
  String get card_name_the_hermit => '隱士';

  @override
  String get ok_button => '確定';

  @override
  String get cancel_button => '取消';

  @override
  String get analyzing_cards => '正在分析卡牌...';

  @override
  String get yes_button => '是';

  @override
  String get no_button => '否';

  @override
  String get loading => '載入中...';

  @override
  String get error => '錯誤';

  @override
  String get success => '成功';

  @override
  String get failed => '失敗';

  @override
  String get language_russian => '俄文';

  @override
  String get language_english_us => '美式英語';

  @override
  String get language_english_gb => '英式英語';

  @override
  String get card_name_wheel_of_fortune => '幸運之輪';

  @override
  String get card_name_justice => '正義';

  @override
  String get card_name_the_hanged_man => '倒吊人';

  @override
  String get card_name_death => '死神';

  @override
  String get card_name_temperance => '節制';

  @override
  String get card_name_the_devil => '惡魔';

  @override
  String get card_name_the_tower => '高塔';

  @override
  String get card_name_the_star => '星星';

  @override
  String get card_name_the_moon => '月亮';

  @override
  String get card_name_the_sun => '太陽';

  @override
  String get card_name_judgement => '審判';

  @override
  String get card_name_the_world => '世界';

  @override
  String get card_name_ace_of_wands => '權杖王牌';

  @override
  String get card_name_two_of_wands => '權杖二';

  @override
  String get card_name_three_of_wands => '權杖三';

  @override
  String get card_name_four_of_wands => '權杖四';

  @override
  String get card_name_five_of_wands => '權杖五';

  @override
  String get card_name_six_of_wands => '權杖六';

  @override
  String get card_name_seven_of_wands => '權杖七';

  @override
  String get card_name_eight_of_wands => '權杖八';

  @override
  String get card_name_nine_of_wands => '權杖九';

  @override
  String get card_name_ten_of_wands => '權杖十';

  @override
  String get card_name_page_of_wands => '權杖侍者';

  @override
  String get card_name_knight_of_wands => '權杖騎士';

  @override
  String get card_name_queen_of_wands => '權杖皇后';

  @override
  String get card_name_king_of_wands => '權杖國王';

  @override
  String get card_name_ace_of_cups => '聖杯王牌';

  @override
  String get card_name_two_of_cups => '聖杯二';

  @override
  String get card_name_three_of_cups => '聖杯三';

  @override
  String get card_name_four_of_cups => '聖杯四';

  @override
  String get card_name_five_of_cups => '聖杯五';

  @override
  String get card_name_six_of_cups => '聖杯六';

  @override
  String get card_name_seven_of_cups => '聖杯七';

  @override
  String get card_name_eight_of_cups => '聖杯八';

  @override
  String get card_name_nine_of_cups => '聖杯九';

  @override
  String get card_name_ten_of_cups => '聖杯十';

  @override
  String get card_name_page_of_cups => '聖杯侍者';

  @override
  String get card_name_knight_of_cups => '聖杯騎士';

  @override
  String get card_name_queen_of_cups => '聖杯皇后';

  @override
  String get card_name_king_of_cups => '聖杯國王';

  @override
  String get card_name_ace_of_swords => '寶劍王牌';

  @override
  String get card_name_two_of_swords => '寶劍二';

  @override
  String get card_name_three_of_swords => '三劍牌';

  @override
  String get card_name_four_of_swords => '四劍牌';

  @override
  String get card_name_five_of_swords => '五劍牌';

  @override
  String get card_name_six_of_swords => '六劍牌';

  @override
  String get card_name_seven_of_swords => '七劍牌';

  @override
  String get card_name_eight_of_swords => '劍八';

  @override
  String get card_name_nine_of_swords => '劍九';

  @override
  String get card_name_ten_of_swords => '劍十';

  @override
  String get card_name_page_of_swords => '劍侍';

  @override
  String get card_name_knight_of_swords => '劍騎士';

  @override
  String get card_name_queen_of_swords => '寶劍皇后';

  @override
  String get card_name_king_of_swords => '寶劍國王';

  @override
  String get card_name_ace_of_pentacles => '錢幣王牌';

  @override
  String get card_name_two_of_pentacles => '錢幣二';

  @override
  String get card_name_three_of_pentacles => '錢幣三';

  @override
  String get card_name_four_of_pentacles => '四角錢幣';

  @override
  String get card_name_five_of_pentacles => '五角錢幣';

  @override
  String get card_name_six_of_pentacles => '六角錢幣';

  @override
  String get card_name_seven_of_pentacles => '七角錢幣';

  @override
  String get card_name_eight_of_pentacles => '八角錢幣';

  @override
  String get card_name_nine_of_pentacles => '九角星九';

  @override
  String get card_name_ten_of_pentacles => '九角星十';

  @override
  String get card_name_page_of_pentacles => '九角星侍從';

  @override
  String get card_name_knight_of_pentacles => '九角星騎士';

  @override
  String get card_name_queen_of_pentacles => '九角星皇后';

  @override
  String get card_name_king_of_pentacles => '五角星國王';

  @override
  String get quick_reading_screen_suggested_questions_1 => '我應該這麼做嗎？';

  @override
  String get quick_reading_screen_suggested_questions_2 => '這是正確的道路嗎？';

  @override
  String get quick_reading_screen_suggested_questions_3 => '我需要知道什麼？';

  @override
  String get monthly_forecast_spread_screen_see_meaning_button => '了解含義';

  @override
  String get monthly_forecast_spread_screen_new_spread_button => '製作新牌陣';

  @override
  String get monthly_forecast_spread_screen_enter_question_hint => '輸入您的查詢...';

  @override
  String get monthly_forecast_spread_screen_what_is_monthly_forecast =>
      '什麼是每月預測？';

  @override
  String get monthly_forecast_spread_screen_monthly_forecast_explanation =>
      '每月預測顯示未來一個月的主要事件和趨勢。幫助您準備變化並利用機會。';

  @override
  String get monthly_forecast_spread_screen_understand_button => '明白了';

  @override
  String get monthly_forecast_spread_screen_error_getting_value =>
      '獲取牌陣數值時出錯。請再試一次。';

  @override
  String get monthly_forecast_spread_screen_disclaimer =>
      '本應用程式僅將人工智能用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String self_development_balance_spread_screen_prompt(
      Object cards, Object userName) {
    return '為 $userName 做一個關於自我成長和平衡的牌陣，使用這三張牌：$cards';
  }

  @override
  String get error_getting_answer_try_again => '錯誤：無法獲取回應。請再試一次。';

  @override
  String get card_detail_screen_title => '牌卡詳情';

  @override
  String get card_detail_screen_general_meaning => '整體意義';

  @override
  String get card_detail_screen_reversed_meaning => '顛倒的意義';

  @override
  String get card_detail_screen_symbolism => '象徵意義';

  @override
  String get card_detail_screen_error_loading_text => '文本加載錯誤';

  @override
  String card_detail_screen_general_meaning_prompt(
      Object cardName, Object lang) {
    return '用$lang語言描述塔羅牌「$cardName」的整體意義。包括歷史、象徵和主要意義。';
  }

  @override
  String card_detail_screen_reversed_meaning_prompt(
      Object cardName, Object lang) {
    return '用$lang語描述塔羅牌「$cardName」的逆位含義。包括相反的意義和警告。';
  }

  @override
  String card_detail_screen_symbolism_prompt(Object cardName, Object lang) {
    return '用$lang語描述塔羅牌「$cardName」的象徵意義。包括圖像細節、顏色及其含義。';
  }

  @override
  String card_detail_screen_description(Object cardName) {
    return '$cardName牌的描述';
  }

  @override
  String get card_detail_screen_see_other_card_meaning => '查看其他牌的含義';

  @override
  String get card_detail_screen_or => '或';

  @override
  String get card_detail_screen_loading_language => '語言加載中...';

  @override
  String get card_detail_screen_see_card_meaning => '查看牌義';

  @override
  String get card_detail_screen_original_waite_text => '韋特原文';

  @override
  String get card_detail_screen_no_original_text => '無原文';

  @override
  String card_of_the_day_screen_translate_card_name_prompt(
      Object cardName, Object languageCode) {
    return '將塔羅牌「$cardName」的名稱翻譯成$languageCode。回答中只應包含翻譯後的名稱，無需額外文字或標點符號。';
  }

  @override
  String card_of_the_day_screen_generate_description_prompt(
      Object cardName, Object name) {
    return '你是一位專業的塔羅師。為用戶 $name 用此請求的語言撰寫一則鼓舞人心的「今日之卡」訊息。請遵循結構和字數要求。\n🌟 $name，你的今日之卡是 $cardName！\n🔑 關鍵詞：<請列出3–5個簡短的關鍵詞>\n🃏 含義（約45–50字）：描述此牌的主要能量，以及它今天將如何在 $name 身上展現。\n💡 建議（約35–40字）：提出具體的行動或心態，幫助 $name 利用這股能量。\n✨ 肯定語（1行）：以「我…」開頭的正面肯定句。\n要求：總字數120–150字，溫暖且帶有神秘色彩的語氣，使用3–4個主題相關的表情符號，禁止使用HTML/Markdown列表；段落請用雙換行分隔（\\n\\n）。';
  }

  @override
  String get card_of_the_day_screen_title => '今日之卡';

  @override
  String get card_of_the_day_screen_error_loading_card => '卡牌加載錯誤';

  @override
  String career_finance_spread_screen_prompt(Object cards, Object userName) {
    return '為 $userName 進行職業與財務的三張牌占卜：$cards';
  }

  @override
  String get contact_us_title => '聯絡我們';

  @override
  String get contact_us_email_hint => '您的電子郵件';

  @override
  String get contact_us_email_empty => '請輸入電子郵件';

  @override
  String get contact_us_email_invalid => '電子郵件格式不正確';

  @override
  String get contact_us_message_hint => '您的訊息';

  @override
  String get contact_us_message_empty => '請輸入訊息';

  @override
  String get contact_us_send_button => '發送';

  @override
  String get five_cards_spread_screen_what_is_five_cards_dialog => '什麼是五張牌的牌陣？';

  @override
  String get five_cards_spread_screen_five_cards_explanation_dialog =>
      '這個牌陣揭示了你問題的整個過程：\n牌 1 - 過去顯示起始情況，\n牌 2 - 現在 — 當前能量，\n牌 3 - 隱藏揭示隱藏的影響，\n牌 4 - 建議提示最佳行動，\n牌 5 - 結果預測可能的結果。';

  @override
  String get five_cards_spread_screen_understand_button => '明白了';

  @override
  String get language_selection_screen_title => '語言';

  @override
  String get love_spread_screen_what_is_love_spread => '什麼是愛情牌陣？';

  @override
  String get love_spread_screen_love_spread_explanation =>
      '愛情三連牌是三張牌，從左到右排列：\n牌 1 - 你 — 顯示求問者的感受、動機和立場。\n牌 2 - 伴侶 — 揭示對方的情感、計劃和準備程度。\n牌 3 - 動態 / 潛力 — 描述兩種能量目前如何互動，以及關係在近期可能發展的方向。';

  @override
  String get love_spread_screen_understand_button => '明白了';

  @override
  String get main_screen_your_plan_trial => '你的方案：試用版（含廣告）';

  @override
  String get main_screen_no_ads => '• 無廣告';

  @override
  String get main_screen_no_limits => '• 無限制';

  @override
  String get main_screen_shop_soon => '商店 (soon)';

  @override
  String get main_screen_notification_settings => '通知設置';

  @override
  String get main_screen_language_selection => '語言選擇';

  @override
  String get main_screen_rate_app => '評價應用程式';

  @override
  String get main_screen_contact_us => '聯絡我們';

  @override
  String get main_screen_classic_spreads_title => '經典牌陣';

  @override
  String get main_screen_classic_spreads_description =>
      '2 / 3 / 5 張牌陣及完整展開的凱爾特十字牌陣';

  @override
  String get main_screen_card_meanings_title => '牌義';

  @override
  String get main_screen_card_meanings_description =>
      '所有大阿爾克那和小阿爾克那正位與逆位意義的完整指南';

  @override
  String get main_screen_card_combination_description =>
      '「塔羅牌計算器」選擇牌卡並獲得深入的關係分析';

  @override
  String get notification_settings_screen_title => '通知設定';

  @override
  String get notification_settings_screen_frequency_question =>
      '您希望多久收到一次每日牌卡通知？';

  @override
  String get notification_settings_screen_every_day => '每天';

  @override
  String get notification_settings_screen_every_three_days => '每三天一次';

  @override
  String get notification_settings_screen_every_week => '每週一次';

  @override
  String get notification_settings_screen_time_question => '一天中的什麼時間？';

  @override
  String get notification_settings_screen_morning => '早上';

  @override
  String get notification_settings_screen_day => '下午';

  @override
  String get notification_settings_screen_evening => '晚上';

  @override
  String get notification_settings_screen_save_button => '保存';

  @override
  String get onboarding_final_screen_yearly_price => '249/年';

  @override
  String get onboarding_final_screen_yearly_month_price => '24/月';

  @override
  String get onboarding_final_screen_monthly_price => '9/月';

  @override
  String get onboarding_final_screen_monthly_month_price => '9/月';

  @override
  String get onboarding_final_screen_yearly_plan => '每年';

  @override
  String get onboarding_final_screen_free_trial => '7天免費';

  @override
  String get onboarding_final_screen_purchase_title => '購買';

  @override
  String onboarding_final_screen_test_stub_message(Object plan) {
    return '測試佔位符：已選擇方案「$plan」';
  }

  @override
  String get onboarding_final_screen_ok_button => '確定';

  @override
  String get purchase_love_screen_yearly_price => '249/年';

  @override
  String get purchase_love_screen_yearly_month_price => '24/月';

  @override
  String get purchase_love_screen_monthly_price => '月付';

  @override
  String get purchase_love_screen_monthly_month_price => '9/月';

  @override
  String get purchase_love_screen_title => '購買';

  @override
  String get purchase_love_screen_ok_button => '好的';

  @override
  String quick_reading_screen_error_no_image_file_found(Object cardName) {
    return '錯誤：找不到卡片的圖片檔案：$cardName';
  }

  @override
  String get please_fill_all_fields => '請填寫所有卡片欄位。';

  @override
  String get please_select_cards_only_from_suggested_list =>
      '請僅從建議清單中選擇卡片。錯誤的卡片：';

  @override
  String get please_select_different_cards_in_all_fields => '請在所有欄位選擇不同的卡片。';

  @override
  String get card => '牌';

  @override
  String get get_combination => '了解組合';

  @override
  String get new_spread => '做一個新的牌陣';

  @override
  String get app_uses_ai_for_entertainment_purposes =>
      '應用程式僅將人工智能用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String get career_finance_spread_screen_what_is_career_finance_spread =>
      '什麼是職業與財務牌陣？';

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
    return '你是一位經驗豐富的塔羅師。用戶 $userName 問道：「$userQuestion」。請用「凱爾特十字」牌陣（韋特經典牌陣）回答。牌面分配如下：情況 - $situationCard；挑戰 - $challengeCard；潛意識 - $subconsciousCard；近期過去 - $pastCard；意識 - $consciousCard；近期未來 - $hiddenCard；內在自我 - $selfCard；環境 - $environmentCard；希望或恐懼 - $hopesCard；結果 - $outcomeCard。請至少六次提及 $userName 的名字，並務必將每張牌與問題連結。結構如下：\n1) 向 $userName 打招呼。\n2) 標題：牌陣：情況（$situationCard）／挑戰（$challengeCard）／潛意識（$subconsciousCard）／近期過去（$pastCard）／意識（$consciousCard）／近期未來（$hiddenCard）／內在自我（$selfCard）／環境（$environmentCard）／希望／恐懼（$hopesCard）／結果（$outcomeCard）。\n3) 情況 — $situationCard（45-55字）：三個關鍵詞、牌義象徵及 $userName 就問題 $userQuestion 的當前狀況。\n4) 挑戰 — $challengeCard（45-55字）：對 $userName 來說的主要障礙或助力。\n5) 潛意識 — $subconsciousCard（45-55字）：影響 $userName 的隱藏動機或能量。\n6) 近期過去 — $pastCard（45-55字）：導致 $userName 現狀的過去事件。\n7) 意識 — $consciousCard（45-55字）：$userName 的目標、期望或意識層面。\n8) 近期未來 — $hiddenCard（45-55字）：未來幾週可能的發展。\n9) 內在自我 — $selfCard（45-55字）：$userName 的狀態與資源。\n10) 環境 — $environmentCard（45-55字）：周圍人事物的影響。\n11) 希望／恐懼 — $hopesCard（45-55字）：$userName 的期待或擔憂。\n12) 結果 — $outcomeCard（45-55字）：根據牌陣建議的可能結果。\n13) 結語：對 $userName 的友善支持與正面肯定（30-35字）。\n要求：全文約400-500字，語氣生動親切，含4-6個神秘主題表情符號；每段間隔兩行空白；不使用 *、# 或其他標記；僅用純文字。';
  }

  @override
  String get celtic_cross_screen_unable_to_load_card => '無法載入牌卡';

  @override
  String get celticCrossTitle => '凱爾特十字';

  @override
  String get chat_with_tarot_reader_screen_request_received => '您的請求已收到。請翻開牌卡';

  @override
  String chat_with_tarot_reader_screen_prompt(
      Object hiddenCard,
      Object pastCard,
      Object presentCard,
      Object userName,
      Object userQuestion) {
    return '你是一位經驗豐富的塔羅師。用戶 $userName 問道：「$userQuestion」。請用「過去－現在－未來」牌陣回答。牌面分配如下：過去 - $pastCard；現在 - $presentCard；未來 - $hiddenCard。請至少四次提及 $userName 的名字，並務必將牌義與問題連結。結構如下：\n1) 向 $userName 打招呼。\n2) 標題：牌陣：過去（$pastCard）－現在（$presentCard）－未來（$hiddenCard）。\n3) 過去部分 — $pastCard（40-50字）：三個關鍵詞、牌義象徵，說明過去事件如何影響 $userName 就問題 $userQuestion 的結果。\n4) 現在部分 — $presentCard（40-50字）：關鍵詞、牌義象徵及當前因素，影響對 $userQuestion 的回答。\n5) 未來部分 — $hiddenCard（40-50字）：關鍵詞、牌義象徵及可能的發展情境，針對 $userName 的問題。\n6) 結論：簡短建議、正面肯定（20-30字）及明確的機會總結。\n要求：全文約180-220字，語氣溫暖神秘，含3-5個主題表情符號；每段間隔兩行空白；禁止使用 *、# 或其他格式符號；僅用純文字。';
  }

  @override
  String get see_meaning_button => '了解含義';

  @override
  String three_cards_title(Object cards) {
    return '牌陣中有3張牌';
  }

  @override
  String get new_spread_button => '製作新的牌陣';

  @override
  String get disclaimer_text => '本應用程式僅將人工智能用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String get enter_your_question => '輸入您的問題...';

  @override
  String get classic_spreads_screen_title => '經典牌陣';

  @override
  String get classic_spreads_screen_three_cards_title => '3 張牌';

  @override
  String get classic_spreads_screen_three_cards_description => '過去、現在、未來';

  @override
  String get classic_spreads_screen_five_cards_title => '5 張牌';

  @override
  String get classic_spreads_screen_five_cards_description => '深入分析情況';

  @override
  String get classic_spreads_screen_celtic_cross_title => '凱爾特十字';

  @override
  String get classic_spreads_screen_celtic_cross_description => '完整的10張牌陣';

  @override
  String five_cards_screen_prompt(
      Object adviceCard,
      Object hiddenCard,
      Object outcomeCard,
      Object pastCard,
      Object presentCard,
      Object userName,
      Object userQuestion) {
    return '你是一位經驗豐富的塔羅牌占卜師。用戶$userName問道：\"$userQuestion\"。請使用\"5張牌\"陣型回答。牌按順序給出：過去 - $pastCard; 現在 - $presentCard; 隱藏 - $hiddenCard; 建議 - $adviceCard; 結果 - $outcomeCard。請至少五次提到$userName，並確保將每張牌與問題聯繫起來。請遵循以下結構：\n\n1）以$userName的名字問候。\n\n2）標題：陣型：過去（$pastCard）/ 現在（$presentCard）/ 隱藏（$hiddenCard）/ 建議（$adviceCard）/ 結果（$outcomeCard）。\n\n3）過去 — $pastCard（45-55字）：三個關鍵詞，牌的象徵意義，以及過去對$userName的$userQuestion的影響。\n\n4）現在 — $presentCard（45-55字）：關鍵詞，象徵意義，$userName問題的當前狀態。\n\n5）隱藏 — $hiddenCard（45-55字）：無意識地影響$userName情況的因素，重點關注象徵意義。\n\n6）建議 — $adviceCard（45-55字）：基於牌面圖像的$userName的實用行動。\n\n7）結果 — $outcomeCard（45-55字）：如果遵循建議的可能情景，向$userName致辭。\n\n8）結論：對$userName的友好支持和積極肯定（25-30字）。\n\n要求：總字數230-260字，生動的對話語調，3-5個神秘表情符號；用雙換行（\\n\\n）分隔每個塊；不要使用*, #或其他標記符號；只寫純文本。';
  }

  @override
  String get fiveCardsInSpread => '牌陣中的5張牌';

  @override
  String get makeNewSpread => '進行新的牌陣解析';

  @override
  String
      get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMake =>
          '該應用程式僅將人工智能用於娛樂目的。我們不對您所做的決定承擔任何責任。如有需要，請諮詢專業人士。';

  @override
  String get requestReceivedPleaseOpenCards => '您的請求已被接受。請翻開牌卡';

  @override
  String love_spread_prompt(Object dynamicCard, Object partnerCard,
      Object userName, Object userQuestion, Object youCard) {
    return '你是一位經驗豐富的塔羅師。用戶 $userName 問道：「$userQuestion」。請用三張牌的愛情牌陣來回答。牌面如下：$userName 的感情 — $youCard；伴侶的感情 — $partnerCard；關係的動態或潛力 — $dynamicCard。請至少三次提及 $userName 的名字，並將每張牌與問題相關聯。結構如下：\n1) 以 $userName 的名字打招呼。\n2) 標題：牌陣：$youCard | $partnerCard | $dynamicCard。\n3) $youCard — 40–50 字：描述這張牌對 $userName 的感情和期望的啟示。\n4) $partnerCard — 40–50 字：揭示伴侶對 $userName 問題的情感和意圖。\n5) $dynamicCard — 40–50 字：展示這兩股能量如何互動，以及關係可能走向何方。\n6) 結語：給 $userName 溫暖的建議和積極的肯定（20–25 字）。\n要求：總字數 150–180 字，語氣友善浪漫，包含 2–4 個主題相關的表情符號；段落以雙換行符號 (\\n\\n) 分隔；避免使用 *、# 及任何標記。';
  }

  @override
  String get loveSpread => '愛情牌陣';

  @override
  String
      get applicationUsesAIExclusivelyForEntertainmentWeDoNotTakeResponsibilityForDecisionsYouHaveMadeIfNeededPleaseConsultSpecialist =>
          '該應用程式僅將人工智能用於娛樂目的。我們不對您所做的決定承擔任何責任。如有需要，請諮詢專業人士。';

  @override
  String main_screen_greeting_with_name(Object name) {
    return '你好，$name';
  }

  @override
  String get main_screen_monday => '星期一';

  @override
  String get main_screen_tuesday => '星期二';

  @override
  String get main_screen_wednesday => '星期三';

  @override
  String get main_screen_thursday => '星期四';

  @override
  String get main_screen_friday => '星期五';

  @override
  String get main_screen_saturday => '星期六';

  @override
  String get main_screen_sunday => '星期日';

  @override
  String get main_screen_your_card_of_the_day => '你今日的牌';

  @override
  String main_screen_card_of_the_day_with_name(Object cardName) {
    return '今日之牌：$cardName';
  }

  @override
  String get main_screen_card_of_the_day => '今日之卡：';

  @override
  String get main_screen_viewed => '已開啟';

  @override
  String get main_screen_not_viewed => '查看';

  @override
  String get main_screen_spreads => '牌陣';

  @override
  String get main_screen_training => '教學';

  @override
  String get main_screen_entertainment => '娛樂';

  @override
  String get main_screen_glad_to_see_you_here => '很高興見到你！';

  @override
  String get main_screen_quick_reading_title => '快速攤牌';

  @override
  String get main_screen_quick_reading_description => '只需輕觸幾下，即可用一張牌獲得明確答案';

  @override
  String get monthly_forecast_spread_screen_request_accepted => '您的請求已收到。請翻開牌卡';

  @override
  String monthly_forecast_spread_screen_prompt(Object cards, Object userName) {
    return '為 $userName 根據這些牌卡做一個月度預測：$cards';
  }

  @override
  String get aboutSpread => '關於牌陣';

  @override
  String get monthlyForecast => '月度預測';

  @override
  String
      get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNecessaryPleaseConsultSpecialist =>
          '本應用程式僅將人工智能用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String purchase_love_screen_test_message(Object planName) {
    return '測試佔位符：已選擇方案「$planName」';
  }

  @override
  String get quick_reading_screen_what_is_quick_reading => '什麼是快速占卜？';

  @override
  String get quick_reading_screen_quick_reading_explanation =>
      '快速占卜是一種快速占卜（答案：是或否），幫助您立即獲得對具體問題或當日整體氛圍的清晰回答。非常適合需要「此時此刻」快速靈感或建議的時候。';

  @override
  String get self_development_balance_spread_screen_request_accepted =>
      '您的請求已被接受。請翻開牌卡';

  @override
  String get self_development_balance_spread_screen_error_getting_value =>
      '獲取占卜結果時出錯。請再試一次。';

  @override
  String
      get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNeededConsultSpecialist =>
          '本應用程式僅將人工智能用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String get thematic_spreads_screen_title => '主題牌陣';

  @override
  String get thematic_spreads_screen_love_spread_title => '愛情牌陣';

  @override
  String get thematic_spreads_screen_love_spread_description => '關係與感情分析';

  @override
  String get thematic_spreads_screen_career_finance_title => '事業與財務';

  @override
  String get thematic_spreads_screen_career_finance_description => '專業與財務分析';

  @override
  String get thematic_spreads_screen_pros_cons_title => '優點與缺點';

  @override
  String get thematic_spreads_screen_pros_cons_description => '優缺點分析';

  @override
  String get thematic_spreads_screen_monthly_forecast_title => '每月預測';

  @override
  String get thematic_spreads_screen_monthly_forecast_description => '按月份預測';

  @override
  String get thematic_spreads_screen_self_development_title => '自我成長與平衡';

  @override
  String get thematic_spreads_screen_self_development_description => '靈性成長與和諧';

  @override
  String get requestReceived => '您的請求已被接受。請翻開牌卡';

  @override
  String pros_cons_spread_prompt(Object cards, Object userName) {
    return '為 $userName 做一個這些牌卡的利與弊解析：$cards';
  }

  @override
  String get pros_cons_spread_screen_what_is_pros_cons_spread => '什麼是「利與弊」解析？';

  @override
  String get pros_cons_spread_screen_pros_cons_spread_explanation =>
      '「利與弊」解析幫助分析情況的優缺點，以便做出明智的決定。';

  @override
  String get pros_cons_spread_screen_understand_button => '明白';

  @override
  String get prosConsSpreadTitle => '利與弊牌陣';

  @override
  String get spreadDisclaimer => '應用程式僅將人工智能用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String get fun_spread_screen_generation_error => '生成牌陣時出錯。請再試一次。';

  @override
  String get fun_spread_screen_share_error => '保存圖片時出錯。';

  @override
  String get fun_spread_screen_about_fun_spread => '什麼是有趣的牌陣？';

  @override
  String get fun_spread_screen_fun_spread_explanation =>
      '有趣的牌陣是一種特殊的塔羅牌占卜方式，結合了傳統牌陣的深度與輕鬆積極的態度。它將幫助你從新的角度看待情況，並在日常生活中找到快樂。';

  @override
  String get fun_spread_screen_understand_button => '明白了';

  @override
  String get fun_spread_screen_title => '有趣的牌陣';

  @override
  String get fun_spread_screen_generate_button => '創建牌陣';

  @override
  String get fun_spread_screen_share_button => '分享';

  @override
  String get fun_spread_screen_new_button => '新的牌陣';

  @override
  String get fun_spread_screen_share_text => '看看我在 Tarot AI 應用程式中得到的有趣塔羅牌陣！';

  @override
  String get ad_promo_tariff => '方案';

  @override
  String get ad_promo_love => '愛情';

  @override
  String get ad_promo_discount => '特價 -50%';

  @override
  String get ad_promo_no_ads => '• 無廣告';

  @override
  String get ad_promo_no_limits => '• 無限制';

  @override
  String get no_internet_error => '我們的應用程式只在有網絡時運作。請開啟 Wi-Fi 或流動數據。';

  @override
  String fun_spread_screen_mate_prompt_3cards(Object userName) {
    return '為 $userName 做一個超搞笑、狂野又帶點髒話的三張塔羅牌占卜。每張牌都要有個爆笑的名字，並寫一段描述：第一張牌：<名稱> — <簡短搞笑描述>，第二張牌：<名稱> — <簡短搞笑描述>，第三張牌：<名稱> — <簡短搞笑描述>。用髒話來增加幽默感，但不要冒犯人。全文不超過7句。';
  }

  @override
  String fun_spread_screen_no_mate_prompt_3cards(Object userName) {
    return '為 $userName 創作一個有趣的三張塔羅牌牌陣。為每張牌想一個搞笑的名稱，並寫一段獨立的描述：第一張牌：<名稱> — <簡短搞笑描述>，第二張牌：<名稱> — <簡短搞笑描述>，第三張牌：<名稱> — <簡短搞笑描述>。牌陣應該既有趣又富有深意。僅限三張牌。全文不超過七句。';
  }

  @override
  String get fun_spread_screen_title_top => '塔羅牌牌陣';

  @override
  String fun_spread_screen_title_for_name(Object name) {
    return '給 $name';
  }

  @override
  String get contact_us_screen_message_sent => '您的訊息已收到，謝謝！';

  @override
  String get contact_us_screen_message_error => '發送訊息錯誤';

  @override
  String get love_spread_screen_initial_message => '您好，請在下方輸入您的問題：';

  @override
  String get main_screen_tariff => '資費';

  @override
  String get main_screen_promo_50 => '促銷 -50%';

  @override
  String get main_screen_rate_hint => '如果評分窗口未彈出，您可以在 Google Play 留下評論。';

  @override
  String get main_screen_rate_error => '無法打開 Google Play。請稍後再試。';

  @override
  String get love_spread_screen_suggested_questions_1 => '我對這個人的感覺是什麼？';

  @override
  String get love_spread_screen_suggested_questions_2 => '是什麼阻礙了我們的關係？';

  @override
  String get love_spread_screen_suggested_questions_3 => '我們的關係未來會是怎樣？';

  @override
  String get career_finance_spread_screen_suggested_questions_1 => '我的事業有哪些機會？';

  @override
  String get career_finance_spread_screen_suggested_questions_2 =>
      '如何改善我的財務狀況？';

  @override
  String get career_finance_spread_screen_suggested_questions_3 => '值得換工作嗎？';

  @override
  String get pros_cons_spread_screen_suggested_questions_1 => '我應該做這個決定嗎？';

  @override
  String get pros_cons_spread_screen_suggested_questions_2 => '這個選擇有哪些優點和缺點？';

  @override
  String get pros_cons_spread_screen_suggested_questions_3 => '在這種情況下什麼更重要？';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_1 =>
      '這個月會有什麼等待著我？';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_2 =>
      '未來會發生哪些事件？';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_3 =>
      '這個月應該專注於什麼？';

  @override
  String get self_development_balance_spread_screen_suggested_questions_1 =>
      '我該如何靈性成長？';

  @override
  String get self_development_balance_spread_screen_suggested_questions_2 =>
      '什麼阻礙了我的內在平衡？';

  @override
  String get self_development_balance_spread_screen_suggested_questions_3 =>
      '如何在生活中找到和諧？';

  @override
  String career_three_card_prompt(Object adviceCard, Object challengeCard,
      Object situationCard, Object userName, Object userQuestion) {
    return '你是一位經驗豐富的塔羅教練。用戶 $userName 問：「$userQuestion」。請做一個三張牌的職業與財務牌陣。牌的順序是：1) 情況 — $situationCard；2) 障礙或關鍵機會 — $challengeCard；3) 建議與潛力 — $adviceCard。根據 $userName 的名字判斷性別，並使用正確的詞尾和代詞。以友善且專業的語氣與 $userName 交流：指出他目前的位置，阻礙成長的因素（或需要注意的機會），以及能帶來理想收入的實際步驟。至少提及 $userName 三次。結構如下：\n1) 問候 — 一句話。\n2) 標題：牌陣：$situationCard | $challengeCard | $adviceCard。\n3) $situationCard — 45–55字：描述 $userName 當前的狀況（工作、事業或整體財務背景）及該牌的象徵意義。\n4) $challengeCard — 45–55字：揭示主要障礙或隱藏機會；說明它如何反映在牌面及 $userName 的問題中。\n5) $adviceCard — 45–55字：提出具體行動（例如重新檢視預算、申請加薪、學習新技能）並描述可能的結果。\n6) 結尾 — 20–25字：友善的總結，積極的肯定語及兩個商務表情符號。\n要求：總字數160–185字，語氣清晰專業無行話，包含2–3個表情符號；段落以雙換行分隔；不使用 *、# 或其他標記。';
  }

  @override
  String pros_cons_three_card_prompt(Object adviceCard, Object conCard,
      Object proCard, Object userName, Object userQuestion) {
    return '你是一位經驗豐富的塔羅師。用戶 $userName 問：「$userQuestion」。請做一個三張牌的「利與弊」牌陣。牌的順序是：優點 — $proCard；缺點 — $conCard；建議/結論 — $adviceCard。根據 $userName 的名字判斷性別，並使用正確的詞尾和代詞。至少提及 $userName 三次，並將每張牌與問題相關聯。結構如下：\n1) 以 $userName 的名字打招呼。\n2) 標題：牌陣：$proCard | $conCard | $adviceCard。\n3) 優點：$proCard — 45–55字。說明這張牌為 $userName 的情況帶來的主要好處或正面資源。\n4) 缺點：$conCard — 45–55字。描述對 $userName 來說的風險、隱藏成本或弱點。\n5) 建議：$adviceCard — 45–55字。權衡利弊，提出一個具體行動（動詞+對象），並說明這將如何改變 $userName 的結果。\n6) 結論 — 用一個詞「是」或「否」，接著一句理由和一段鼓勵的肯定語（20–25字），附1–2個表情符號。\n要求：總字數150–180字，語氣友善口語；各部分以雙換行分隔；不使用 *、# 或其他標記。';
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
    return '你是一位專業塔羅師。用戶 $userName 問：「$userQuestion」。請為 $month 做一個「月輪」牌陣。牌依序為：1 — $card1，2 — $card2，3 — $card3，4 — $card4，5 — $card5，6 — $card6，7 — $card7，8 — $card8，9 — $card9，10 — $card10，11 — $card11，12 — $card12。根據 $userName 的名字判斷性別，使用正確詞尾和代詞。至少提及 $userName 五次，但**不要在每個日期後面插入名字**，只在建議中自然提及。使用日曆日期分組：1–3、4–6、7–9、10–12、13–15、16–18、19–21、22–24、25–26、27–28、29–30、31（若該月有30天，則第12張牌對應30號）。格式：\n1) 以 $userName 的名字問候（1–2句）。\n2) 簡短說明牌陣目的（1句）。\n3–14) 每張牌用格式「1–3 $month — $card1」（不帶名字）：接著2–3句描述該時期的主要能量及實用建議，自然提及 $userName。\n15) 結論：本月總體建議（約40字）及鼓舞人心的肯定語，附2–3個表情符號。\n要求：總字數360–400字；語氣友善激勵；段落以雙換行分隔；不使用 *、#、列表或技術標記。';
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
    return '你是一位經驗豐富的塔羅教練。用戶 $userName 問：「$userQuestion」。請做一個七張牌的「自我成長與平衡」牌陣。牌的順序是：核心 — $coreCard；心智 — $mindCard；情感 — $emotionCard；身體 — $bodyCard；資源 — $strengthCard；阻礙 — $challengeCard；建議 — $adviceCard。根據 $userName 的名字判斷性別，使用正確詞尾和代詞。語氣生動支持，至少提及 $userName 四次，並將每張牌與問題緊密連結。結構與格式：\n1) 以 $userName 的名字問候。\n2) 標題：牌陣：$coreCard | $mindCard | $emotionCard | $bodyCard | $strengthCard | $challengeCard | $adviceCard。\n3) $coreCard — 描述 $userName 自我成長的主要焦點。\n4) $mindCard — 談如何調整心態及學習內容。\n5) $emotionCard — 揭示情感資源與動力。\n6) $bodyCard — 建議如何照顧身體與能量。\n7) $strengthCard — 展示內在天賦或外部支持。\n8) $challengeCard — 指出主要失衡及其原因。\n9) $adviceCard — 提出整合各方面的具體行動。\n10) 結尾：鼓舞人心的肯定語與溫暖祝福，附2–3個表情符號。\n要求：每點2–3句；各點間以雙換行分隔；不使用 *、# 或其他標記。';
  }

  @override
  String get main_screen_suggest_spread => '想添加什麼牌陣？請聯絡我們';

  @override
  String get main_screen_disclaimer =>
      '本應用程式僅將人工智能用於娛樂目的。我們不對您所做的決定承擔任何責任。如有需要，請諮詢專業人士。';

  @override
  String get month_january => '一月';

  @override
  String get month_february => '二月';

  @override
  String get month_march => '三月';

  @override
  String get month_april => '四月';

  @override
  String get month_may => '五月';

  @override
  String get month_june => '六月';

  @override
  String get month_july => '七月';

  @override
  String get month_august => '八月';

  @override
  String get month_september => '九月';

  @override
  String get month_october => '十月';

  @override
  String get month_november => '十一月';

  @override
  String get month_december => '十二月';

  @override
  String get fun_share_button => '分享';

  @override
  String get fun_new_spread_button => '新牌陣';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get main_title => '占卜並學習塔羅牌';

  @override
  String get your_name => '您的名字';

  @override
  String get personalization_hint => '向 AI 塔羅師提問並獲得個人化牌陣';

  @override
  String get start_button => '開始';

  @override
  String get language => '語言';

  @override
  String get continueBtn => '繼續';

  @override
  String get card_of_the_day => '今日之牌';

  @override
  String get description => '描述';

  @override
  String get spreads => '牌陣';

  @override
  String get quick_spread => '快速牌陣';

  @override
  String get classic_spreads => '經典牌陣';

  @override
  String get thematic_spreads => '主題牌陣';

  @override
  String get card_combination => '牌組組合';

  @override
  String get card_meanings => '牌義';

  @override
  String get training => '教學';

  @override
  String get welcome => '歡迎';

  @override
  String get today => '今天';

  @override
  String get view => '觀看';

  @override
  String get select_card => '選擇卡片';

  @override
  String get please_select_cards => '請在所有欄位中選擇不同的卡片。';

  @override
  String get good_day => '祝你有美好的一天，\n選擇牌卡以了解它們的組合和含義';

  @override
  String get language_hint => '為了完全個性化牌陣';

  @override
  String get quickReading => '快速牌陣';

  @override
  String get comingSoon => '即將推出';

  @override
  String get onboarding_notifications_title => '🔔 想不錯過「今日之牌」和新的牌陣嗎？';

  @override
  String get onboarding_notifications_subtitle => '請同意接收通知（不含垃圾郵件）。';

  @override
  String get onboarding_notifications_allow => '同意';

  @override
  String get onboarding_notifications_decline => '拒絕';

  @override
  String get suggested_questions_chat_1 => '告訴我關於我的愛情生活';

  @override
  String get suggested_questions_chat_2 => '我的職業生涯會發生什麼？';

  @override
  String get suggested_questions_chat_3 => '我如何能提升自己？';

  @override
  String get suggested_questions_chat_4 => '未來有哪些機會在等待我？';

  @override
  String get onboarding_final_title => '一切就緒！';

  @override
  String get onboarding_final_subtitle => '為了維持項目運作，我們會顯示廣告。但如果您不想看到，可以訂閱';

  @override
  String get onboarding_final_benefits => '無廣告\n無限制的牌陣\n無限制的教學';

  @override
  String get onboarding_final_yearly => '每年';

  @override
  String get onboarding_final_badge => '節省 50%';

  @override
  String get onboarding_final_yearly_price => '249/年';

  @override
  String get onboarding_final_yearly_month => '24/月';

  @override
  String get onboarding_final_trial => '7 天免費';

  @override
  String get onboarding_final_trial_price => '然後每月9';

  @override
  String get onboarding_final_trial_month => '每月';

  @override
  String get onboarding_final_note => '訂閱非強制且會自動續訂。您可以隨時取消';

  @override
  String get onboarding_final_choose_yearly => '選擇每年';

  @override
  String get onboarding_final_choose_trial => '選擇7天免費試用';

  @override
  String get onboarding_final_or => '或';

  @override
  String get onboarding_final_continue_ads => '繼續觀看廣告';

  @override
  String get main_screen_greeting => '您好';

  @override
  String main_screen_date_today(Object date) {
    return '今天，$date';
  }

  @override
  String get main_screen_card_of_day_title => '您的每日卡牌';

  @override
  String main_screen_card_of_day_description(Object cardName) {
    return '今日卡牌：$cardName';
  }

  @override
  String get main_screen_card_of_day_description_empty => '今日卡牌：';

  @override
  String get main_screen_card_of_day_status_viewed => '已開啟';

  @override
  String get main_screen_card_of_day_status_view => '查看';

  @override
  String get main_screen_section_spreads => '牌陣';

  @override
  String get main_screen_section_training => '學習';

  @override
  String get main_screen_section_entertainment => '娛樂';

  @override
  String get main_screen_quick_spread_title => '快速占卜';

  @override
  String get main_screen_quick_spread_description => '只需輕觸幾下，即可用一張牌獲得清晰的答案';

  @override
  String get main_screen_thematic_spreads_title => '主題占卜';

  @override
  String get main_screen_thematic_spreads_description =>
      '重要領域的現成方案：愛情、事業、健康、旅行';

  @override
  String get main_screen_card_combination_title => '牌組組合';

  @override
  String get main_screen_fun_spread_title => '趣味占卜';

  @override
  String get main_screen_fun_spread_description => '提升心情，做個趣味占卜並分享到社交媒體';

  @override
  String get main_screen_love_badge => '愛情';

  @override
  String get card_combination_screen_title => '牌組組合';

  @override
  String get card_combination_screen_greeting => '您好，請選擇牌卡以了解組合和含義';

  @override
  String get card_combination_screen_card_hint => '牌卡';

  @override
  String get card_combination_screen_get_combination_button => '查看組合';

  @override
  String get card_combination_screen_new_spread_button => '進行新牌陣';

  @override
  String get card_combination_screen_fill_all_fields_error => '請填寫所有卡片欄位。';

  @override
  String get card_combination_screen_invalid_cards_error =>
      '請僅從提供的列表中選擇卡片。錯誤的卡片：';

  @override
  String get card_combination_screen_duplicate_cards_error => '請在所有欄位中選擇不同的卡片。';

  @override
  String get card_combination_screen_general_error => '錯誤：無法獲取回應。請再試一次。';

  @override
  String get card_combination_screen_disclaimer =>
      '本應用程式僅將人工智慧用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String card_combination_screen_prompt(Object cards, Object lang) {
    return '分析塔羅牌組合：$cards。深入神秘地分析它們的相互作用並給出總體建議。回答完全使用$lang語言。無需問候和結語。';
  }

  @override
  String get quick_reading_screen_title => '快速占卜';

  @override
  String get quick_reading_screen_select_card => '選擇卡牌';

  @override
  String get quick_reading_screen_get_answer_button => '獲取答案';

  @override
  String get quick_reading_screen_what_is_quick_spread => '什麼是快速占卜？';

  @override
  String get quick_reading_screen_quick_spread_explanation =>
      '快速占卜是一種快速占卜（答案：是或否），幫助立即獲得對具體問題或當日整體氛圍的清晰回答。非常適合需要「此時此刻」快速靈感或建議的時候。';

  @override
  String get quick_reading_screen_understand_button => '明白了';

  @override
  String get quick_reading_result_screen_generating_response => '正在生成回答...';

  @override
  String quick_reading_result_screen_error_generating(Object error) {
    return '生成回答時出錯：$error';
  }

  @override
  String quick_reading_result_screen_error_generating_response(Object e) {
    return '生成回答時出錯：$e';
  }

  @override
  String get quick_reading_result_screen_what_is_quick_spread => '什麼是快速占卜？';

  @override
  String get quick_reading_result_screen_quick_spread_explanation =>
      '快速占卜是一種快速占卜（答案：是或否），幫助立即獲得對具體問題或當天整體氛圍的清晰回答。非常適合需要「此時此刻」快速靈感或建議的時候。';

  @override
  String get quick_reading_result_screen_understand_button => '明白了';

  @override
  String get quick_reading_result_screen_quick_spread_title => '快速占卜';

  @override
  String get quick_reading_result_screen_new_spread_button => '新占卜';

  @override
  String get quick_reading_result_screen_disclaimer =>
      '該應用程式僅將人工智慧用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String quick_reading_result_screen_prompt(Object cardName, Object userName) {
    return '你是一位經驗豐富的塔羅師。用戶 $userName 抽到了牌——$cardName。\n回答卡牌：是 或 否（請根據情況選擇一個詞）\n$userName，這張$cardName的能量之所以導向這個答案，是因為它象徵著內心的力量與決斷力，這讓你在面對當前挑戰時能夠保持清晰的頭腦和堅定的信念。對於你來說，這張牌提醒你要相信自己的直覺，勇敢地採取行動。這種能量帶來積極的變化，幫助你克服障礙，迎接新的機會。🌟🔮';
  }

  @override
  String get career_finance_spread_screen_request_accepted => '您的請求已被接受。請翻開牌卡';

  @override
  String get career_finance_spread_screen_error_getting_value =>
      '獲取牌陣數值時出錯。請再試一次。';

  @override
  String get career_finance_spread_screen_what_is_career_finance =>
      '什麼是職業與財務牌陣？';

  @override
  String get career_finance_spread_screen_career_finance_explanation =>
      '這個牌陣有助於分析職業和財務領域。您將了解機會、障礙和成長前景。';

  @override
  String get career_finance_spread_screen_understand_button => '明白';

  @override
  String get career_finance_spread_screen_learn_meaning_button => '了解含義';

  @override
  String get career_finance_spread_screen_career_finance_title => '職業與財務';

  @override
  String get career_finance_spread_screen_new_spread_button => '進行新的牌陣';

  @override
  String get career_finance_spread_screen_disclaimer =>
      '該應用程式僅將人工智慧用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String get career_finance_spread_screen_enter_question_hint => '請輸入您的問題...';

  @override
  String get pros_cons_spread_screen_what_is_pros_cons => '什麼是「利與弊」牌陣？';

  @override
  String get pros_cons_spread_screen_pros_cons_title => '「利與弊」牌陣';

  @override
  String get pros_cons_spread_screen_enter_question_hint => '請輸入您的問題...';

  @override
  String
      get self_development_balance_spread_screen_self_development_explanation =>
          '「自我成長與平衡」牌陣由7張牌組成，排列成圓形。每張牌象徵您靈性成長和內在和諧的特定面向。';

  @override
  String get card_meanings_screen_major_arcana => '大阿爾克那';

  @override
  String get card_meanings_screen_wands => '權杖';

  @override
  String get card_meanings_screen_cups => '聖杯';

  @override
  String get card_meanings_screen_swords => '寶劍';

  @override
  String get card_meanings_screen_pentacles => '五角星';

  @override
  String get card_meanings_screen_title => '牌義';

  @override
  String get love_spread_screen_new_spread_button => '進行新占卜';

  @override
  String get love_spread_screen_enter_question_hint => '請輸入您的問題...';

  @override
  String purchase_love_screen_test_stub(Object plan) {
    return '測試佔位符：選擇的方案為「$plan」';
  }

  @override
  String get purchase_love_screen_love_tariff_title => '愛情方案';

  @override
  String get ad_promo_block_tariff => '方案';

  @override
  String get ad_promo_block_love => '愛情';

  @override
  String get ad_promo_block_promotion_70 => '促銷 -50%';

  @override
  String get ad_promo_block_no_ads => '• 無廣告';

  @override
  String get ad_promo_block_no_limits => '• 無限制';

  @override
  String three_cards_screen_title(Object cards) {
    return '3 張牌在牌陣中';
  }

  @override
  String get three_cards_screen_initial_message => '您好，請在下方輸入您的問題：';

  @override
  String get three_cards_screen_request_accepted => '您的問題已收到。請翻開牌卡';

  @override
  String get three_cards_screen_suggested_questions_1 => '我現在的主要問題是什麼？';

  @override
  String get three_cards_screen_suggested_questions_2 => '我應該在近期專注於什麼？';

  @override
  String get three_cards_screen_suggested_questions_3 => '有什麼是對我隱藏的？';

  @override
  String get three_cards_screen_see_meaning_button => '了解含義';

  @override
  String get three_cards_screen_new_spread_button => '新牌陣';

  @override
  String get three_cards_screen_enter_question_hint => '請輸入您的問題...';

  @override
  String get three_cards_screen_what_is_three_cards => '什麼是三張牌陣？';

  @override
  String get three_cards_screen_three_cards_explanation =>
      '經典牌陣，顯示您情況的過去、現在和未來。第一張牌代表過去，第二張牌代表現在，第三張牌代表未來。';

  @override
  String get three_cards_screen_understand_button => '明白了';

  @override
  String get three_cards_screen_error_getting_value => '獲取牌陣數值時出錯。請再試一次。';

  @override
  String get three_cards_screen_disclaimer =>
      '本應用程式僅將人工智慧用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String get five_cards_screen_title => '牌陣中有5張牌';

  @override
  String get five_cards_screen_initial_message => '您好，請在下方輸入您的問題：';

  @override
  String get five_cards_screen_request_accepted => '您的問題已收到。請翻開牌卡';

  @override
  String get five_cards_screen_suggested_questions_1 => '我應該選擇哪條路？';

  @override
  String get five_cards_screen_suggested_questions_2 => '是什麼阻礙我達成目標？';

  @override
  String get five_cards_screen_suggested_questions_3 => '我有哪些功能？';

  @override
  String get five_cards_screen_see_meaning_button => '了解含義';

  @override
  String get five_cards_screen_new_spread_button => '製作新的牌陣';

  @override
  String get five_cards_screen_enter_question_hint => '請輸入您的查詢...';

  @override
  String get five_cards_screen_what_is_five_cards => '什麼是五張牌牌陣？';

  @override
  String get five_cards_screen_five_cards_explanation =>
      '五張牌的牌陣是一個緊湊的布局，揭示情況的五個關鍵方面：過去、現在、隱藏影響、幫助者/阻礙者和可能的結果。';

  @override
  String get five_cards_screen_understand_button => '明白了';

  @override
  String get five_cards_screen_error_getting_value => '獲取牌陣數值時出錯。請再試一次。';

  @override
  String get five_cards_screen_disclaimer =>
      '本應用程式僅將人工智慧用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String get celtic_cross_screen_title => '凱爾特十字陣';

  @override
  String get celtic_cross_screen_initial_message => '您好，請在下方輸入您的請求：';

  @override
  String get celtic_cross_screen_suggested_questions_1 => '我目前的主要問題是什麼？';

  @override
  String get celtic_cross_screen_suggested_questions_2 => '我接下來應該專注於什麼？';

  @override
  String get celtic_cross_screen_suggested_questions_3 => '有什麼是對我隱藏的？';

  @override
  String get celtic_cross_screen_see_meaning_button => '了解意義';

  @override
  String get celtic_cross_screen_new_spread_button => '製作新的牌陣';

  @override
  String get celtic_cross_screen_enter_question_hint => '請輸入您的查詢...';

  @override
  String get celtic_cross_screen_what_is_celtic_cross_dialog => '什麼是凱爾特十字牌陣？';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_dialog =>
      '「凱爾特十字」是一種由10張牌組成的牌陣，從各個角度詳細解析情況：當前環境、障礙、內外影響，以及近期動態和最終結果。牌依序擺放：\n1 - 情況 — 問題的當下本質。\n2 - 挑戰 — 幫助或阻礙前進的因素。\n3 - 潛意識（根源）— 隱藏的動機和深層力量。\n4 - 最近過去 — 導致當前狀況的事件。\n5 - 意識（目標）— 目前詢問者關注的焦點。\n6 - 不遠的未來 — 未來幾週的可能發展。\n7 - 「我自己」— 內心狀態、資源、對問題的態度。\n8 - 環境 — 周圍人物和情況的影響。\n9 - 希望／恐懼 — 期望、疑慮和強烈情感。\n10 - 結果 — 若趨勢持續，可能的結局。\n此牌陣讓您看到「大局」：您所處的位置、阻礙或助力、幕後的隱藏動力，以及事態的發展方向。\n牌陣示意圖見下圖。';

  @override
  String get celtic_cross_screen_celtic_cross_explanation_image =>
      'assets/images/kelt.png';

  @override
  String get celtic_cross_screen_understand_button => '明白';

  @override
  String celtic_cross_screen_please_open_cards(Object cards) {
    return '您的請求已被接受。請打開卡片';
  }

  @override
  String celtic_cross_screen_request_accepted(Object cards) {
    return '請求已接受，請打開卡片';
  }

  @override
  String get the_user => '用戶';

  @override
  String get good_day_please_write_your_question_below => '您好，請在下方輸入您的請求';

  @override
  String get errorGettingSpreadMeaning => '獲取牌陣結果時出錯。請再試一次。';

  @override
  String get errorGettingSpreadMeaningPleaseTryAgain => '獲取牌陣結果時出錯。請再試一次。';

  @override
  String get seeMeaning => '查看結果';

  @override
  String get newSpread => '進行新的牌陣';

  @override
  String get enterYourQuestion => '請輸入您的問題...';

  @override
  String get enterQuestion => '輸入您的問題...';

  @override
  String makeTarotReadingFor(Object lang) {
    return '為';
  }

  @override
  String get theUser => '用戶';

  @override
  String onTheseThreeCards(Object userName) {
    return '做這三張牌的牌陣：';
  }

  @override
  String makeSelfDevelopmentAndBalanceTarotReadingFor(Object cards) {
    return '為 $cards 做自我成長與平衡牌陣';
  }

  @override
  String get getAnswer => '獲取答案';

  @override
  String get aboutTheSpread => '關於牌陣';

  @override
  String get aboutSpreadDescription => '這個牌陣有助於分析您的靈性成長和內在和諧。';

  @override
  String get gotIt => '明白了';

  @override
  String get selfDevelopmentAndBalance => '自我成長與平衡';

  @override
  String get appUsageDisclaimer =>
      '該應用程式僅將人工智慧用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String get careerFinance => '職業與財務';

  @override
  String get fun_spread_screen_with_swear_words_title => '含粗口（18+）';

  @override
  String get fun_spread_screen_with_swear_words_subtitle => '適合喜歡刺激的人';

  @override
  String get fun_spread_screen_without_swear_words_title => '無粗口';

  @override
  String get fun_spread_screen_without_swear_words_subtitle => '歡樂的牌陣，沒有髒話';

  @override
  String get fun_spread_screen_generating => '正在生成您的牌陣...';

  @override
  String get card_name_the_fool => '愚者';

  @override
  String get card_name_the_magician => '魔術師';

  @override
  String get card_name_the_high_priestess => '女祭司';

  @override
  String get card_name_the_empress => '女皇';

  @override
  String get card_name_the_emperor => '皇帝';

  @override
  String get card_name_the_hierophant => '教皇';

  @override
  String get card_name_the_lovers => '戀人';

  @override
  String get card_name_the_chariot => '戰車';

  @override
  String get card_name_strength => '力量';

  @override
  String get card_name_the_hermit => '隱士';

  @override
  String get ok_button => 'OK';

  @override
  String get cancel_button => '取消';

  @override
  String get analyzing_cards => '正在分析卡牌...';

  @override
  String get yes_button => '是';

  @override
  String get no_button => '否';

  @override
  String get loading => '加載中...';

  @override
  String get error => '錯誤';

  @override
  String get success => '成功';

  @override
  String get failed => '失敗';

  @override
  String get language_russian => '俄文';

  @override
  String get language_english_us => '美式英語';

  @override
  String get language_english_gb => '英式英語';

  @override
  String get card_name_wheel_of_fortune => '命運之輪';

  @override
  String get card_name_justice => '正義';

  @override
  String get card_name_the_hanged_man => '倒吊人';

  @override
  String get card_name_death => '死神';

  @override
  String get card_name_temperance => '節制';

  @override
  String get card_name_the_devil => '惡魔';

  @override
  String get card_name_the_tower => '高塔';

  @override
  String get card_name_the_star => '星星';

  @override
  String get card_name_the_moon => '月亮';

  @override
  String get card_name_the_sun => '太陽';

  @override
  String get card_name_judgement => '審判';

  @override
  String get card_name_the_world => '世界';

  @override
  String get card_name_ace_of_wands => '權杖王牌';

  @override
  String get card_name_two_of_wands => '權杖二';

  @override
  String get card_name_three_of_wands => '權杖三';

  @override
  String get card_name_four_of_wands => '權杖四';

  @override
  String get card_name_five_of_wands => '權杖五';

  @override
  String get card_name_six_of_wands => '權杖六';

  @override
  String get card_name_seven_of_wands => '權杖七';

  @override
  String get card_name_eight_of_wands => '權杖八';

  @override
  String get card_name_nine_of_wands => '權杖九';

  @override
  String get card_name_ten_of_wands => '權杖十';

  @override
  String get card_name_page_of_wands => '權杖侍者';

  @override
  String get card_name_knight_of_wands => '權杖騎士';

  @override
  String get card_name_queen_of_wands => '權杖皇后';

  @override
  String get card_name_king_of_wands => '權杖國王';

  @override
  String get card_name_ace_of_cups => '聖杯王牌';

  @override
  String get card_name_two_of_cups => '聖杯二';

  @override
  String get card_name_three_of_cups => '聖杯三';

  @override
  String get card_name_four_of_cups => '聖杯四';

  @override
  String get card_name_five_of_cups => '聖杯五';

  @override
  String get card_name_six_of_cups => '聖杯六';

  @override
  String get card_name_seven_of_cups => '聖杯七';

  @override
  String get card_name_eight_of_cups => '聖杯八';

  @override
  String get card_name_nine_of_cups => '聖杯九';

  @override
  String get card_name_ten_of_cups => '聖杯十';

  @override
  String get card_name_page_of_cups => '聖杯侍者';

  @override
  String get card_name_knight_of_cups => '聖杯騎士';

  @override
  String get card_name_queen_of_cups => '聖杯皇后';

  @override
  String get card_name_king_of_cups => '聖杯國王';

  @override
  String get card_name_ace_of_swords => '寶劍王牌';

  @override
  String get card_name_two_of_swords => '寶劍二';

  @override
  String get card_name_three_of_swords => '三劍牌';

  @override
  String get card_name_four_of_swords => '四劍牌';

  @override
  String get card_name_five_of_swords => '五劍牌';

  @override
  String get card_name_six_of_swords => '六劍牌';

  @override
  String get card_name_seven_of_swords => '七劍牌';

  @override
  String get card_name_eight_of_swords => '劍八';

  @override
  String get card_name_nine_of_swords => '劍九';

  @override
  String get card_name_ten_of_swords => '劍十';

  @override
  String get card_name_page_of_swords => '劍侍';

  @override
  String get card_name_knight_of_swords => '劍騎士';

  @override
  String get card_name_queen_of_swords => '寶劍皇后';

  @override
  String get card_name_king_of_swords => '寶劍國王';

  @override
  String get card_name_ace_of_pentacles => '錢幣王牌';

  @override
  String get card_name_two_of_pentacles => '錢幣二';

  @override
  String get card_name_three_of_pentacles => '錢幣三';

  @override
  String get card_name_four_of_pentacles => '五角星四';

  @override
  String get card_name_five_of_pentacles => '五角星五';

  @override
  String get card_name_six_of_pentacles => '五角星六';

  @override
  String get card_name_seven_of_pentacles => '五角星七';

  @override
  String get card_name_eight_of_pentacles => '五角星八';

  @override
  String get card_name_nine_of_pentacles => '九角星';

  @override
  String get card_name_ten_of_pentacles => '十角星';

  @override
  String get card_name_page_of_pentacles => '角星侍從';

  @override
  String get card_name_knight_of_pentacles => '角星騎士';

  @override
  String get card_name_queen_of_pentacles => '角星皇后';

  @override
  String get card_name_king_of_pentacles => '五角星國王';

  @override
  String get quick_reading_screen_suggested_questions_1 => '我應該這麼做嗎？';

  @override
  String get quick_reading_screen_suggested_questions_2 => '這是正確的道路嗎？';

  @override
  String get quick_reading_screen_suggested_questions_3 => '我需要知道什麼？';

  @override
  String get monthly_forecast_spread_screen_see_meaning_button => '了解含義';

  @override
  String get monthly_forecast_spread_screen_new_spread_button => '製作新的牌陣';

  @override
  String get monthly_forecast_spread_screen_enter_question_hint => '輸入您的查詢...';

  @override
  String get monthly_forecast_spread_screen_what_is_monthly_forecast =>
      '什麼是月度預測？';

  @override
  String get monthly_forecast_spread_screen_monthly_forecast_explanation =>
      '月度預測顯示未來一個月的主要事件和趨勢。幫助您準備變化並利用機會。';

  @override
  String get monthly_forecast_spread_screen_understand_button => '明白了';

  @override
  String get monthly_forecast_spread_screen_error_getting_value =>
      '獲取牌陣數值時出錯。請再試一次。';

  @override
  String get monthly_forecast_spread_screen_disclaimer =>
      '本應用程式僅將人工智慧用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String self_development_balance_spread_screen_prompt(
      Object cards, Object userName) {
    return '為 $userName 做一個關於自我成長和平衡的牌陣，使用這三張牌：$cards';
  }

  @override
  String get error_getting_answer_try_again => '錯誤：無法獲取回應。請再試一次。';

  @override
  String get card_detail_screen_title => '牌卡詳情';

  @override
  String get card_detail_screen_general_meaning => '整體意義';

  @override
  String get card_detail_screen_reversed_meaning => '顛倒意義';

  @override
  String get card_detail_screen_symbolism => '象徵意義';

  @override
  String get card_detail_screen_error_loading_text => '文字加載錯誤';

  @override
  String card_detail_screen_general_meaning_prompt(
      Object cardName, Object lang) {
    return '請用$lang語言描述塔羅牌「$cardName」的整體意義。包括歷史、象徵和主要含義。';
  }

  @override
  String card_detail_screen_reversed_meaning_prompt(
      Object cardName, Object lang) {
    return '用$lang語言描述塔羅牌「$cardName」的逆位含義。包括相反的意義和警示。';
  }

  @override
  String card_detail_screen_symbolism_prompt(Object cardName, Object lang) {
    return '用$lang語言描述塔羅牌「$cardName」的象徵意義。包括圖像細節、顏色及其含義。';
  }

  @override
  String card_detail_screen_description(Object cardName) {
    return '$cardName牌的描述';
  }

  @override
  String get card_detail_screen_see_other_card_meaning => '查看其他牌的含義';

  @override
  String get card_detail_screen_or => '或';

  @override
  String get card_detail_screen_loading_language => '載入語言...';

  @override
  String get card_detail_screen_see_card_meaning => '查看牌義';

  @override
  String get card_detail_screen_original_waite_text => '韋特原文';

  @override
  String get card_detail_screen_no_original_text => '無原文';

  @override
  String card_of_the_day_screen_translate_card_name_prompt(
      Object cardName, Object languageCode) {
    return '將塔羅牌「$cardName」的名稱翻譯成$languageCode。答案應僅包含翻譯後的名稱，無需額外文字或標點符號。';
  }

  @override
  String card_of_the_day_screen_generate_description_prompt(
      Object cardName, Object name) {
    return '你是專業的塔羅牌占卜師。請用此請求的語言為用戶 $name 撰寫一則鼓舞人心的「今日之牌」訊息。請遵守結構和篇幅。\n🌟 $name，你的今日之牌是 $cardName！\n🔑 關鍵詞：<請列出3–5個簡短的關鍵詞>\n🃏 含義（約45–50字）：描述此牌的主要能量，以及它今天將如何在 $name 身上展現。\n💡 建議（約35–40字）：提出具體的行動或心態，幫助 $name 利用這股能量。\n✨ 肯定語（1行）：以「我…」開頭的正面肯定句。\n要求：全文長度120–150字，溫暖的神秘色彩語調，3–4個主題相關的表情符號，不使用HTML/Markdown清單；段落以雙換行分隔（\\n\\n）。';
  }

  @override
  String get card_of_the_day_screen_title => '今日之牌';

  @override
  String get card_of_the_day_screen_error_loading_card => '牌卡載入錯誤';

  @override
  String career_finance_spread_screen_prompt(Object cards, Object userName) {
    return '為 $userName 進行職業與財務的三張牌占卜：$cards';
  }

  @override
  String get contact_us_title => '聯絡我們';

  @override
  String get contact_us_email_hint => '您的電子郵件';

  @override
  String get contact_us_email_empty => '請輸入電子郵件';

  @override
  String get contact_us_email_invalid => '電子郵件格式不正確';

  @override
  String get contact_us_message_hint => '您的訊息';

  @override
  String get contact_us_message_empty => '請輸入訊息';

  @override
  String get contact_us_send_button => '發送';

  @override
  String get five_cards_spread_screen_what_is_five_cards_dialog => '什麼是五張牌牌陣？';

  @override
  String get five_cards_spread_screen_five_cards_explanation_dialog =>
      '這個牌陣揭示了你問題的整個過程：\n牌 1 - 過去 顯示起始情況，\n牌 2 - 現在 — 當前能量，\n牌 3 - 隱藏 揭示隱藏的影響，\n牌 4 - 建議 指示最佳行動，\n牌 5 - 結果 預測可能的結果。';

  @override
  String get five_cards_spread_screen_understand_button => '明白了';

  @override
  String get language_selection_screen_title => '語言';

  @override
  String get love_spread_screen_what_is_love_spread => '什麼是愛情牌陣？';

  @override
  String get love_spread_screen_love_spread_explanation =>
      '愛情三連牌是三張牌，從左到右排列：\n牌 1 - 你 — 顯示求問者的感受、動機和立場。\n牌 2 - 伴侶 — 揭示對方的情感、計劃和準備狀態。\n牌 3 - 動態 / 潛力 — 描述兩種能量目前如何互動，以及關係在近期可能發展的方向。';

  @override
  String get love_spread_screen_understand_button => '明白了';

  @override
  String get main_screen_your_plan_trial => '您的方案：試用版（含廣告）';

  @override
  String get main_screen_no_ads => '• 無廣告';

  @override
  String get main_screen_no_limits => '• 無限制';

  @override
  String get main_screen_shop_soon => '商店（即將推出）';

  @override
  String get main_screen_notification_settings => '通知設置';

  @override
  String get main_screen_language_selection => '語言選擇';

  @override
  String get main_screen_rate_app => '評價應用程式';

  @override
  String get main_screen_contact_us => '聯絡我們';

  @override
  String get main_screen_classic_spreads_title => '經典牌陣';

  @override
  String get main_screen_classic_spreads_description =>
      '2 / 3 / 5 張牌的牌陣及完整展開的凱爾特十字牌陣';

  @override
  String get main_screen_card_meanings_title => '牌義';

  @override
  String get main_screen_card_meanings_description =>
      '所有大阿爾克那與小阿爾克那正位與逆位意義的完整指南';

  @override
  String get main_screen_card_combination_description =>
      '「塔羅牌計算器」選擇牌卡並獲得深入的關係分析';

  @override
  String get notification_settings_screen_title => '通知設定';

  @override
  String get notification_settings_screen_frequency_question =>
      '您希望多久收到一次每日牌卡通知？';

  @override
  String get notification_settings_screen_every_day => '每天';

  @override
  String get notification_settings_screen_every_three_days => '每三天一次';

  @override
  String get notification_settings_screen_every_week => '每週一次';

  @override
  String get notification_settings_screen_time_question => '一天中的什麼時候？';

  @override
  String get notification_settings_screen_morning => '早上';

  @override
  String get notification_settings_screen_day => '下午';

  @override
  String get notification_settings_screen_evening => '晚上';

  @override
  String get notification_settings_screen_save_button => '保存';

  @override
  String get onboarding_final_screen_yearly_price => '249/年';

  @override
  String get onboarding_final_screen_yearly_month_price => '24/月';

  @override
  String get onboarding_final_screen_monthly_price => '9/月';

  @override
  String get onboarding_final_screen_monthly_month_price => '9/月';

  @override
  String get onboarding_final_screen_yearly_plan => '每年';

  @override
  String get onboarding_final_screen_free_trial => '7天免費';

  @override
  String get onboarding_final_screen_purchase_title => '購買';

  @override
  String onboarding_final_screen_test_stub_message(Object plan) {
    return '測試佔位符：選擇的方案是「$plan」';
  }

  @override
  String get onboarding_final_screen_ok_button => '確定';

  @override
  String get purchase_love_screen_yearly_price => '249/年';

  @override
  String get purchase_love_screen_yearly_month_price => '24/月';

  @override
  String get purchase_love_screen_monthly_price => '月付';

  @override
  String get purchase_love_screen_monthly_month_price => '9/月';

  @override
  String get purchase_love_screen_title => '購買';

  @override
  String get purchase_love_screen_ok_button => '確定';

  @override
  String quick_reading_screen_error_no_image_file_found(Object cardName) {
    return '錯誤：找不到卡片的圖片檔案：$cardName';
  }

  @override
  String get please_fill_all_fields => '請填寫所有卡片欄位。';

  @override
  String get please_select_cards_only_from_suggested_list =>
      '請僅從建議清單中選擇卡片。錯誤的卡片：';

  @override
  String get please_select_different_cards_in_all_fields => '請在所有欄位中選擇不同的卡片。';

  @override
  String get card => '牌卡';

  @override
  String get get_combination => '查看組合';

  @override
  String get new_spread => '製作新牌陣';

  @override
  String get app_uses_ai_for_entertainment_purposes =>
      '本應用程式僅將人工智慧用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String get career_finance_spread_screen_what_is_career_finance_spread =>
      '什麼是「事業與財務」牌陣？';

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
    return '你是一位經驗豐富的塔羅師。用戶 $userName 問道：「$userQuestion」。請用「凱爾特十字」牌陣（韋特經典陣法）回答。牌面分配如下：情境 - $situationCard；挑戰 - $challengeCard；潛意識 - $subconsciousCard；近期過去 - $pastCard；意識 - $consciousCard；近期未來 - $hiddenCard；內在自我 - $selfCard；環境 - $environmentCard；希望或恐懼 - $hopesCard；結果 - $outcomeCard。請至少提及 $userName 六次，並務必將每張牌與問題連結。結構如下：\n1) 向 $userName 問候。\n2) 標題：牌陣：情境（$situationCard）／挑戰（$challengeCard）／潛意識（$subconsciousCard）／近期過去（$pastCard）／意識（$consciousCard）／近期未來（$hiddenCard）／內在自我（$selfCard）／環境（$environmentCard）／希望／恐懼（$hopesCard）／結果（$outcomeCard）。\n3) 情境 — $situationCard（45-55字）：三個關鍵詞、牌義象徵及 $userName 就問題 $userQuestion 的當前狀況。\n4) 挑戰 — $challengeCard（45-55字）：對 $userName 的主要阻礙或助力。\n5) 潛意識 — $subconsciousCard（45-55字）：影響 $userName 的隱藏動機或能量。\n6) 近期過去 — $pastCard（45-55字）：導致 $userName 現況的過往事件。\n7) 意識 — $consciousCard（45-55字）：$userName 的目標、期望或意識層面。\n8) 近期未來 — $hiddenCard（45-55字）：未來幾週的可能發展。\n9) 內在自我 — $selfCard（45-55字）：$userName 的狀態與資源。\n10) 環境 — $environmentCard（45-55字）：他人及環境對 $userName 的影響。\n11) 希望／恐懼 — $hopesCard（45-55字）：$userName 的期望或擔憂。\n12) 結果 — $outcomeCard（45-55字）：根據牌陣建議的可能結果。\n13) 結語：給 $userName 的友善支持與正面肯定（30-35字）。\n要求：全文約400-500字，語氣生動口語，含4-6個神秘主題表情符號；每段間隔兩行空行；不使用 *、# 或其他標記；僅用純文字。';
  }

  @override
  String get celtic_cross_screen_unable_to_load_card => '無法載入牌卡';

  @override
  String get celticCrossTitle => '凱爾特十字';

  @override
  String get chat_with_tarot_reader_screen_request_received => '您的請求已收到。請翻開牌卡';

  @override
  String chat_with_tarot_reader_screen_prompt(
      Object hiddenCard,
      Object pastCard,
      Object presentCard,
      Object userName,
      Object userQuestion) {
    return '你是一位經驗豐富的塔羅師。用戶 $userName 問道：「$userQuestion」。請用「過去－現在－未來」牌陣回答。牌面分配如下：過去 - $pastCard；現在 - $presentCard；未來 - $hiddenCard。請至少提及 $userName 四次，並務必將牌義與問題連結。結構如下：\n1) 向 $userName 問候。\n2) 標題：牌陣：過去（$pastCard）－現在（$presentCard）－未來（$hiddenCard）。\n3) 過去區塊 — $pastCard（40-50字）：三個關鍵詞、牌義象徵及過去事件如何影響 $userName 就問題 $userQuestion 的結果。\n4) 現在區塊 — $presentCard（40-50字）：關鍵詞、牌義象徵及當前因素如何影響問題 $userQuestion 的答案。\n5) 未來區塊 — $hiddenCard（40-50字）：關鍵詞、牌義象徵及 $userName 問題的可能發展情境。\n6) 結果：簡短建議、正面肯定（20-30字）及明確的機會總結。\n要求：全文約180-220字，語氣溫暖神秘，含3-5個主題表情符號；每段間隔兩行空行；禁止使用 *、# 或其他格式符號；僅用純文字。';
  }

  @override
  String get see_meaning_button => '了解含義';

  @override
  String three_cards_title(Object cards) {
    return '牌陣中有3張牌';
  }

  @override
  String get new_spread_button => '製作新的牌陣';

  @override
  String get disclaimer_text => '本應用程式僅將人工智慧用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String get enter_your_question => '請輸入您的問題...';

  @override
  String get classic_spreads_screen_title => '經典牌陣';

  @override
  String get classic_spreads_screen_three_cards_title => '3 張牌';

  @override
  String get classic_spreads_screen_three_cards_description => '過去、現在、未來';

  @override
  String get classic_spreads_screen_five_cards_title => '5 張牌';

  @override
  String get classic_spreads_screen_five_cards_description => '深入分析情況';

  @override
  String get classic_spreads_screen_celtic_cross_title => '凱爾特十字';

  @override
  String get classic_spreads_screen_celtic_cross_description => '完整的10張牌陣';

  @override
  String five_cards_screen_prompt(
      Object adviceCard,
      Object hiddenCard,
      Object outcomeCard,
      Object pastCard,
      Object presentCard,
      Object userName,
      Object userQuestion) {
    return '你是一位經驗豐富的塔羅牌占卜師。用戶$userName問道：\"$userQuestion\"。請使用\"5張牌\"陣型回答。牌按順序給出：過去 - $pastCard; 現在 - $presentCard; 隱藏 - $hiddenCard; 建議 - $adviceCard; 結果 - $outcomeCard。請至少五次提到$userName，並確保將每張牌與問題聯繫起來。請遵循以下結構：\n\n1）以$userName的名字問候。\n\n2）標題：陣型：過去（$pastCard）/ 現在（$presentCard）/ 隱藏（$hiddenCard）/ 建議（$adviceCard）/ 結果（$outcomeCard）。\n\n3）過去 — $pastCard（45-55字）：三個關鍵詞，牌的象徵意義，以及過去對$userName的$userQuestion的影響。\n\n4）現在 — $presentCard（45-55字）：關鍵詞，象徵意義，$userName問題的當前狀態。\n\n5）隱藏 — $hiddenCard（45-55字）：無意識地影響$userName情況的因素，重點關注象徵意義。\n\n6）建議 — $adviceCard（45-55字）：基於牌面圖像的$userName的實用行動。\n\n7）結果 — $outcomeCard（45-55字）：如果遵循建議的可能情景，向$userName致辭。\n\n8）結論：對$userName的友好支持和積極肯定（25-30字）。\n\n要求：總字數230-260字，生動的對話語調，3-5個神秘表情符號；用雙換行（\\n\\n）分隔每個塊；不要使用*, #或其他標記符號；只寫純文本。';
  }

  @override
  String get fiveCardsInSpread => '牌陣中的5張牌';

  @override
  String get makeNewSpread => '進行新的牌陣解析';

  @override
  String
      get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMake =>
          '該應用程式僅將人工智慧用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String get requestReceivedPleaseOpenCards => '您的請求已被接受。請翻開牌卡。';

  @override
  String love_spread_prompt(Object dynamicCard, Object partnerCard,
      Object userName, Object userQuestion, Object youCard) {
    return '你是一位經驗豐富的塔羅師。用戶 $userName 問道：「$userQuestion」。請用三張牌的愛情牌陣來回答。牌面如下：$userName 的感情 — $youCard；伴侶的感情 — $partnerCard；關係的動態或潛力 — $dynamicCard。請至少三次提及 $userName 的名字，並將每張牌與問題連結。結構如下：\n1) 向 $userName 打招呼。\n2) 標題：牌陣：$youCard | $partnerCard | $dynamicCard。\n3) $youCard — 40–50 字：描述這張牌對 $userName 感情與期望的意義。\n4) $partnerCard — 40–50 字：揭示伴侶對 $userName 問題的情感與意圖。\n5) $dynamicCard — 40–50 字：說明這兩種能量如何互動及關係可能的發展。\n6) 結語：給 $userName 溫暖的建議與正面肯定（20–25 字）。\n要求：總字數 150–180 字，友善浪漫的語氣，2–4 個主題相關表情符號；段落以雙換行分隔（\\n\\n）；避免使用 *、# 及任何標記。';
  }

  @override
  String get loveSpread => '愛情牌陣';

  @override
  String
      get applicationUsesAIExclusivelyForEntertainmentWeDoNotTakeResponsibilityForDecisionsYouHaveMadeIfNeededPleaseConsultSpecialist =>
          '該應用程式僅將人工智慧用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String main_screen_greeting_with_name(Object name) {
    return '您好，$name';
  }

  @override
  String get main_screen_monday => '星期一';

  @override
  String get main_screen_tuesday => '星期二';

  @override
  String get main_screen_wednesday => '星期三';

  @override
  String get main_screen_thursday => '星期四';

  @override
  String get main_screen_friday => '星期五';

  @override
  String get main_screen_saturday => '星期六';

  @override
  String get main_screen_sunday => '星期日';

  @override
  String get main_screen_your_card_of_the_day => '您的今日卡牌';

  @override
  String main_screen_card_of_the_day_with_name(Object cardName) {
    return '今日卡牌：$cardName';
  }

  @override
  String get main_screen_card_of_the_day => '今日卡牌：';

  @override
  String get main_screen_viewed => '已開啟';

  @override
  String get main_screen_not_viewed => '查看';

  @override
  String get main_screen_spreads => '牌陣';

  @override
  String get main_screen_training => '教學';

  @override
  String get main_screen_entertainment => '娛樂';

  @override
  String get main_screen_glad_to_see_you_here => '很高興見到您！';

  @override
  String get main_screen_quick_reading_title => '快速占卜';

  @override
  String get main_screen_quick_reading_description => '只需輕觸幾下，即可用一張牌獲得清晰的答案';

  @override
  String get monthly_forecast_spread_screen_request_accepted => '您的請求已收到。請翻開牌卡';

  @override
  String monthly_forecast_spread_screen_prompt(Object cards, Object userName) {
    return '為 $userName 根據這些牌卡做一個月度預測：$cards';
  }

  @override
  String get aboutSpread => '關於牌陣';

  @override
  String get monthlyForecast => '月度預測';

  @override
  String
      get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNecessaryPleaseConsultSpecialist =>
          '本應用程式僅將人工智慧用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String purchase_love_screen_test_message(Object planName) {
    return '測試佔位符：選擇的方案為「$planName」';
  }

  @override
  String get quick_reading_screen_what_is_quick_reading => '什麼是快速占卜？';

  @override
  String get quick_reading_screen_quick_reading_explanation =>
      '快速占卜是一種快速占卜（答案：是或否），幫助您立即獲得對具體問題或當日整體氛圍的明確回答。非常適合需要「此時此刻」快速靈感或建議的時候。';

  @override
  String get self_development_balance_spread_screen_request_accepted =>
      '您的請求已被接受。請翻開牌卡';

  @override
  String get self_development_balance_spread_screen_error_getting_value =>
      '獲取占卜結果時出錯。請再試一次。';

  @override
  String
      get appUsesAIForEntertainmentOnlyWeDoNotTakeResponsibilityForDecisionsYouMakeIfNeededConsultSpecialist =>
          '本應用程式僅將人工智慧用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String get thematic_spreads_screen_title => '主題牌陣';

  @override
  String get thematic_spreads_screen_love_spread_title => '愛情牌陣';

  @override
  String get thematic_spreads_screen_love_spread_description => '關係與情感分析';

  @override
  String get thematic_spreads_screen_career_finance_title => '職業與財務';

  @override
  String get thematic_spreads_screen_career_finance_description => '專業與財務分析';

  @override
  String get thematic_spreads_screen_pros_cons_title => '優點與缺點';

  @override
  String get thematic_spreads_screen_pros_cons_description => '優缺點分析';

  @override
  String get thematic_spreads_screen_monthly_forecast_title => '月度預測';

  @override
  String get thematic_spreads_screen_monthly_forecast_description => '按月預測';

  @override
  String get thematic_spreads_screen_self_development_title => '自我成長與平衡';

  @override
  String get thematic_spreads_screen_self_development_description => '靈性成長與和諧';

  @override
  String get requestReceived => '您的請求已被接受。請翻開牌卡';

  @override
  String pros_cons_spread_prompt(Object cards, Object userName) {
    return '為$userName做一個關於這些牌卡的正反兩面解析：$cards';
  }

  @override
  String get pros_cons_spread_screen_what_is_pros_cons_spread => '什麼是「正反兩面」解析？';

  @override
  String get pros_cons_spread_screen_pros_cons_spread_explanation =>
      '「正反兩面」解析幫助分析情況的優缺點，以便做出明智的決定。';

  @override
  String get pros_cons_spread_screen_understand_button => '明白';

  @override
  String get prosConsSpreadTitle => '「優缺點」牌陣';

  @override
  String get spreadDisclaimer => '本應用程式僅將人工智慧用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String get fun_spread_screen_generation_error => '生成牌陣時出錯。請再試一次。';

  @override
  String get fun_spread_screen_share_error => '保存圖片時出錯。';

  @override
  String get fun_spread_screen_about_fun_spread => '什麼是有趣的牌陣？';

  @override
  String get fun_spread_screen_fun_spread_explanation =>
      '有趣的牌陣是一種特殊的塔羅牌占卜方式，結合了傳統牌陣的深度與輕鬆積極的態度。它將幫助你從新的角度看待情況，並在日常生活中找到快樂。';

  @override
  String get fun_spread_screen_understand_button => '明白了';

  @override
  String get fun_spread_screen_title => '有趣的牌陣';

  @override
  String get fun_spread_screen_generate_button => '創建牌陣';

  @override
  String get fun_spread_screen_share_button => '分享';

  @override
  String get fun_spread_screen_new_button => '新的牌陣';

  @override
  String get fun_spread_screen_share_text => '看看我在 Tarot AI 應用中得到的有趣塔羅牌陣！';

  @override
  String get ad_promo_tariff => '方案';

  @override
  String get ad_promo_love => '愛情';

  @override
  String get ad_promo_discount => '促銷 -50%';

  @override
  String get ad_promo_no_ads => '• 無廣告';

  @override
  String get ad_promo_no_limits => '• 無限制';

  @override
  String get no_internet_error => '我們的應用程式僅在連接網路時運作。請開啟 Wi-Fi 或行動網路。';

  @override
  String fun_spread_screen_mate_prompt_3cards(Object userName) {
    return '為 $userName 做一個超搞笑、狂野又帶髒話的三張塔羅牌占卜。每張牌都取個爆笑的名字，並寫一段獨立的描述：第一張牌：<名稱> — <簡短搞笑描述>，第二張牌：<名稱> — <簡短搞笑描述>，第三張牌：<名稱> — <簡短搞笑描述>。用髒話增加幽默感，但不要冒犯人。全文不超過七句話。';
  }

  @override
  String fun_spread_screen_no_mate_prompt_3cards(Object userName) {
    return '為 $userName 創建一個有趣的三張牌塔羅牌陣。每張牌都要有一個搞笑的名稱，並寫一段獨立的描述：第一張牌：<名稱> — <簡短搞笑描述>，第二張牌：<名稱> — <簡短搞笑描述>，第三張牌：<名稱> — <簡短搞笑描述>。牌陣應該既有趣又富有深意。僅限三張牌。全文不超過七句。';
  }

  @override
  String get fun_spread_screen_title_top => '塔羅牌陣';

  @override
  String fun_spread_screen_title_for_name(Object name) {
    return '給 $name';
  }

  @override
  String get contact_us_screen_message_sent => '您的訊息已收到，謝謝！';

  @override
  String get contact_us_screen_message_error => '發送訊息錯誤';

  @override
  String get love_spread_screen_initial_message => '您好，請在下方輸入您的問題：';

  @override
  String get main_screen_tariff => '方案';

  @override
  String get main_screen_promo_50 => '促銷 -50%';

  @override
  String get main_screen_rate_hint => '如果評分視窗未出現，您可以在 Google Play 留下評論。';

  @override
  String get main_screen_rate_error => '無法打開 Google Play。請稍後再試。';

  @override
  String get love_spread_screen_suggested_questions_1 => '我對這個人的感覺是什麼？';

  @override
  String get love_spread_screen_suggested_questions_2 => '是什麼阻礙了我們的關係？';

  @override
  String get love_spread_screen_suggested_questions_3 => '我們的關係將會有什麼未來？';

  @override
  String get career_finance_spread_screen_suggested_questions_1 =>
      '我的職業生涯有哪些機會？';

  @override
  String get career_finance_spread_screen_suggested_questions_2 =>
      '如何改善我的財務狀況？';

  @override
  String get career_finance_spread_screen_suggested_questions_3 => '值得換工作嗎？';

  @override
  String get pros_cons_spread_screen_suggested_questions_1 => '我應該做出這個決定嗎？';

  @override
  String get pros_cons_spread_screen_suggested_questions_2 => '這個選擇有哪些優點和缺點？';

  @override
  String get pros_cons_spread_screen_suggested_questions_3 => '在這種情況下什麼更重要？';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_1 =>
      '這個月我會遇到什麼？';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_2 =>
      '近期會發生哪些事件？';

  @override
  String get monthly_forecast_spread_screen_suggested_questions_3 =>
      '本月應該專注於什麼？';

  @override
  String get self_development_balance_spread_screen_suggested_questions_1 =>
      '我該如何靈性成長？';

  @override
  String get self_development_balance_spread_screen_suggested_questions_2 =>
      '什麼阻礙了我的內在平衡？';

  @override
  String get self_development_balance_spread_screen_suggested_questions_3 =>
      '如何在生活中找到和諧？';

  @override
  String career_three_card_prompt(Object adviceCard, Object challengeCard,
      Object situationCard, Object userName, Object userQuestion) {
    return '你是經驗豐富的塔羅教練。用戶 $userName 問：「$userQuestion」。請做一個三張牌的職業與財務牌陣。牌序為：1) 情況 — $situationCard；2) 障礙或關鍵機會 — $challengeCard；3) 建議與潛力 — $adviceCard。根據 $userName 的名字判斷性別，並使用正確的詞尾和代詞。以友善且專業的語氣與 $userName 交流：指出他目前的位置，阻礙成長的因素（或重要的機會），以及實際步驟如何帶來理想收入。至少提及 $userName 三次。結構如下：\n1) 問候 — 一句話。\n2) 標題：牌陣：$situationCard | $challengeCard | $adviceCard。\n3) $situationCard — 45–55 字：描述 $userName 當前的狀況（工作、事業或整體財務背景）及該牌的象徵意義。\n4) $challengeCard — 45–55 字：揭示主要障礙或隱藏機會；說明其如何反映在牌面及 $userName 的問題中。\n5) $adviceCard — 45–55 字：提出具體行動（如重新檢視預算、申請加薪、學習新技能）並描述可能結果。\n6) 結尾 — 20–25 字：友善總結，正面肯定及兩個商務表情符號。\n要求：總字數160–185字，語氣清晰專業無行話，含2–3個表情符號；段落以雙換行分隔；不使用 *、# 或其他標記。';
  }

  @override
  String pros_cons_three_card_prompt(Object adviceCard, Object conCard,
      Object proCard, Object userName, Object userQuestion) {
    return '你是經驗豐富的塔羅師。用戶 $userName 問：「$userQuestion」。請做一個三張牌的「利與弊」牌陣。牌序為：優點 — $proCard；缺點 — $conCard；建議/結論 — $adviceCard。根據 $userName 的名字判斷性別，並使用正確的詞尾和代詞。至少提及 $userName 三次，並將每張牌與問題相關聯。結構如下：\n1) 以 $userName 的名字打招呼。\n2) 標題：牌陣：$proCard | $conCard | $adviceCard。\n3) 優點：$proCard — 45–55 字。說明這張牌為 $userName 的情況帶來的主要利益或正面資源。\n4) 缺點：$conCard — 45–55 字。描述對 $userName 來說決策的風險、隱藏成本或弱點。\n5) 建議：$adviceCard — 45–55 字。權衡利弊，提出一個具體行動（動詞+對象），並說明如何改變 $userName 的結果。\n6) 結論 — 用一個詞「是」或「否」，接著一句理由和鼓勵肯定（20–25 字），含1–2個表情符號。\n要求：總字數150–180字，語氣友善口語；各段以雙換行分隔；不使用 *、# 或其他標記。';
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
    return '你是專業塔羅師。用戶 $userName 問：「$userQuestion」。請做一個「月份之輪」牌陣，針對 $month 月。牌序為：1 — $card1，2 — $card2，3 — $card3，4 — $card4，5 — $card5，6 — $card6，7 — $card7，8 — $card8，9 — $card9，10 — $card10，11 — $card11，12 — $card12。根據 $userName 的名字判斷性別，使用正確詞尾和代詞。至少提及 $userName 五次，但**不要在每個日期後面插入名字**，只在建議中自然提及。使用日期網格：1–3、4–6、7–9、10–12、13–15、16–18、19–21、22–24、25–26、27–28、29–30、31（若該月30天，則第12張牌對應30日）。格式：\n1) 以 $userName 的名字問候（1–2 句）。\n2) 簡短介紹牌陣目的（1 句）。\n3–14) 每張牌用「1–3 $month — $card1」格式（不含名字），接著2–3句描述該時期的主要能量與實用建議，自然提及 $userName。\n15) 結尾：整月總建議（約40字）及鼓舞肯定，含2–3個表情符號。\n要求：總字數360–400字；語氣友善激勵；段落以雙換行分隔；不使用 *、#、列表或技術標記。';
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
    return '你是經驗豐富的塔羅教練。用戶 $userName 問：「$userQuestion」。請做一個七張牌的「自我成長與平衡」牌陣。牌序為：核心 — $coreCard；心智 — $mindCard；情感 — $emotionCard；身體 — $bodyCard；資源 — $strengthCard；阻礙 — $challengeCard；建議 — $adviceCard。根據 $userName 的名字判斷性別，使用正確詞尾和代詞。語氣生動支持，至少提及 $userName 四次，並將每張牌與問題相關聯。結構與格式：\n1) 以 $userName 的名字打招呼。\n2) 標題：牌陣：$coreCard | $mindCard | $emotionCard | $bodyCard | $strengthCard | $challengeCard | $adviceCard。\n3) $coreCard — 描述 $userName 自我成長的主要焦點。\n4) $mindCard — 談如何調整心態與學習內容。\n5) $emotionCard — 揭示情感資源與動力。\n6) $bodyCard — 提示如何照顧身體與能量。\n7) $strengthCard — 展示內在天賦或外在支持。\n8) $challengeCard — 指出主要失衡及其原因。\n9) $adviceCard — 提出整合各方面的具體行動。\n10) 結尾：鼓舞肯定與溫暖祝福，含2–3個表情符號。\n要求：每點2–3句；段落以雙換行分隔；不使用 *、# 或其他標記。';
  }

  @override
  String get main_screen_suggest_spread => '想添加什麼牌陣？請聯絡我們';

  @override
  String get main_screen_disclaimer =>
      '該應用程式僅將人工智慧用於娛樂目的。我們不對您所做的決定負責。如有需要，請諮詢專業人士。';

  @override
  String get month_january => '一月';

  @override
  String get month_february => '二月';

  @override
  String get month_march => '三月';

  @override
  String get month_april => '四月';

  @override
  String get month_may => '五月';

  @override
  String get month_june => '六月';

  @override
  String get month_july => '七月';

  @override
  String get month_august => '八月';

  @override
  String get month_september => '九月';

  @override
  String get month_october => '十月';

  @override
  String get month_november => '十一月';

  @override
  String get month_december => '十二月';

  @override
  String get fun_share_button => '分享';

  @override
  String get fun_new_spread_button => '新牌陣';
}
