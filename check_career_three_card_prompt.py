import os
import re
import json

l10n_dir = 'lib/l10n'
key = 'career_three_card_prompt'
expected = {'userName','userQuestion','situationCard','challengeCard','adviceCard'}

# Получаем английский шаблон
with open(os.path.join(l10n_dir, 'app_en.arb'), encoding='utf-8') as f:
    en_data = json.load(f)
    en_prompt = en_data[key]

def extract_placeholders(text):
    return set(re.findall(r'\{(\w+)\}', text))

files = [f for f in os.listdir(l10n_dir) if f.endswith('.arb')]
changed = []
for filename in files:
    path = os.path.join(l10n_dir, filename)
    with open(path, encoding='utf-8') as f:
        try:
            data = json.load(f)
        except Exception as e:
            print(f"Ошибка чтения {filename}: {e}")
            continue
    if key in data:
        ph = extract_placeholders(data[key])
        if ph != expected:
            print(f"Fixing {filename}: {ph}")
            data[key] = en_prompt
            with open(path, 'w', encoding='utf-8') as f:
                json.dump(data, f, ensure_ascii=False, indent=2)
            changed.append(filename)
if not changed:
    print('Все файлы корректны!')
else:
    print('Исправлены файлы:', changed) 