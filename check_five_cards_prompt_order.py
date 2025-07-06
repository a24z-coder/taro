import os
import re
import json

l10n_dir = 'lib/l10n'
key = 'five_cards_screen_prompt'
expected = ['userName','userQuestion','pastCard','presentCard','hiddenCard','adviceCard','outcomeCard']

files = [f for f in os.listdir(l10n_dir) if f.endswith('.arb')]
for filename in files:
    path = os.path.join(l10n_dir, filename)
    with open(path, encoding='utf-8') as f:
        try:
            data = json.load(f)
        except Exception as e:
            continue
    if key in data:
        ph = re.findall(r'\{(\w+)\}', data[key])
        if ph != expected:
            print(filename, ph) 