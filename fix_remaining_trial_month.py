#!/usr/bin/env python3
import re
import os

# Карта для оставшихся файлов с цифрами
REMAINING_FIXES = {
    'app_mn_MN.arb': 'Сар бүр',
    'app_hu_HU.arb': 'Havonta',
    'app_no_NO.arb': 'Månedlig',
    'app_kn_IN.arb': 'ಮಾಸಿಕ',
    'app_fr_CA.arb': 'Mensuel',
    'app_gl_ES.arb': 'Mensual',
    'app_hy_AM.arb': 'Ամսական',
    'app_tr_TR.arb': 'Aylık',
    'app_lo_LA.arb': 'ລາຍເດືອນ',
    'app_km_KH.arb': 'ប្រចាំខែ',
    'app_is_IS.arb': 'Mánaðarlega',
    'app_bn_BD.arb': 'মাসিক',
    'app_pl_PL.arb': 'Miesięcznie',
    'app_my_MM.arb': 'လစဉ်',
    'app_te_IN.arb': 'నెలవారీ',
    'app_cs_CZ.arb': 'Měsíčně',
    'app_si_LK.arb': 'මාසික',
    'app_ko_KR.arb': '월간',
    'app_hi_IN.arb': 'मासिक',
    'app_ne_NP.arb': 'मासिक',
    'app_zh_HK.arb': '每月',
    'app_sv_SE.arb': 'Månadsvis',
    'app_iw_IL.arb': 'חודשי',
    'app_ta_IN.arb': 'மாதம்',
    'app_mk_MK.arb': 'Месечно',
    'app_nl_NL.arb': 'Maandelijks',
    'app_mr_IN.arb': 'मासिक',
    'app_ms_MY.arb': 'Bulanan',
    'app_az_AZ.arb': 'Aylıq',
    'app_fi_FI.arb': 'Kuukausittain',
}

def main():
    changed = 0
    for filename, correct_value in REMAINING_FIXES.items():
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