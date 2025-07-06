#!/usr/bin/env python3
import re

def fix_monthly_wheel_prompt_args():
    """Исправляет порядок аргументов в вызове monthly_wheel_prompt"""
    
    filename = "lib/screens/monthly_forecast_spread_screen.dart"
    
    with open(filename, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Паттерн для поиска вызова monthly_wheel_prompt
    pattern = r'String prompt = l10n\.monthly_wheel_prompt\(\s*([^)]+)\);'
    
    match = re.search(pattern, content, re.DOTALL)
    if match:
        args_text = match.group(1)
        print(f"Найден вызов monthly_wheel_prompt в {filename}")
        print(f"Текущие аргументы: {args_text}")
        
        # Разбираем аргументы, игнорируя пустые строки
        args = [arg.strip() for arg in args_text.split(',') if arg.strip()]
        
        print(f"Найдено аргументов: {len(args)}")
        for i, arg in enumerate(args):
            print(f"  {i+1}: {arg}")
        
        if len(args) == 15:
            # Текущий порядок (неправильный):
            # userName, userQuestion, month, card1, card2, card3, card4, card5, card6, card7, card8, card9, card10, card11, card12
            
            # Правильный порядок:
            # card1, card10, card11, card12, card2, card3, card4, card5, card6, card7, card8, card9, month, userName, userQuestion
            
            userName = args[0]
            userQuestion = args[1] 
            month = args[2]
            card1 = args[3]
            card2 = args[4]
            card3 = args[5]
            card4 = args[6]
            card5 = args[7]
            card6 = args[8]
            card7 = args[9]
            card8 = args[10]
            card9 = args[11]
            card10 = args[12]
            card11 = args[13]
            card12 = args[14]
            
            # Новый порядок аргументов
            new_args = [
                card1, card10, card11, card12,  # карты 1, 10, 11, 12
                card2, card3, card4, card5,     # карты 2, 3, 4, 5
                card6, card7, card8, card9,     # карты 6, 7, 8, 9
                month, userName, userQuestion   # месяц, имя, вопрос
            ]
            
            new_args_text = ',\n      '.join(new_args)
            
            # Заменяем вызов
            new_content = re.sub(
                pattern,
                f'String prompt = l10n.monthly_wheel_prompt(\n      {new_args_text}\n    );',
                content,
                flags=re.DOTALL
            )
            
            # Записываем исправленный файл
            with open(filename, 'w', encoding='utf-8') as f:
                f.write(new_content)
            
            print(f"✅ Исправлен файл: {filename}")
            print("Новый порядок аргументов:")
            print(f"  card1: {card1}")
            print(f"  card10: {card10}")
            print(f"  card11: {card11}")
            print(f"  card12: {card12}")
            print(f"  card2: {card2}")
            print(f"  card3: {card3}")
            print(f"  card4: {card4}")
            print(f"  card5: {card5}")
            print(f"  card6: {card6}")
            print(f"  card7: {card7}")
            print(f"  card8: {card8}")
            print(f"  card9: {card9}")
            print(f"  month: {month}")
            print(f"  userName: {userName}")
            print(f"  userQuestion: {userQuestion}")
        else:
            print(f"❌ Ошибка: ожидалось 15 аргументов, найдено {len(args)}")
    else:
        print(f"❌ Вызов monthly_wheel_prompt не найден в {filename}")

if __name__ == "__main__":
    fix_monthly_wheel_prompt_args() 