import json
import os

def check_missing_keys():
    """Проверяет .arb файлы на отсутствие ключей fun_share_button и fun_new_spread_button"""
    l10n_dir = 'lib/l10n'
    
    if not os.path.exists(l10n_dir):
        print(f"Директория {l10n_dir} не найдена!")
        return
    
    missing_keys_files = []
    missing_share_only = []
    missing_new_spread_only = []
    
    # Получаем список всех .arb файлов
    arb_files = [f for f in os.listdir(l10n_dir) if f.endswith('.arb')]
    
    print(f"Проверяю {len(arb_files)} .arb файлов...\n")
    
    for filename in sorted(arb_files):
        file_path = os.path.join(l10n_dir, filename)
        
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                data = json.load(f)
            
            has_share = 'fun_share_button' in data
            has_new_spread = 'fun_new_spread_button' in data
            
            if not has_share and not has_new_spread:
                missing_keys_files.append(filename)
                print(f"❌ {filename} - отсутствуют ОБА ключа")
            elif not has_share:
                missing_share_only.append(filename)
                print(f"⚠️  {filename} - отсутствует fun_share_button")
            elif not has_new_spread:
                missing_new_spread_only.append(filename)
                print(f"⚠️  {filename} - отсутствует fun_new_spread_button")
            else:
                print(f"✅ {filename} - все ключи присутствуют")
                
        except Exception as e:
            print(f"❌ {filename} - ошибка чтения: {e}")
    
    print(f"\n{'='*50}")
    print("ИТОГИ:")
    print(f"{'='*50}")
    
    if missing_keys_files:
        print(f"\n📋 Файлы с ОТСУТСТВУЮЩИМИ ОБОИМИ ключами ({len(missing_keys_files)}):")
        for filename in missing_keys_files:
            print(f"  - {filename}")
    
    if missing_share_only:
        print(f"\n📋 Файлы с отсутствующим fun_share_button ({len(missing_share_only)}):")
        for filename in missing_share_only:
            print(f"  - {filename}")
    
    if missing_new_spread_only:
        print(f"\n📋 Файлы с отсутствующим fun_new_spread_button ({len(missing_new_spread_only)}):")
        for filename in missing_new_spread_only:
            print(f"  - {filename}")
    
    if not missing_keys_files and not missing_share_only and not missing_new_spread_only:
        print("\n🎉 Все файлы содержат необходимые ключи!")
    
    total_missing = len(missing_keys_files) + len(missing_share_only) + len(missing_new_spread_only)
    print(f"\n📊 Всего файлов с проблемами: {total_missing}")

if __name__ == "__main__":
    check_missing_keys() 