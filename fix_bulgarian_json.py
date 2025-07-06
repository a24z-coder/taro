#!/usr/bin/env python3
import os

def fix_bulgarian_json():
    file_path = 'lib/l10n/app_bg.arb'
    
    if not os.path.exists(file_path):
        print(f"❌ Файл {file_path} не найден")
        return
    
    try:
        # Читаем файл как текст
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Заменяем экранированные кавычки на обычные
        # \" -> "
        fixed_content = content.replace('\\"', '"')
        
        # Сохраняем исправленный файл
        with open(file_path, 'w', encoding='utf-8') as f:
            f.write(fixed_content)
        
        print("✅ Файл app_bg.arb исправлен!")
        print("   Убрано неправильное экранирование кавычек")
        
    except Exception as e:
        print(f"❌ Ошибка при исправлении файла: {e}")

if __name__ == "__main__":
    print("🔧 Исправление форматирования JSON в болгарском файле...")
    fix_bulgarian_json()
    print("✨ Готово!") 