#!/usr/bin/env python3
import os
import re

# Файлы для финальной обработки
files = [
    'app_bg.arb',
    'app_mn_MN.arb',
    'app_mk.arb',
    'app_mk_MK.arb',
    'app_ru.arb',
    'app_ky_KG.arb',
    'app_sr.arb',
    'app_ky.arb',
    'app_ru_RU.arb',
    'app_kk.arb',
    'app_mn.arb',
    'app_uk.arb',
    'app_hu_HU.arb',
]

# Переводы для каждого языка (те же, что и ранее)
translations = {
    'app_bg.arb': 'Ти си опитен таролог. Потребителят {userName} пита: "{userQuestion}". Отговори чрез разбор "5 карти". Картите са подредени по ред: минало - {pastCard}; настояще - {presentCard}; бъдеще - {futureCard}; причина - {reasonCard}; възможен изход - {outcomeCard}. Обясни значението на всяка карта и тяхното комбинирано значение.',
    'app_mn_MN.arb': 'Та туршлагатай тарологч байна. Хэрэглэгч {userName} асууж байна: "{userQuestion}". "5 хөзөр" тархалтаар хариулна уу. Хөзрүүд дарааллаар өгөгдсөн: өнгөрсөн - {pastCard}; одоо - {presentCard}; ирээдүй - {futureCard}; шалтгаан - {reasonCard}; боломжит үр дүн - {outcomeCard}. Хөзөр бүрийн утгыг тайлбарлаж, тэдгээрийн нийлсэн утга ямар байгааг тодорхойлно уу.',
    'app_mk.arb': 'Вие сте искусен тарот читач. Корисникот {userName} прашува: "{userQuestion}". Одговорете преку распоред "5 карти". Картите се дадени по ред: минато - {pastCard}; сегашност - {presentCard}; иднина - {futureCard}; причина - {reasonCard}; можен исход - {outcomeCard}. Објаснете го значењето на секоја карта и нивното комбинирано значење.',
    'app_mk_MK.arb': 'Вие сте искусен тарот читач. Корисникот {userName} прашува: "{userQuestion}". Одговорете преку распоред "5 карти". Картите се дадени по ред: минато - {pastCard}; сегашност - {presentCard}; иднина - {futureCard}; причина - {reasonCard}; можен исход - {outcomeCard}. Објаснете го значењето на секоја карта и нивното комбинирано значење.',
    'app_ru.arb': 'Ты опытный таролог. Пользователь {userName} спрашивает: "{userQuestion}". Ответь через расклад "5 карт". Карты даны по порядку: прошлое - {pastCard}; настоящее - {presentCard}; будущее - {futureCard}; причина - {reasonCard}; возможный итог - {outcomeCard}. Объясни значение каждой карты и их общий смысл.',
    'app_ky_KG.arb': 'Сиз тажрыйбалуу таро окуучусуз. Колдонуучу {userName} сурайт: "{userQuestion}". "5 карта" жайылышы аркылуу жооп бериңиз. Карталар төмөнкү тартипте берилген: өткөн - {pastCard}; азыркы - {presentCard}; келечек - {futureCard}; себеп - {reasonCard}; мүмкүн болгон натыйжа - {outcomeCard}. Ар бир картанын маанисин түшүндүрүп, алардын биргелешкен маанисин да түшүндүрүңүз.',
    'app_sr.arb': 'Ви сте искусан читалац тарота. Корисник {userName} пита: "{userQuestion}". Одговорите преко распореда "5 карата". Карте су дате по реду: прошлост - {pastCard}; садашњост - {presentCard}; будућност - {futureCard}; разлог - {reasonCard}; могући исход - {outcomeCard}. Објасните значење сваке карте и њихово комбиновано значење.',
    'app_ky.arb': 'Сиз тажрыйбалуу таро окуучусуз. Колдонуучу {userName} сурайт: "{userQuestion}". "5 карта" жайылышы аркылуу жооп бериңиз. Карталар төмөнкү тартипте берилген: өткөн - {pastCard}; азыркы - {presentCard}; келечек - {futureCard}; себеп - {reasonCard}; мүмкүн болгон натыйжа - {outcomeCard}. Ар бир картанын маанисин түшүндүрүп, алардын биргелешкен маанисин да түшүндүрүңүз.',
    'app_ru_RU.arb': 'Ты опытный таролог. Пользователь {userName} спрашивает: "{userQuestion}". Ответь через расклад "5 карт". Карты даны по порядку: прошлое - {pastCard}; настоящее - {presentCard}; будущее - {futureCard}; причина - {reasonCard}; возможный итог - {outcomeCard}. Объясни значение каждой карты и их общий смысл.',
    'app_kk.arb': 'Сіз тәжірибелі таро оқушысыз. Пайдаланушы {userName} сұрайды: "{userQuestion}". "5 карта" жайылымы арқылы жауап беріңіз. Карталар келесі ретпен берілген: өткен - {pastCard}; қазіргі - {presentCard}; болашақ - {futureCard}; себеп - {reasonCard}; мүмкін нәтиже - {outcomeCard}. Әрбір картаның мағынасын түсіндіріп, олардың біріккен мағынасын да түсіндіріңіз.',
    'app_mn.arb': 'Та туршлагатай тарологч байна. Хэрэглэгч {userName} асууж байна: "{userQuestion}". "5 хөзөр" тархалтаар хариулна уу. Хөзрүүд дарааллаар өгөгдсөн: өнгөрсөн - {pastCard}; одоо - {presentCard}; ирээдүй - {futureCard}; шалтгаан - {reasonCard}; боломжит үр дүн - {outcomeCard}. Хөзөр бүрийн утгыг тайлбарлаж, тэдгээрийн нийлсэн утга ямар байгааг тодорхойлно уу.',
    'app_uk.arb': 'Ти досвідчений таролог. Користувач {userName} запитує: "{userQuestion}". Відповідай через розклад "5 карт". Карти дано по порядку: минуле - {pastCard}; теперішнє - {presentCard}; майбутнє - {futureCard}; причина - {reasonCard}; можливий результат - {outcomeCard}. Поясни значення кожної карти та їх спільний сенс.',
    'app_hu_HU.arb': 'Ön tapasztalt tarotolvasó. A felhasználó {userName} ezt kérdezi: "{userQuestion}". Válaszoljon az "5 lapos" kirakással. A lapok sorrendben vannak megadva: múlt - {pastCard}; jelen - {presentCard}; jövő - {futureCard}; ok - {reasonCard}; lehetséges kimenetel - {outcomeCard}. Magyarázza el minden egyes lap jelentését, és világítsa meg azok együttes jelentését.'
}

l10n_dir = 'lib/l10n'

# Регулярка для поиска ключа (учитывает любые кавычки, пробелы, переносы)
key_re = re.compile(r'(\s*"five_cards_screen_prompt"\s*:\s*)("""|"|\')(.*?)("""|"|\')([,\n])', re.DOTALL)

def fix_file(filename, translation):
    path = os.path.join(l10n_dir, filename)
    if not os.path.exists(path):
        print(f"⚠️  Файл {filename} не найден, пропускаем")
        return
    with open(path, 'r', encoding='utf-8') as f:
        content = f.read()
    # Заменяем только значение ключа
    new_content, n = key_re.subn(r'\1"' + translation.replace('"', '\\"') + r'"\5', content)
    if n > 0:
        with open(path, 'w', encoding='utf-8') as f:
            f.write(new_content)
        print(f"✅ Исправлен {filename}")
    else:
        print(f"ℹ️  {filename}: ключ не найден или уже исправлен")

if __name__ == "__main__":
    print("🔧 Финальная обработка переводов...")
    for fname in files:
        fix_file(fname, translations[fname])
    print("✨ Готово!") 