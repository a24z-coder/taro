#!/usr/bin/env python3
import glob
import re
import os

def check_arb_files():
    files = glob.glob('lib/l10n/app_*.arb')
    issues = []
    total_files = 0
    files_with_key = 0
    
    for file in files:
        total_files += 1
        with open(file, 'r', encoding='utf-8') as f:
            content = f.read()
            
        if 'onboarding_final_trial_month' not in content:
            continue
            
        files_with_key += 1
        
        # Ищем значение ключа
        match = re.search(r'"onboarding_final_trial_month"\s*:\s*"([^"]*)"', content)
        if not match:
            issues.append(f'{file}: не удалось найти значение ключа')
            continue
            
        value = match.group(1)
        
        # Проверяем на цифры
        if re.search(r'[0-9]', value):
            issues.append(f'{file}: содержит цифры - "{value}"')
            
        # Проверяем на слово "Ежемесячно" (допустимо только для русского)
        if 'Ежемесячно' in value:
            if not file.endswith('ru.arb') and not file.endswith('ru_RU.arb'):
                issues.append(f'{file}: содержит "Ежемесячно" - "{value}"')
    
    print(f'Всего ARB файлов: {total_files}')
    print(f'Файлов с ключом onboarding_final_trial_month: {files_with_key}')
    print(f'Найдено проблем: {len(issues)}')
    print()
    
    if issues:
        print('ПРОБЛЕМЫ:')
        for issue in issues:
            print(f'❌ {issue}')
    else:
        print('✅ Все файлы в порядке!')
        
    return issues

if __name__ == '__main__':
    check_arb_files() 