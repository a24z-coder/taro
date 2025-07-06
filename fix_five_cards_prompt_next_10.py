#!/usr/bin/env python3
import json
import os

# Следующие 10 языков для исправления
languages = [
    'app_mk_MK.arb', # македонский ( Македония)
    'app_sr.arb',    # сербский
    'app_ru.arb',    # русский
    'app_ky_KG.arb', # киргизский (Кыргызстан)
    'app_ky.arb',    # киргизский
    'app_kk.arb',    # казахский
    'app_ru_RU.arb', # русский (Россия)
    'app_mn.arb',    # монгольский
    'app_uk.arb',    # украинский
    'app_hu_HU.arb'  # венгерский (Венгрия)
]

# Переводы для каждого языка
translations = {
    'app_mk_MK.arb': 'Вие сте искусен тарот читач. Корисникот {userName} прашува: "{userQuestion}". Одговорете преку распоред "5 карти". Картите се дадени по ред: минато - {pastCard}; сегашност - {presentCard}; иднина - {futureCard}; причина - {reasonCard}; можен исход - {outcomeCard}. Објаснете го значењето на секоја карта и нивното комбинирано значење.',
    'app_sr.arb': 'Ви сте искусан читалац тарота. Корисник {userName} пита: "{userQuestion}". Одговорите преко распореда "5 карата". Карте су дате по реду: прошлост - {pastCard}; садашњост - {presentCard}; будућност - {futureCard}; разлог - {reasonCard}; могући исход - {outcomeCard}. Објасните значење сваке карте и њихово комбиновано значење.',
    'app_ru.arb': 'Ты опытный таролог. Пользователь {userName} спрашивает: "{userQuestion}". Ответь через расклад "5 карт". Карты даны по порядку: прошлое - {pastCard}; настоящее - {presentCard}; будущее - {futureCard}; причина - {reasonCard}; возможный итог - {outcomeCard}. Объясни значение каждой карты и их общий смысл.',
    'app_ky_KG.arb': 'Сиз тажрыйбалуу таро окуучусуз. Колдонуучу {userName} сурайт: "{userQuestion}". "5 карта" жайылышы аркылуу жооп бериңиз. Карталар төмөнкү тартипте берилген: өткөн - {pastCard}; азыркы - {presentCard}; келечек - {futureCard}; себеп - {reasonCard}; мүмкүн болгон натыйжа - {outcomeCard}. Ар бир картанын маанисин түшүндүрүп, алардын биргелешкен маанисин да түшүндүрүңүз.',
    'app_ky.arb': 'Сиз тажрыйбалуу таро окуучусуз. Колдонуучу {userName} сурайт: "{userQuestion}". "5 карта" жайылышы аркылуу жооп бериңиз. Карталар төмөнкү тартипте берилген: өткөн - {pastCard}; азыркы - {presentCard}; келечек - {futureCard}; себеп - {reasonCard}; мүмкүн болгон натыйжа - {outcomeCard}. Ар бир картанын маанисин түшүндүрүп, алардын биргелешкен маанисин да түшүндүрүңүз.',
    'app_kk.arb': 'Сіз тәжірибелі таро оқушысыз. Пайдаланушы {userName} сұрайды: "{userQuestion}". "5 карта" жайылымы арқылы жауап беріңіз. Карталар келесі ретпен берілген: өткен - {pastCard}; қазіргі - {presentCard}; болашақ - {futureCard}; себеп - {reasonCard}; мүмкін нәтиже - {outcomeCard}. Әрбір картаның мағынасын түсіндіріп, олардың біріккен мағынасын да түсіндіріңіз.',
    'app_ru_RU.arb': 'Ты опытный таролог. Пользователь {userName} спрашивает: "{userQuestion}". Ответь через расклад "5 карт". Карты даны по порядку: прошлое - {pastCard}; настоящее - {presentCard}; будущее - {futureCard}; причина - {reasonCard}; возможный итог - {outcomeCard}. Объясни значение каждой карты и их общий смысл.',
    'app_mn.arb': 'Та туршлагатай тарологч байна. Хэрэглэгч {userName} асууж байна: "{userQuestion}". "5 хөзөр" тархалтаар хариулна уу. Хөзрүүд дарааллаар өгөгдсөн: өнгөрсөн - {pastCard}; одоо - {presentCard}; ирээдүй - {futureCard}; шалтгаан - {reasonCard}; боломжит үр дүн - {outcomeCard}. Хөзөр бүрийн утгыг тайлбарлаж, тэдгээрийн нийлсэн утга ямар байгааг тодорхойлно уу.',
    'app_uk.arb': 'Ти досвідчений таролог. Користувач {userName} запитує: "{userQuestion}". Відповідай через розклад "5 карт". Карти дано по порядку: минуле - {pastCard}; теперішнє - {presentCard}; майбутнє - {futureCard}; причина - {reasonCard}; можливий результат - {outcomeCard}. Поясни значення кожної карти та їх спільний сенс.',
    'app_hu_HU.arb': 'Ön tapasztalt tarotolvasó. A felhasználó {userName} ezt kérdezi: "{userQuestion}". Válaszoljon az "5 lapos" kirakással. A lapok sorrendben vannak megadva: múlt - {pastCard}; jelen - {presentCard}; jövő - {futureCard}; ok - {reasonCard}; lehetséges kimenetel - {outcomeCard}. Magyarázza el minden egyes lap jelentését, és világítsa meg azok együttes jelentését.'
}

def fix_translations():
    l10n_dir = 'lib/l10n'
    
    for lang_file in languages:
        file_path = os.path.join(l10n_dir, lang_file)
        
        if not os.path.exists(file_path):
            print(f"⚠️  Файл {lang_file} не найден, пропускаем")
            continue
            
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                data = json.load(f)
            
            # Проверяем, есть ли ключ и содержит ли он русский текст
            if 'five_cards_screen_prompt' in data:
                current_value = data['five_cards_screen_prompt']
                if any(ord(char) > 127 for char in current_value) and any(char in 'а-яё' for char in current_value.lower()):
                    # Заменяем на правильный перевод
                    data['five_cards_screen_prompt'] = translations[lang_file]
                    
                    # Сохраняем файл
                    with open(file_path, 'w', encoding='utf-8') as f:
                        json.dump(data, f, ensure_ascii=False, indent=2)
                    
                    print(f"✅ Исправлен {lang_file}")
                else:
                    print(f"ℹ️  {lang_file} уже содержит правильный перевод")
            else:
                print(f"⚠️  Ключ 'five_cards_screen_prompt' не найден в {lang_file}")
                
        except Exception as e:
            print(f"❌ Ошибка при обработке {lang_file}: {e}")

if __name__ == "__main__":
    print("🔧 Исправление переводов для следующих 10 языков...")
    fix_translations()
    print("✨ Готово!") 