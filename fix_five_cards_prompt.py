#!/usr/bin/env python3
import os
import re
import glob

def fix_five_cards_prompt():
    """Исправляет плейсхолдеры в five_cards_screen_prompt во всех ARB файлах"""
    
    # Находим все ARB файлы
    arb_files = glob.glob("lib/l10n/app_*.arb")
    
    # Правильный шаблон для five_cards_screen_prompt
    correct_template = '''"five_cards_screen_prompt": "You are an experienced tarot reader. The user {userName} asks: \\"{userQuestion}\\". Answer using the \\"5 cards\\" spread. The cards are given in order: past - {pastCard}; present - {presentCard}; hidden - {hiddenCard}; advice - {adviceCard}; outcome - {outcomeCard}. Refer to {userName} at least five times and be sure to relate each card to the question. Follow the structure:

1) Greeting by name {userName}.

2) Title: Spread: past ({pastCard}) / present ({presentCard}) / hidden ({hiddenCard}) / advice ({adviceCard}) / outcome ({outcomeCard}).

3) Past — {pastCard} (45-55 words): three keywords, card symbolism, and the influence of the past on {userQuestion} for {userName}.

4) Present — {presentCard} (45-55 words): keywords, symbolism, and the current state of {userName}'s question.

5) Hidden — {hiddenCard} (45-55 words): what unconsciously affects {userName}'s situation, focusing on symbolism.

6) Advice — {adviceCard} (45-55 words): practical action for {userName}, based on the card's images.

7) Outcome — {outcomeCard} (45-55 words): likely scenario if the advice is followed, addressing {userName}.

8) Conclusion: friendly support and a positive affirmation (25-30 words) for {userName}.

Requirements: total volume 230-260 words, lively conversational tone, 3-5 esoteric emojis; separate each block with a double line break (\\\\n\\\\n); do not use *, # or other markup; write only plain text."'''
    
    fixed_files = []
    
    for file_path in arb_files:
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # Проверяем, есть ли неправильные плейсхолдеры
            if '{futureCard}' in content or '{reasonCard}' in content:
                # Заменяем неправильные плейсхолдеры на правильные
                content = re.sub(r'\{futureCard\}', '{hiddenCard}', content)
                content = re.sub(r'\{reasonCard\}', '{adviceCard}', content)
                
                # Записываем исправленный файл
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write(content)
                
                fixed_files.append(file_path)
                print(f"✅ Исправлен: {file_path}")
        
        except Exception as e:
            print(f"❌ Ошибка при обработке {file_path}: {e}")
    
    print(f"\n🎯 Всего исправлено файлов: {len(fixed_files)}")
    
    if fixed_files:
        print("\n📝 Исправленные файлы:")
        for file_path in fixed_files:
            print(f"  - {file_path}")
    else:
        print("\n✅ Все файлы уже корректны!")

if __name__ == "__main__":
    fix_five_cards_prompt() 