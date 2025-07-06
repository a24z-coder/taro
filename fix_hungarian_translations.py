#!/usr/bin/env python3
import json
import os

# Файлы для исправления
files = [
    'app_hu.arb',
    'app_hu_HU.arb'
]

# Правильный венгерский перевод
hungarian_translation = "Kérését fogadtuk. Kérjük, nyissa meg a kártyákat"

l10n_dir = 'lib/l10n'

def fix_file(filename):
    path = os.path.join(l10n_dir, filename)
    
    if not os.path.exists(path):
        print(f"⚠️  Файл {filename} не найден, пропускаем")
        return
        
    try:
        with open(path, 'r', encoding='utf-8') as f:
            data = json.load(f)
        
        # Проверяем, есть ли ключ и содержит ли он русский текст
        if 'chat_with_tarot_reader_screen_request_received' in data:
            current_value = data['chat_with_tarot_reader_screen_request_received']
            
            # Проверяем, содержит ли текущее значение русские слова
            russian_words = ['Ваш', 'запрос', 'принят', 'Пожалуйста', 'откройте', 'карты']
            has_russian = any(word in current_value for word in russian_words)
            
            if has_russian:
                # Заменяем на правильный венгерский перевод
                data['chat_with_tarot_reader_screen_request_received'] = hungarian_translation
                
                # Сохраняем файл
                with open(path, 'w', encoding='utf-8') as f:
                    json.dump(data, f, ensure_ascii=False, indent=2)
                
                print(f"✅ Исправлен {filename}")
                print(f"   Было: {current_value}")
                print(f"   Стало: {hungarian_translation}")
            else:
                print(f"ℹ️  {filename} уже содержит правильный перевод")
        else:
            print(f"⚠️  Ключ 'chat_with_tarot_reader_screen_request_received' не найден в {filename}")
            
    except Exception as e:
        print(f"❌ Ошибка при обработке {filename}: {e}")

if __name__ == "__main__":
    print("🔧 Исправление венгерских переводов...")
    for filename in files:
        fix_file(filename)
    print("✨ Готово!") 