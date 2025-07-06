import glob
import re

def check_prompt_order():
    pattern = re.compile(r'"quick_reading_result_screen_prompt"\s*:\s*"([^"]+)"')
    wrong_files = []
    for filename in glob.glob('lib/l10n/app_*.arb'):
        with open(filename, encoding='utf-8') as f:
            content = f.read()
            match = pattern.search(content)
            if match:
                value = match.group(1)
                # Найти первую встречу {userName} и {cardName}
                uname_idx = value.find('{userName}')
                cname_idx = value.find('{cardName}')
                if uname_idx != -1 and cname_idx != -1:
                    if cname_idx < uname_idx:
                        print(f'❌ Порядок плейсхолдеров нарушен в {filename}')
                        print(f'  {value[:120]}...')
                        wrong_files.append(filename)
    if not wrong_files:
        print('✅ Во всех ARB-файлах правильный порядок плейсхолдеров.')
    else:
        print(f'Всего файлов с ошибкой: {len(wrong_files)}')

if __name__ == "__main__":
    check_prompt_order() 