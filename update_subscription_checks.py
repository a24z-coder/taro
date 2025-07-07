#!/usr/bin/env python3
import os
import re

def update_file(file_path):
    """Обновляет файл, добавляя проверку подписки перед показом рекламы"""
    
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Проверяем, есть ли уже импорт SubscriptionUtils
    if 'import \'package:tarot_ai/utils/subscription_utils.dart\';' not in content:
        # Добавляем импорт после других импортов
        import_pattern = r'(import \'package:stack_appodeal_flutter/stack_appodeal_flutter\.dart\';)'
        replacement = r'\1\nimport \'package:tarot_ai/utils/subscription_utils.dart\';'
        content = re.sub(import_pattern, replacement, content)
    
    # Находим все блоки с показом рекламы и оборачиваем их в проверку подписки
    # Ищем блоки, которые начинаются с комментария о рекламе и содержат Appodeal.show
    ad_pattern = r'(\s+)(// --- Показываем рекламу[^-]*---\s*\n\s*try\s*\{[^}]*Appodeal\.show\(AppodealAdType\.Interstitial\)[^}]*\}[^}]*catch\s*\([^}]*\)\s*\{[^}]*\})'
    
    def replace_ad_block(match):
        indent = match.group(1)
        ad_block = match.group(2)
        
        # Создаем новый блок с проверкой подписки
        new_block = f"""{indent}// Показываем рекламу только если нет активной подписки
{indent}if (SubscriptionUtils.shouldShowAds()) {{
{indent}  {ad_block}
{indent}}} else {{
{indent}  debugPrint('[{os.path.basename(file_path).replace('.dart', '')}] Skipping ad - user has active subscription');
{indent}}}"""
        
        return new_block
    
    # Применяем замену
    new_content = re.sub(ad_pattern, replace_ad_block, content, flags=re.DOTALL)
    
    # Если контент изменился, записываем файл
    if new_content != content:
        with open(file_path, 'w', encoding='utf-8') as f:
            f.write(new_content)
        print(f"✅ Обновлен: {file_path}")
        return True
    else:
        print(f"⏭️  Пропущен (нет изменений): {file_path}")
        return False

def main():
    """Основная функция"""
    
    # Список файлов для обновления
    files_to_update = [
        'lib/screens/card_combination_screen.dart',
        'lib/screens/monthly_forecast_spread_screen.dart',
        'lib/screens/card_detail_screen.dart',
        'lib/screens/fun_spread_screen.dart',
        'lib/screens/chat_with_tarot_reader_screen.dart',
        'lib/screens/pros_cons_spread_screen.dart',
        'lib/screens/five_card_spread_screen.dart',
        'lib/screens/career_finance_spread_screen.dart',
        'lib/screens/celtic_cross_screen.dart',
        'lib/screens/self_development_balance_spread_screen.dart',
        'lib/screens/love_spread_screen.dart',
    ]
    
    updated_count = 0
    
    for file_path in files_to_update:
        if os.path.exists(file_path):
            if update_file(file_path):
                updated_count += 1
        else:
            print(f"❌ Файл не найден: {file_path}")
    
    print(f"\n🎉 Обновлено файлов: {updated_count}")

if __name__ == "__main__":
    main() 