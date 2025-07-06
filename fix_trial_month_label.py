#!/usr/bin/env python3
import glob
import re
import os

# Карта: язык -> правильное слово
LANG_MAP = {
    'af': 'Maandeliks',
    'sq': 'Mujor',
    'am': 'ወርሃዊ',
    'ar': 'شهري',
    'hy': 'Ամսական',
    'hy-AM': 'Ամսական',
    'az': 'Aylıq',
    'az-AZ': 'Aylıq',
    'bn': 'মাসিক',
    'bn-BD': 'মাসিক',
    'eu': 'Hileko',
    'eu-ES': 'Hileko',
    'be': 'Штомесяц',
    'bg': 'Месечно',
    'my': 'လစဉ်',
    'my-MM': 'လစဉ်',
    'ca': 'Mensual',
    'zh': '每月',
    'zh-HK': '每月',
    'zh-CN': '每月',
    'zh-TW': '每月',
    'hr': 'Mjesečno',
    'cs': 'Měsíčně',
    'cs-CZ': 'Měsíčně',
    'da': 'Månedligt',
    'da-DK': 'Månedligt',
    'nl': 'Maandelijks',
    'nl-NL': 'Maandelijks',
    'en': 'Monthly',
    'en-AU': 'Monthly',
    'en-CA': 'Monthly',
    'en-US': 'Monthly',
    'en-GB': 'Monthly',
    'en-IN': 'Monthly',
    'en-SG': 'Monthly',
    'en-ZA': 'Monthly',
    'et': 'Kuus',
    'fil': 'Buwanang',
    'fi': 'Kuukausittain',
    'fi-FI': 'Kuukausittain',
    'fr': 'Mensuel',
    'fr-CA': 'Mensuel',
    'fr-FR': 'Mensuel',
    'gl': 'Mensual',
    'gl-ES': 'Mensual',
    'ka': 'თვეში',
    'ka-GE': 'თვეში',
    'de': 'Monatlich',
    'de-DE': 'Monatlich',
    'el': 'Μηνιαίως',
    'el-GR': 'Μηνιαίως',
    'gu': 'માસિક',
    'iw': 'חודשי',
    'iw-IL': 'חודשי',
    'hi': 'मासिक',
    'hi-IN': 'मासिक',
    'hu': 'Havonta',
    'hu-HU': 'Havonta',
    'is': 'Mánaðarlega',
    'is-IS': 'Mánaðarlega',
    'id': 'Bulanan',
    'it': 'Mensile',
    'it-IT': 'Mensile',
    'ja': '毎月',
    'ja-JP': '毎月',
    'kn': 'ಮಾಸಿಕ',
    'kn-IN': 'ಮಾಸಿಕ',
    'kk': 'Ай сайын',
    'km': 'ប្រចាំខែ',
    'km-KH': 'ប្រចាំខែ',
    'ko': '월간',
    'ko-KR': '월간',
    'ky': 'Ай сайын',
    'ky-KG': 'Ай сайын',
    'lo': 'ລາຍເດືອນ',
    'lo-LA': 'ລາຍເດືອນ',
    'lv': 'Mēnesī',
    'lt': 'Kas mėnesį',
    'mk': 'Месечно',
    'mk-MK': 'Месечно',
    'ms': 'Bulanan',
    'ms-MY': 'Bulanan',
    'ml': 'മാസികം',
    'ml-IN': 'മാസികം',
    'mr': 'मासिक',
    'mr-IN': 'मासिक',
    'mn': 'Сар бүр',
    'mn-MN': 'Сар бүр',
    'ne': 'मासिक',
    'ne-NP': 'मासिक',
    'no': 'Månedlig',
    'no-NO': 'Månedlig',
    'fa': 'ماهانه',
    'fa-AE': 'ماهانه',
    'fa-AF': 'ماهانه',
    'fa-IR': 'ماهانه',
    'pl': 'Miesięcznie',
    'pl-PL': 'Miesięcznie',
    'pt': 'Mensal',
    'pt-BR': 'Mensal',
    'pt-PT': 'Mensal',
    'pa': 'ਮਾਸਿਕ',
    'ro': 'Lunar',
    'rm': 'Mensil',
    'ru': 'Ежемесячно',
    'ru-RU': 'Ежемесячно',
    'sr': 'Месечно',
    'si': 'මාසික',
    'si-LK': 'මාසික',
    'sk': 'Mesačne',
    'sl': 'Mesečno',
    'es': 'Mensual',
    'es-419': 'Mensual',
    'es-ES': 'Mensual',
    'es-US': 'Mensual',
    'sw': 'Kila mwezi',
    'sv': 'Månadsvis',
    'sv-SE': 'Månadsvis',
    'ta': 'மாதம்',
    'ta-IN': 'மாதம்',
    'te': 'నెలవారీ',
    'te-IN': 'నెలవారీ',
    'th': 'รายเดือน',
    'tr': 'Aylık',
    'tr-TR': 'Aylık',
    'uk': 'Щомісяця',
    'ur': 'ماہانہ',
    'vi': 'Hàng tháng',
    'zu': 'Njalo ngenyanga',
}

def get_lang_from_filename(filename):
    # Пример: app_ru.arb, app_en_US.arb
    base = os.path.basename(filename)
    m = re.match(r'app_([a-zA-Z_]+)\.arb', base)
    if m:
        return m.group(1)
    return None

def main():
    files = glob.glob('lib/l10n/app_*.arb')
    changed = 0
    for file in files:
        with open(file, encoding='utf-8') as f:
            content = f.read()
        if 'onboarding_final_trial_month' not in content:
            continue
        lang = get_lang_from_filename(file)
        value = LANG_MAP.get(lang, None)
        if not value:
            print(f'Пропускаю {file}: язык {lang} не в списке')
            continue
        new_content, n = re.subn(
            r'("onboarding_final_trial_month"\s*:\s*")[^"]*(")',
            f'"onboarding_final_trial_month": "{value}"',
            content
        )
        if n > 0:
            with open(file, 'w', encoding='utf-8') as f:
                f.write(new_content)
            print(f'✅ {file}: заменено на "{value}"')
            changed += 1
    print(f'Итого исправлено файлов: {changed}')

if __name__ == '__main__':
    main() 