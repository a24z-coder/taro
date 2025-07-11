import os
import json
import re

ARB_DIR = 'lib/l10n'
OUTPUT_FILE = 'lib/utils/prompt_templates.dart'

def lang_from_filename(filename):
    # app_ru_RU.arb -> ru_RU, app_en.arb -> en
    match = re.search(r'app_([a-z]{2})(?:_([A-Z]{2}))?\.arb', filename)
    if not match:
        return None
    lang = match.group(1)
    region = match.group(2)
    return f"{lang}_{region}" if region else lang

def main():
    templates = {}

    for fname in os.listdir(ARB_DIR):
        if not fname.endswith('.arb'):
            continue
        lang = lang_from_filename(fname)
        if not lang:
            continue
        with open(os.path.join(ARB_DIR, fname), encoding='utf-8') as f:
            data = json.load(f)
        for key, value in data.items():
            if key.endswith('_prompt'):
                templates.setdefault(lang, {})[key] = value

    with open(OUTPUT_FILE, 'w', encoding='utf-8') as f:
        f.write('// GENERATED FILE! Do not edit manually.\n')
        f.write('const Map<String, Map<String, String>> promptTemplates = {\n')
        for lang, prompts in templates.items():
            f.write(f"  '{lang}': {{\n")
            for key, value in prompts.items():
                # Удаляем все звездочки из текста
                value = value.replace('*', '')
                value = value.replace('\\', '\\\\').replace('"', '\\"').replace('\n', '\\n')
                f.write(f'    "{key}": "{value}",\n')
            f.write('  },\n')
        f.write('};\n')
    print(f'Готово! Файл {OUTPUT_FILE} сгенерирован.')

if __name__ == '__main__':
    main()