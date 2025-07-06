#!/usr/bin/env python3
import os
import json
import re

# Языки, которые исключаем из проверки (они должны содержать кириллицу)
excluded_langs = {
    'app_ru.arb', 'app_ru_RU.arb',  # русский
    'app_uk.arb',                   # украинский
    'app_bg.arb',                   # болгарский
    'app_mk.arb', 'app_mk_MK.arb',  # македонский
    'app_sr.arb',                   # сербский
    'app_ky.arb', 'app_ky_KG.arb',  # киргизский
    'app_kk.arb',                   # казахский
    'app_mn.arb', 'app_mn_MN.arb',  # монгольский
}

# Русские слова, которые не должны быть в других языках
russian_words = [
    'Пользователь', 'пользователь', 'спрашивает', 'Ответь', 'ответь', 'расклад', 'Карты', 'карты',
    'прошлое', 'настоящее', 'будущее', 'причина', 'возможный', 'итог', 'Объясни', 'объясни',
    'значение', 'каждой', 'карты', 'общий', 'смысл', 'даны', 'порядку', 'опытный', 'таролог'
]

l10n_dir = 'lib/l10n'

def check_file(filename):
    if filename in excluded_langs:
        return None
    
    path = os.path.join(l10n_dir, filename)
    if not os.path.exists(path):
        return None
        
    try:
        with open(path, 'r', encoding='utf-8') as f:
            data = json.load(f)
        
        if 'five_cards_screen_prompt' not in data:
            return None
            
        text = data['five_cards_screen_prompt']
        found_words = []
        
        for word in russian_words:
            if word in text:
                found_words.append(word)
        
        if found_words:
            return found_words
        return None
        
    except Exception as e:
        print(f"❌ Ошибка при обработке {filename}: {e}")
        return None

if __name__ == "__main__":
    print("🔍 Проверка на русские слова в five_cards_screen_prompt...")
    print("Исключаем языки:", ', '.join(excluded_langs))
    print()
    
    found_issues = []
    
    for filename in os.listdir(l10n_dir):
        if filename.endswith('.arb') and not filename.startswith('app_localizations'):
            result = check_file(filename)
            if result:
                found_issues.append((filename, result))
                print(f"⚠️  {filename}: найдены русские слова: {', '.join(result)}")
    
    if not found_issues:
        print("✅ Русских слов в других языках не найдено!")
    else:
        print(f"\n📊 Всего найдено проблем: {len(found_issues)}")
    
    print("✨ Проверка завершена!") 