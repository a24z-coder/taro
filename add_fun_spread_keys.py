import json
import os

# Коды языков и переводы
translations = {
    # Африкаанс
    'af': {
        'fun_share_button': 'Deel',
        'fun_new_spread_button': 'Nuwe uitleg',
    },
    # Албанский
    'sq': {
        'fun_share_button': 'Ndaj',
        'fun_new_spread_button': 'Shpërndarje e re',
    },
    # Амхарский
    'am': {
        'fun_share_button': 'አጋራ',
        'fun_new_spread_button': 'አዲስ ቅድመ አሰራር',
    },
    # Арабский
    'ar': {
        'fun_share_button': 'مشاركة',
        'fun_new_spread_button': 'توزيع جديد',
    },
    # Армянский
    'hy': {
        'fun_share_button': 'Կիսվել',
        'fun_new_spread_button': 'Նոր բացում',
    },
    'hy-AM': {
        'fun_share_button': 'Կիսվել',
        'fun_new_spread_button': 'Նոր բացում',
    },
    # Азербайджанский
    'az': {
        'fun_share_button': 'Paylaş',
        'fun_new_spread_button': 'Yeni açılım',
    },
    'az-AZ': {
        'fun_share_button': 'Paylaş',
        'fun_new_spread_button': 'Yeni açılım',
    },
    # Бенгальский
    'bn': {
        'fun_share_button': 'শেয়ার করুন',
        'fun_new_spread_button': 'নতুন স্প্রেড',
    },
    'bn-BD': {
        'fun_share_button': 'শেয়ার করুন',
        'fun_new_spread_button': 'নতুন স্প্রেড',
    },
    # Баскский
    'eu': {
        'fun_share_button': 'Partekatu',
        'fun_new_spread_button': 'Banaketa berria',
    },
    'eu-ES': {
        'fun_share_button': 'Partekatu',
        'fun_new_spread_button': 'Banaketa berria',
    },
    # Белорусский
    'be': {
        'fun_share_button': 'Падзяліцца',
        'fun_new_spread_button': 'Новы расклад',
    },
    # Болгарский
    'bg': {
        'fun_share_button': 'Сподели',
        'fun_new_spread_button': 'Ново разкриване',
    },
    # Бирманский
    'my': {
        'fun_share_button': 'မျှဝေပါ',
        'fun_new_spread_button': 'အသစ်ဖြန့်ချမှု',
    },
    'my-MM': {
        'fun_share_button': 'မျှဝေပါ',
        'fun_new_spread_button': 'အသစ်ဖြန့်ချမှု',
    },
    # Каталонский
    'ca': {
        'fun_share_button': 'Compartir',
        'fun_new_spread_button': 'Nova tirada',
    },
    # Китайский (Гонконг)
    'zh-HK': {
        'fun_share_button': '分享',
        'fun_new_spread_button': '新牌陣',
    },
    # Китайский (упрощённый)
    'zh-CN': {
        'fun_share_button': '分享',
        'fun_new_spread_button': '新牌阵',
    },
    # Китайский (традиционный)
    'zh-TW': {
        'fun_share_button': '分享',
        'fun_new_spread_button': '新牌陣',
    },
    # Хорватский
    'hr': {
        'fun_share_button': 'Podijeli',
        'fun_new_spread_button': 'Novo raščlanjivanje',
    },
    # Чешский
    'cs': {
        'fun_share_button': 'Sdílet',
        'fun_new_spread_button': 'Nové rozložení',
    },
    'cs-CZ': {
        'fun_share_button': 'Sdílet',
        'fun_new_spread_button': 'Nové rozložení',
    },
    # Датский
    'da': {
        'fun_share_button': 'Del',
        'fun_new_spread_button': 'Nyt spil',
    },
    'da-DK': {
        'fun_share_button': 'Del',
        'fun_new_spread_button': 'Nyt spil',
    },
    # Голландский
    'nl': {
        'fun_share_button': 'Delen',
        'fun_new_spread_button': 'Nieuwe uitleg',
    },
    'nl-NL': {
        'fun_share_button': 'Delen',
        'fun_new_spread_button': 'Nieuwe uitleg',
    },
    # Английский (по умолчанию)
    'en': {
        'fun_share_button': 'Share',
        'fun_new_spread_button': 'New spread',
    },
    # Русский (пример)
    'ru': {
        'fun_share_button': 'Поделиться',
        'fun_new_spread_button': 'Новый расклад',
    },
    # --- Новые языки ---
    'en-AU': {
        'fun_share_button': 'Share',
        'fun_new_spread_button': 'New spread',
    },
    'en-CA': {
        'fun_share_button': 'Share',
        'fun_new_spread_button': 'New spread',
    },
    'en-US': {
        'fun_share_button': 'Share',
        'fun_new_spread_button': 'New spread',
    },
    'en-GB': {
        'fun_share_button': 'Share',
        'fun_new_spread_button': 'New spread',
    },
    'en-IN': {
        'fun_share_button': 'Share',
        'fun_new_spread_button': 'New spread',
    },
    'en-SG': {
        'fun_share_button': 'Share',
        'fun_new_spread_button': 'New spread',
    },
    'en-ZA': {
        'fun_share_button': 'Share',
        'fun_new_spread_button': 'New spread',
    },
    'et': {
        'fun_share_button': 'Jaga',
        'fun_new_spread_button': 'Uus laiendus',
    },
    'fil': {
        'fun_share_button': 'Ibahagi',
        'fun_new_spread_button': 'Bagong pagkalat',
    },
    'fi-FI': {
        'fun_share_button': 'Jaa',
        'fun_new_spread_button': 'Uusi levitys',
    },
    'fr-CA': {
        'fun_share_button': 'Partager',
        'fun_new_spread_button': 'Nouveau tirage',
    },
    'fr-FR': {
        'fun_share_button': 'Partager',
        'fun_new_spread_button': 'Nouveau tirage',
    },
    'gl-ES': {
        'fun_share_button': 'Compartir',
        'fun_new_spread_button': 'Nova extensión',
    },
    'ka-GE': {
        'fun_share_button': 'გაზიარება',
        'fun_new_spread_button': 'ახალი გაშლა',
    },
    'de-DE': {
        'fun_share_button': 'Teilen',
        'fun_new_spread_button': 'Neues Legen',
    },
    'el-GR': {
        'fun_share_button': 'Μοιραστείτε',
        'fun_new_spread_button': 'Νέα διάταξη',
    },
    'gu': {
        'fun_share_button': 'શેર કરો',
        'fun_new_spread_button': 'નવું સ્પ્રેડ',
    },
    'iw-IL': {
        'fun_share_button': 'שתף',
        'fun_new_spread_button': 'פיזור חדש',
    },
    'hi-IN': {
        'fun_share_button': 'साझा करें',
        'fun_new_spread_button': 'नया फैलाव',
    },
    'hu-HU': {
        'fun_share_button': 'Megosztás',
        'fun_new_spread_button': 'Új leosztás',
    },
    # Исландский
    'is-IS': {
        'fun_share_button': 'Deila',
        'fun_new_spread_button': 'Ný útbreiðsla',
    },
    # Индонезийский
    'id': {
        'fun_share_button': 'Bagikan',
        'fun_new_spread_button': 'Sebaran baru',
    },
    # Итальянский
    'it-IT': {
        'fun_share_button': 'Condividi',
        'fun_new_spread_button': 'Nuova lettura',
    },
    # Японский
    'ja-JP': {
        'fun_share_button': '共有',
        'fun_new_spread_button': '新しいスプレッド',
    },
    # Каннада
    'kn-IN': {
        'fun_share_button': 'ಹಂಚಿಕೊಳ್ಳಿ',
        'fun_new_spread_button': 'ಹೊಸ ಸ್ಪ್ರೆಡ್',
    },
    # Казахский
    'kk': {
        'fun_share_button': 'Бөлісу',
        'fun_new_spread_button': 'Жаңа тарату',
    },
    # Кхмерский
    'km-KH': {
        'fun_share_button': 'ចែករំលែក',
        'fun_new_spread_button': 'ការចែកចាយថ្មី',
    },
    # Корейский
    'ko-KR': {
        'fun_share_button': '공유',
        'fun_new_spread_button': '새로운 스프레드',
    },
    # Киргизский
    'ky-KG': {
        'fun_share_button': 'Бөлүшүү',
        'fun_new_spread_button': 'Жаңы жайгаштыруу',
    },
    # Лаосский
    'lo-LA': {
        'fun_share_button': 'ແບ່ງປັນ',
        'fun_new_spread_button': 'ການແຜ່ຂະຫຍາຍໃໝ່',
    },
    # Латышский
    'lv': {
        'fun_share_button': 'Dalīties',
        'fun_new_spread_button': 'Jauns izklājums',
    },
    # Литовский
    'lt': {
        'fun_share_button': 'Dalintis',
        'fun_new_spread_button': 'Naujas išdėstymas',
    },
    # Македонский
    'mk-MK': {
        'fun_share_button': 'Сподели',
        'fun_new_spread_button': 'Ново распоредување',
    },
    # Малайский
    'ms': {
        'fun_share_button': 'Kongsi',
        'fun_new_spread_button': 'Sebaran baharu',
    },
    'ms-MY': {
        'fun_share_button': 'Kongsi',
        'fun_new_spread_button': 'Sebaran baharu',
    },
    # Малаялам
    'ml-IN': {
        'fun_share_button': 'പങ്കുവെയ്ക്കുക',
        'fun_new_spread_button': 'പുതിയ സ്പ്രെഡ്',
    },
    # Русский
    'ru': {
        'fun_share_button': 'Поделиться',
        'fun_new_spread_button': 'Новый расклад',
    },
}

# Папка с .arb файлами
ARB_DIR = 'lib/l10n'

# Сопоставление языковых кодов с файлами
lang_to_file = {
    'af': 'app_af.arb',
    'sq': 'app_sq.arb',
    'am': 'app_am.arb',
    'ar': 'app_ar.arb',
    'hy': 'app_hy.arb',
    'hy-AM': 'app_hy_AM.arb',
    'az': 'app_az.arb',
    'az-AZ': 'app_az_AZ.arb',
    'bn': 'app_bn.arb',
    'bn-BD': 'app_bn_BD.arb',
    'eu': 'app_eu.arb',
    'eu-ES': 'app_eu_ES.arb',
    'be': 'app_be.arb',
    'bg': 'app_bg.arb',
    'my': 'app_my.arb',
    'my-MM': 'app_my_MM.arb',
    'ca': 'app_ca.arb',
    'zh-HK': 'app_zh_HK.arb',
    'zh-CN': 'app_zh_CN.arb',
    'zh-TW': 'app_zh_TW.arb',
    'hr': 'app_hr.arb',
    'cs': 'app_cs.arb',
    'cs-CZ': 'app_cs_CZ.arb',
    'da': 'app_da.arb',
    'da-DK': 'app_da_DK.arb',
    'nl': 'app_nl.arb',
    'nl-NL': 'app_nl_NL.arb',
    'en': 'app_en.arb',
    'ru': 'app_ru.arb',
    # Новые языки
    'en-AU': 'app_en_AU.arb',
    'en-CA': 'app_en_CA.arb',
    'en-US': 'app_en_US.arb',
    'en-GB': 'app_en_GB.arb',
    'en-IN': 'app_en_IN.arb',
    'en-SG': 'app_en_SG.arb',
    'en-ZA': 'app_en_ZA.arb',
    'et': 'app_et.arb',
    'fil': 'app_fil.arb',
    'fi-FI': 'app_fi_FI.arb',
    'fr-CA': 'app_fr_CA.arb',
    'fr-FR': 'app_fr_FR.arb',
    'gl-ES': 'app_gl_ES.arb',
    'ka-GE': 'app_ka_GE.arb',
    'de-DE': 'app_de_DE.arb',
    'el-GR': 'app_el_GR.arb',
    'gu': 'app_gu.arb',
    'iw-IL': 'app_iw_IL.arb',
    'hi-IN': 'app_hi_IN.arb',
    'hu-HU': 'app_hu_HU.arb',
    # Исландский
    'is-IS': 'app_is_IS.arb',
    # Индонезийский
    'id': 'app_id.arb',
    # Итальянский
    'it-IT': 'app_it_IT.arb',
    # Японский
    'ja-JP': 'app_ja_JP.arb',
    # Каннада
    'kn-IN': 'app_kn_IN.arb',
    # Казахский
    'kk': 'app_kk.arb',
    # Кхмерский
    'km-KH': 'app_km_KH.arb',
    # Корейский
    'ko-KR': 'app_ko_KR.arb',
    # Киргизский
    'ky-KG': 'app_ky_KG.arb',
    # Лаосский
    'lo-LA': 'app_lo_LA.arb',
    # Латышский
    'lv': 'app_lv.arb',
    # Литовский
    'lt': 'app_lt.arb',
    # Македонский
    'mk-MK': 'app_mk_MK.arb',
    # Малайский
    'ms': 'app_ms.arb',
    'ms-MY': 'app_ms_MY.arb',
    # Малаялам
    'ml-IN': 'app_ml_IN.arb',
    'ru': 'app_ru.arb',
}

for lang, tr in translations.items():
    arb_file = lang_to_file.get(lang)
    if not arb_file:
        continue
    path = os.path.join(ARB_DIR, arb_file)
    if not os.path.exists(path):
        print(f"Файл {arb_file} не найден, пропускаю...")
        continue
    with open(path, 'r', encoding='utf-8') as f:
        data = json.load(f)
    data['fun_share_button'] = tr['fun_share_button']
    data['fun_new_spread_button'] = tr['fun_new_spread_button']
    with open(path, 'w', encoding='utf-8') as f:
        json.dump(data, f, ensure_ascii=False, indent=2)
    print(f"Обновлено: {arb_file}") 