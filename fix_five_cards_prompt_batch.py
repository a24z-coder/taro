import os
import re
import json
import sys

l10n_dir = 'lib/l10n'
key = 'five_cards_screen_prompt'

# Русские символы для поиска
russian_pattern = re.compile(r'[а-яё]', re.IGNORECASE)

# Правильный английский промпт (замените на нужный)
correct_prompt = """Analyze the following tarot card spread for {userName} who asks: "{userQuestion}"

Past: {pastCard}
Present: {presentCard}
Hidden: {hiddenCard}
Advice: {adviceCard}
Outcome: {outcomeCard}

Provide a detailed interpretation of this 5-card spread, explaining how each card relates to the question and how they work together to tell a complete story. Focus on practical insights and guidance."""

def has_russian_text(text):
    """Проверяет, содержит ли текст русские символы"""
    return bool(russian_pattern.search(text))

def get_files_with_russian_prompt():
    """Находит все файлы с русскими словами в five_cards_screen_prompt"""
    files_with_russian = []
    
    for filename in os.listdir(l10n_dir):
        if not filename.endswith('.arb'):
            continue
            
        path = os.path.join(l10n_dir, filename)
        try:
            with open(path, encoding='utf-8') as f:
                data = json.load(f)
                
            if key in data and has_russian_text(data[key]):
                files_with_russian.append(filename)
                
        except Exception as e:
            print(f"Ошибка чтения {filename}: {e}")
    
    return files_with_russian

def fix_prompt_in_files(files_to_fix):
    """Исправляет промпт в указанных файлах"""
    fixed_count = 0
    
    for filename in files_to_fix:
        path = os.path.join(l10n_dir, filename)
        try:
            with open(path, encoding='utf-8') as f:
                data = json.load(f)
            
            if key in data:
                old_prompt = data[key]
                data[key] = correct_prompt
                
                # Сохраняем файл
                with open(path, 'w', encoding='utf-8') as f:
                    json.dump(data, f, ensure_ascii=False, indent=2)
                
                print(f"✅ Исправлен: {filename}")
                print(f"   Было: {old_prompt[:100]}...")
                print(f"   Стало: {correct_prompt[:100]}...")
                print()
                fixed_count += 1
                
        except Exception as e:
            print(f"❌ Ошибка обработки {filename}: {e}")
    
    return fixed_count

def main():
    print("🔍 Поиск файлов с русскими словами в five_cards_screen_prompt...")
    
    files_with_russian = get_files_with_russian_prompt()
    
    if not files_with_russian:
        print("✅ Не найдено файлов с русскими словами в промпте.")
        return
    
    print(f"📁 Найдено {len(files_with_russian)} файлов с русскими словами:")
    for i, filename in enumerate(files_with_russian, 1):
        print(f"   {i}. {filename}")
    
    total_files = len(files_with_russian)
    batch_size = 20
    
    print(f"\n🔄 Обработка по {batch_size} файлов за раз...")
    
    for i in range(0, total_files, batch_size):
        batch = files_with_russian[i:i + batch_size]
        batch_num = i // batch_size + 1
        total_batches = (total_files + batch_size - 1) // batch_size
        
        print(f"\n📦 Пакет {batch_num}/{total_batches} ({len(batch)} файлов):")
        print("=" * 50)
        
        fixed = fix_prompt_in_files(batch)
        
        print(f"✅ Обработано {fixed} файлов в пакете {batch_num}")
        
        if i + batch_size < total_files:
            response = input(f"\nПродолжить со следующим пакетом? (y/n): ")
            if response.lower() != 'y':
                print("⏹️ Остановлено пользователем.")
                break
    
    print(f"\n🎉 Завершено! Всего обработано файлов: {min(i + batch_size, total_files)} из {total_files}")
    print("💡 Не забудьте запустить 'flutter gen-l10n' для обновления локализации.")

if __name__ == "__main__":
    main() 