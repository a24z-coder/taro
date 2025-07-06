import json
import os

# Переводы для кнопок по языкам
translations = {
    # Немецкий
    'de': {'fun_share_button': 'Teilen', 'fun_new_spread_button': 'Neues Legen'},
    # Испанский
    'es': {'fun_share_button': 'Compartir', 'fun_new_spread_button': 'Nueva tirada'},
    'es_ES': {'fun_share_button': 'Compartir', 'fun_new_spread_button': 'Nueva tirada'},
    # Персидский
    'fa': {'fun_share_button': 'اشتراک‌گذاری', 'fun_new_spread_button': 'گسترش جدید'},
    # Финский
    'fi': {'fun_share_button': 'Jaa', 'fun_new_spread_button': 'Uusi levitys'},
    # Французский
    'fr': {'fun_share_button': 'Partager', 'fun_new_spread_button': 'Nouveau tirage'},
    # Галисийский
    'gl': {'fun_share_button': 'Compartir', 'fun_new_spread_button': 'Nova extensión'},
    # Хинди
    'hi': {'fun_share_button': 'साझा करें', 'fun_new_spread_button': 'नया फैलाव'},
    # Венгерский
    'hu': {'fun_share_button': 'Megosztás', 'fun_new_spread_button': 'Új leosztás'},
    # Исландский
    'is': {'fun_share_button': 'Deila', 'fun_new_spread_button': 'Ný útbreiðsla'},
    # Итальянский
    'it': {'fun_share_button': 'Condividi', 'fun_new_spread_button': 'Nuova lettura'},
    # Иврит
    'iw': {'fun_share_button': 'שתף', 'fun_new_spread_button': 'פיזור חדש'},
    # Японский
    'ja': {'fun_share_button': '共有', 'fun_new_spread_button': '新しいスプレッド'},
    # Грузинский
    'ka': {'fun_share_button': 'გაზიარება', 'fun_new_spread_button': 'ახალი გაშლა'},
    # Кхмерский
    'km': {'fun_share_button': 'ចែករំលែក', 'fun_new_spread_button': 'ការចែកចាយថ្មី'},
    # Каннада
    'kn': {'fun_share_button': 'ಹಂಚಿಕೊಳ್ಳಿ', 'fun_new_spread_button': 'ಹೊಸ ಸ್ಪ್ರೆಡ್'},
    # Корейский
    'ko': {'fun_share_button': '공유', 'fun_new_spread_button': '새로운 스프레드'},
    # Киргизский
    'ky': {'fun_share_button': 'Бөлүшүү', 'fun_new_spread_button': 'Жаңы жайгаштыруу'},
    # Лаосский
    'lo': {'fun_share_button': 'ແບ່ງປັນ', 'fun_new_spread_button': 'ການແຜ່ຂະຫຍາຍໃໝ່'},
    # Македонский
    'mk': {'fun_share_button': 'Сподели', 'fun_new_spread_button': 'Ново распоредување'},
    # Малаялам
    'ml': {'fun_share_button': 'പങ്കുവെയ്ക്കുക', 'fun_new_spread_button': 'പുതിയ സ്പ്രെഡ്'},
    # Монгольский
    'mn': {'fun_share_button': 'Хуваалцах', 'fun_new_spread_button': 'Шинэ тархалт'},
    'mn_MN': {'fun_share_button': 'Хуваалцах', 'fun_new_spread_button': 'Шинэ тархалт'},
    # Маратхи
    'mr': {'fun_share_button': 'शेअर करा', 'fun_new_spread_button': 'नवीन स्प्रेड'},
    'mr_IN': {'fun_share_button': 'शेअर करा', 'fun_new_spread_button': 'नवीन स्प्रेड'},
    # Непальский
    'ne': {'fun_share_button': 'साझेदारी गर्नुहोस्', 'fun_new_spread_button': 'नयाँ फैलाव'},
    'ne_NP': {'fun_share_button': 'साझेदारी गर्नुहोस्', 'fun_new_spread_button': 'नयाँ फैलाव'},
    # Норвежский
    'no': {'fun_share_button': 'Del', 'fun_new_spread_button': 'Ny spredning'},
    'no_NO': {'fun_share_button': 'Del', 'fun_new_spread_button': 'Ny spredning'},
    # Панджаби
    'pa': {'fun_share_button': 'ਸ਼ੇਅਰ ਕਰੋ', 'fun_new_spread_button': 'ਨਵਾਂ ਸਪ੍ਰੈਡ'},
    # Польский
    'pl': {'fun_share_button': 'Udostępnij', 'fun_new_spread_button': 'Nowe rozłożenie'},
    'pl_PL': {'fun_share_button': 'Udostępnij', 'fun_new_spread_button': 'Nowe rozłożenie'},
    # Португальский
    'pt': {'fun_share_button': 'Compartilhar', 'fun_new_spread_button': 'Nova tiragem'},
    'pt_BR': {'fun_share_button': 'Compartilhar', 'fun_new_spread_button': 'Nova tiragem'},
    'pt_PT': {'fun_share_button': 'Partilhar', 'fun_new_spread_button': 'Nova tiragem'},
    # Романшский
    'rm': {'fun_share_button': 'Cundivider', 'fun_new_spread_button': 'Nova spartiziun'},
    # Румынский
    'ro': {'fun_share_button': 'Partajează', 'fun_new_spread_button': 'Întindere nouă'},
    # Русский RU
    'ru_RU': {'fun_share_button': 'Поделиться', 'fun_new_spread_button': 'Новый расклад'},
    # Сингальский
    'si': {'fun_share_button': 'බෙදාගන්න', 'fun_new_spread_button': 'නව පැතිරීම'},
    'si_LK': {'fun_share_button': 'බෙදාගන්න', 'fun_new_spread_button': 'නව පැතිරීම'},
    # Словацкий
    'sk': {'fun_share_button': 'Zdieľať', 'fun_new_spread_button': 'Nové rozloženie'},
    # Словенский
    'sl': {'fun_share_button': 'Deli', 'fun_new_spread_button': 'Nova razporeditev'},
    # Сербский
    'sr': {'fun_share_button': 'Подели се', 'fun_new_spread_button': 'Ново распоређивање'},
    # Шведский
    'sv': {'fun_share_button': 'Dela', 'fun_new_spread_button': 'Ny spridning'},
    'sv_SE': {'fun_share_button': 'Dela', 'fun_new_spread_button': 'Ny spridning'},
    # Суахили
    'sw': {'fun_share_button': 'Shiriki', 'fun_new_spread_button': 'Kueneza mpya'},
    # Тамильский
    'ta': {'fun_share_button': 'பகிர்', 'fun_new_spread_button': 'புதிய பரப்பு'},
    'ta_IN': {'fun_share_button': 'பகிர்', 'fun_new_spread_button': 'புதிய பரப்பு'},
    # Телугу
    'te': {'fun_share_button': 'షేర్ చేయండి', 'fun_new_spread_button': 'కొత్త స్ప్రెడ్'},
    'te_IN': {'fun_share_button': 'షేర్ చేయండి', 'fun_new_spread_button': 'కొత్త స్ప్రెడ్'},
    # Тайский
    'th': {'fun_share_button': 'แชร์', 'fun_new_spread_button': 'การแพร่กระจายใหม่'},
    # Турецкий
    'tr': {'fun_share_button': 'Paylaş', 'fun_new_spread_button': 'Yeni yayılım'},
    'tr_TR': {'fun_share_button': 'Paylaş', 'fun_new_spread_button': 'Yeni yayılım'},
    # Украинский
    'uk': {'fun_share_button': 'Поділитися', 'fun_new_spread_button': 'Новий розклад'},
    # Урду
    'ur': {'fun_share_button': 'شیئر کریں', 'fun_new_spread_button': 'نیا پھیلاؤ'},
    # Вьетнамский
    'vi': {'fun_share_button': 'Chia sẻ', 'fun_new_spread_button': 'Sự lan tỏa mới'},
    # Китайский
    'zh': {'fun_share_button': '分享', 'fun_new_spread_button': '新牌阵'},
    # Зулу
    'zu': {'fun_share_button': 'Yabelana', 'fun_new_spread_button': 'Ukusabalala okusha'},
}

# Список файлов для обновления
files_to_update = [
    'app_de.arb',
    'app_es.arb',
    'app_es_ES.arb',
    'app_fa.arb',
    'app_fi.arb',
    'app_fr.arb',
    'app_gl.arb',
    'app_hi.arb',
    'app_hu.arb',
    'app_is.arb',
    'app_it.arb',
    'app_iw.arb',
    'app_ja.arb',
    'app_ka.arb',
    'app_km.arb',
    'app_kn.arb',
    'app_ko.arb',
    'app_ky.arb',
    'app_lo.arb',
    'app_mk.arb',
    'app_ml.arb',
    'app_mn.arb',
    'app_mn_MN.arb',
    'app_mr.arb',
    'app_mr_IN.arb',
    'app_ne.arb',
    'app_ne_NP.arb',
    'app_no.arb',
    'app_no_NO.arb',
    'app_pa.arb',
    'app_pl.arb',
    'app_pl_PL.arb',
    'app_pt.arb',
    'app_pt_BR.arb',
    'app_pt_PT.arb',
    'app_rm.arb',
    'app_ro.arb',
    'app_ru_RU.arb',
    'app_si.arb',
    'app_si_LK.arb',
    'app_sk.arb',
    'app_sl.arb',
    'app_sr.arb',
    'app_sv.arb',
    'app_sv_SE.arb',
    'app_sw.arb',
    'app_ta.arb',
    'app_ta_IN.arb',
    'app_te.arb',
    'app_te_IN.arb',
    'app_th.arb',
    'app_tr.arb',
    'app_tr_TR.arb',
    'app_uk.arb',
    'app_ur.arb',
    'app_vi.arb',
    'app_zh.arb',
    'app_zu.arb',
]

def get_language_code_from_filename(filename):
    """Извлекает код языка из имени файла"""
    # Убираем 'app_' и '.arb'
    lang_code = filename.replace('app_', '').replace('.arb', '')
    return lang_code

def update_arb_file(file_path, language_code):
    """Обновляет .arb файл, добавляя ключи для кнопок"""
    if language_code not in translations:
        print(f"❌ Переводы для языка {language_code} не найдены")
        return False
    
    # Читаем существующий файл или создаем новый
    if os.path.exists(file_path):
        with open(file_path, 'r', encoding='utf-8') as f:
            data = json.load(f)
    else:
        data = {}
    
    # Добавляем или обновляем ключи
    for key, value in translations[language_code].items():
        data[key] = value
    
    # Записываем обратно в файл
    with open(file_path, 'w', encoding='utf-8') as f:
        json.dump(data, f, ensure_ascii=False, indent=2)
    
    return True

def main():
    l10n_dir = 'lib/l10n'
    
    # Проверяем, что директория существует
    if not os.path.exists(l10n_dir):
        print(f"❌ Директория {l10n_dir} не найдена!")
        return
    
    updated_count = 0
    not_found_count = 0
    
    print(f"Обновляю {len(files_to_update)} файлов...\n")
    
    # Обновляем только указанные файлы
    for filename in files_to_update:
        file_path = os.path.join(l10n_dir, filename)
        language_code = get_language_code_from_filename(filename)
        
        if os.path.exists(file_path):
            if update_arb_file(file_path, language_code):
                print(f"✅ Обновлено: {filename}")
                updated_count += 1
            else:
                print(f"❌ Ошибка при обновлении: {filename}")
        else:
            print(f"⚠️  Файл {filename} не найден, пропускаю...")
            not_found_count += 1
    
    print(f"\n{'='*50}")
    print("ИТОГИ:")
    print(f"{'='*50}")
    print(f"✅ Успешно обновлено: {updated_count}")
    print(f"⚠️  Файлов не найдено: {not_found_count}")
    print(f"📊 Всего обработано: {len(files_to_update)}")

if __name__ == "__main__":
    main() 