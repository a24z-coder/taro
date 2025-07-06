import re

# Читаем файл
with open('app_bg.arb', 'r', encoding='utf-8') as f:
    content = f.read()

# Заменяем экранированные кавычки на обычные
content = content.replace('\\"', '"')

# Сохраняем файл
with open('app_bg.arb', 'w', encoding='utf-8') as f:
    f.write(content)

print("✅ Исправлены экранированные кавычки в app_bg.arb") 