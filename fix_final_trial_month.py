#!/usr/bin/env python3
import re
import os

# Финальные исправления для файлов с цифрами
FINAL_FIXES = {
    'app_ka_GE.arb': 'თვეში',
    'app_ky_KG.arb': 'Ай сайын',
    'app_ja_JP.arb': '毎月',
    'app_ml_IN.arb': 'മാസികം',
}

def main():
    changed = 0
    for filename, correct_value in FINAL_FIXES.items():
        filepath = f'lib/l10n/{filename}'
        if not os.path.exists(filepath):
            print(f'❌ Файл не найден: {filepath}')
            continue
            
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
            
        if 'onboarding_final_trial_month' not in content:
            print(f'⚠️ Ключ не найден в {filename}')
            continue
            
        new_content, n = re.subn(
            r'("onboarding_final_trial_month"\s*:\s*")[^"]*(")',
            f'"onboarding_final_trial_month": "{correct_value}"',
            content
        )
        
        if n > 0:
            with open(filepath, 'w', encoding='utf-8') as f:
                f.write(new_content)
            print(f'✅ {filename}: заменено на "{correct_value}"')
            changed += 1
        else:
            print(f'⚠️ Не удалось заменить в {filename}')
            
    print(f'Итого исправлено файлов: {changed}')

if __name__ == '__main__':
    main() 