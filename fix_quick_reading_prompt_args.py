#!/usr/bin/env python3
import os
import re
import glob

def fix_quick_reading_prompt_args():
    """Исправляет порядок аргументов в вызовах quick_reading_result_screen_prompt"""
    
    # Находим все Dart файлы в lib/screens/
    dart_files = glob.glob("lib/screens/*.dart")
    
    fixed_files = []
    
    for filename in dart_files:
        with open(filename, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Паттерн для поиска вызовов quick_reading_result_screen_prompt
        # Ищем вызовы с двумя аргументами в правильном порядке (userName, cardNameRu)
        pattern = r'(\s+)l10n\.quick_reading_result_screen_prompt\(\s*([^,]+),\s*([^)]+)\s*\)'
        
        # Проверяем, есть ли такие вызовы в файле
        matches = re.findall(pattern, content)
        
        if matches:
            print(f"Найдены вызовы в {filename}:")
            for match in matches:
                indent, arg1, arg2 = match
                print(f"  {indent}l10n.quick_reading_result_screen_prompt({arg1.strip()}, {arg2.strip()})")
            
            # Заменяем порядок аргументов
            # arg1 (userName) становится вторым аргументом
            # arg2 (cardNameRu) становится первым аргументом
            new_content = re.sub(
                pattern,
                lambda m: f"{m.group(1)}l10n.quick_reading_result_screen_prompt(\n{m.group(1)}  {m.group(3).strip()},\n{m.group(1)}  {m.group(2).strip()}\n{m.group(1)})",
                content
            )
            
            # Записываем исправленный файл
            with open(filename, 'w', encoding='utf-8') as f:
                f.write(new_content)
            
            fixed_files.append(filename)
            print(f"✅ Исправлен файл: {filename}")
    
    print(f"\n📊 Итого исправлено файлов: {len(fixed_files)}")
    if fixed_files:
        print("Исправленные файлы:")
        for file in fixed_files:
            print(f"  - {file}")

if __name__ == "__main__":
    fix_quick_reading_prompt_args() 