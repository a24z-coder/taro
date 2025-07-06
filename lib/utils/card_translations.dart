import 'dart:math';
import '../l10n/app_localizations.dart';

class CardTranslations {
  static final List<String> cards = [
    'The Fool',
    'The Magician',
    'The High Priestess',
    'The Empress',
    'The Emperor',
    'The Hierophant',
    'The Lovers',
    'The Chariot',
    'Strength',
    'The Hermit',
    'Wheel of Fortune',
    'Justice',
    'The Hanged Man',
    'Death',
    'Temperance',
    'The Devil',
    'The Tower',
    'The Star',
    'The Moon',
    'The Sun',
    'Judgement',
    'The World',
    // Minor Arcana
    // Wands
    'Ace of Wands',
    'Two of Wands',
    'Three of Wands',
    'Four of Wands',
    'Five of Wands',
    'Six of Wands',
    'Seven of Wands',
    'Eight of Wands',
    'Nine of Wands',
    'Ten of Wands',
    'Page of Wands',
    'Knight of Wands',
    'Queen of Wands',
    'King of Wands',
    // Cups
    'Ace of Cups',
    'Two of Cups',
    'Three of Cups',
    'Four of Cups',
    'Five of Cups',
    'Six of Cups',
    'Seven of Cups',
    'Eight of Cups',
    'Nine of Cups',
    'Ten of Cups',
    'Page of Cups',
    'Knight of Cups',
    'Queen of Cups',
    'King of Cups',
    // Swords
    'Ace of Swords',
    'Two of Swords',
    'Three of Swords',
    'Four of Swords',
    'Five of Swords',
    'Six of Swords',
    'Seven of Swords',
    'Eight of Swords',
    'Nine of Swords',
    'Ten of Swords',
    'Page of Swords',
    'Knight of Swords',
    'Queen of Swords',
    'King of Swords',
    // Pentacles
    'Ace of Pentacles',
    'Two of Pentacles',
    'Three of Pentacles',
    'Four of Pentacles',
    'Five of Pentacles',
    'Six of Pentacles',
    'Seven of Pentacles',
    'Eight of Pentacles',
    'Nine of Pentacles',
    'Ten of Pentacles',
    'Page of Pentacles',
    'Knight of Pentacles',
    'Queen of Pentacles',
    'King of Pentacles',
  ];

  static final Map<String, String> cardToFileMap = {
    'The Fool': 'the fool.jpg',
    'The Magician': 'the magician.jpg',
    'The High Priestess': 'the high priestess.jpg',
    'The Empress': 'the empress.jpg',
    'The Emperor': 'the emperor.jpg',
    'The Hierophant': 'the hierophant.jpg',
    'The Lovers': 'the lovers.jpg',
    'The Chariot': 'the chariot.jpg',
    'Strength': 'strength.jpg',
    'The Hermit': 'the hermit.jpg',
    'Wheel of Fortune': 'wheel of fortune.jpg',
    'Justice': 'justice.jpg',
    'The Hanged Man': 'the hanged man.jpg',
    'Death': 'death.jpg',
    'Temperance': 'temperance.jpg',
    'The Devil': 'the devil.jpg',
    'The Tower': 'the tower.jpg',
    'The Star': 'the star.jpg',
    'The Moon': 'the moon.jpg',
    'The Sun': 'the sun.jpg',
    'Judgement': 'judgement.jpg',
    'The World': 'the world.jpg',
    'Ace of Wands': 'ace of wands.jpg',
    'Two of Wands': '2 of wands.jpg',
    'Three of Wands': '3 of wands.jpg',
    'Four of Wands': '4 of wands.jpg',
    'Five of Wands': '5 of wands.jpg',
    'Six of Wands': '6 of wands.jpg',
    'Seven of Wands': '7 of wands.jpg',
    'Eight of Wands': '8 of wands.jpg',
    'Nine of Wands': '9 of wands.jpg',
    'Ten of Wands': '10 of wands.jpg',
    'Page of Wands': 'page of wands.jpg',
    'Knight of Wands': 'knight of wands.jpg',
    'Queen of Wands': 'queen of wands.jpg',
    'King of Wands': 'king of wands.jpg',
    'Ace of Cups': 'ace of cups.jpg',
    'Two of Cups': '2 of cups.jpg',
    'Three of Cups': '3 of cups.jpg',
    'Four of Cups': '4 of cups.jpg',
    'Five of Cups': '5 of cups.jpg',
    'Six of Cups': '6 of cups.jpg',
    'Seven of Cups': '7 of cups.jpg',
    'Eight of Cups': '8 of cups.jpg',
    'Nine of Cups': '9 of cups.jpg',
    'Ten of Cups': '10 of cups.jpg',
    'Page of Cups': 'page of cups.jpg',
    'Knight of Cups': 'knight of cups.jpg',
    'Queen of Cups': 'queen of cups.jpg',
    'King of Cups': 'king of cups.jpg',
    'Ace of Swords': 'ace of swords.jpg',
    'Two of Swords': '2 of swords.jpg',
    'Three of Swords': '3 of swords.jpg',
    'Four of Swords': '4 of swords.jpg',
    'Five of Swords': '5 of swords.jpg',
    'Six of Swords': '6 of swords.jpg',
    'Seven of Swords': '7 of swords.jpg',
    'Eight of Swords': '8 of swords.jpg',
    'Nine of Swords': '9 of swords.jpg',
    'Ten of Swords': '10 of swords.jpg',
    'Page of Swords': 'page of swords.jpg',
    'Knight of Swords': 'knight of swords.jpg',
    'Queen of Swords': 'queen of swords.jpg',
    'King of Swords': 'king of swords.jpg',
    'Ace of Pentacles': 'ace of pentacles.jpg',
    'Two of Pentacles': '2 of pentacles.jpg',
    'Three of Pentacles': '3 of pentacles.jpg',
    'Four of Pentacles': '4 of pentacles.jpg',
    'Five of Pentacles': '5 of pentacles.jpg',
    'Six of Pentacles': '6 of pentacles.jpg',
    'Seven of Pentacles': '7 of pentacles.jpg',
    'Eight of Pentacles': '8 of pentacles.jpg',
    'Nine of Pentacles': '9 of pentacles.jpg',
    'Ten of Pentacles': '10 of pentacles.jpg',
    'Page of Pentacles': 'page of pentacles.jpg',
    'Knight of Pentacles': 'knight of pentacles.jpg',
    'Queen of Pentacles': 'queen of pentacles.jpg',
    'King of Pentacles': 'king of pentacles.jpg',
  };

  // Маппинг английских названий на ключи локализации
  static final Map<String, String> cardToLocalizationKey = {
    'The Fool': 'card_name_the_fool',
    'The Magician': 'card_name_the_magician',
    'The High Priestess': 'card_name_the_high_priestess',
    'The Empress': 'card_name_the_empress',
    'The Emperor': 'card_name_the_emperor',
    'The Hierophant': 'card_name_the_hierophant',
    'The Lovers': 'card_name_the_lovers',
    'The Chariot': 'card_name_the_chariot',
    'Strength': 'card_name_strength',
    'The Hermit': 'card_name_the_hermit',
    'Wheel of Fortune': 'card_name_wheel_of_fortune',
    'Justice': 'card_name_justice',
    'The Hanged Man': 'card_name_the_hanged_man',
    'Death': 'card_name_death',
    'Temperance': 'card_name_temperance',
    'The Devil': 'card_name_the_devil',
    'The Tower': 'card_name_the_tower',
    'The Star': 'card_name_the_star',
    'The Moon': 'card_name_the_moon',
    'The Sun': 'card_name_the_sun',
    'Judgement': 'card_name_judgement',
    'The World': 'card_name_the_world',
    'Ace of Wands': 'card_name_ace_of_wands',
    'Two of Wands': 'card_name_two_of_wands',
    'Three of Wands': 'card_name_three_of_wands',
    'Four of Wands': 'card_name_four_of_wands',
    'Five of Wands': 'card_name_five_of_wands',
    'Six of Wands': 'card_name_six_of_wands',
    'Seven of Wands': 'card_name_seven_of_wands',
    'Eight of Wands': 'card_name_eight_of_wands',
    'Nine of Wands': 'card_name_nine_of_wands',
    'Ten of Wands': 'card_name_ten_of_wands',
    'Page of Wands': 'card_name_page_of_wands',
    'Knight of Wands': 'card_name_knight_of_wands',
    'Queen of Wands': 'card_name_queen_of_wands',
    'King of Wands': 'card_name_king_of_wands',
    'Ace of Cups': 'card_name_ace_of_cups',
    'Two of Cups': 'card_name_two_of_cups',
    'Three of Cups': 'card_name_three_of_cups',
    'Four of Cups': 'card_name_four_of_cups',
    'Five of Cups': 'card_name_five_of_cups',
    'Six of Cups': 'card_name_six_of_cups',
    'Seven of Cups': 'card_name_seven_of_cups',
    'Eight of Cups': 'card_name_eight_of_cups',
    'Nine of Cups': 'card_name_nine_of_cups',
    'Ten of Cups': 'card_name_ten_of_cups',
    'Page of Cups': 'card_name_page_of_cups',
    'Knight of Cups': 'card_name_knight_of_cups',
    'Queen of Cups': 'card_name_queen_of_cups',
    'King of Cups': 'card_name_king_of_cups',
    'Ace of Swords': 'card_name_ace_of_swords',
    'Two of Swords': 'card_name_two_of_swords',
    'Three of Swords': 'card_name_three_of_swords',
    'Four of Swords': 'card_name_four_of_swords',
    'Five of Swords': 'card_name_five_of_swords',
    'Six of Swords': 'card_name_six_of_swords',
    'Seven of Swords': 'card_name_seven_of_swords',
    'Eight of Swords': 'card_name_eight_of_swords',
    'Nine of Swords': 'card_name_nine_of_swords',
    'Ten of Swords': 'card_name_ten_of_swords',
    'Page of Swords': 'card_name_page_of_swords',
    'Knight of Swords': 'card_name_knight_of_swords',
    'Queen of Swords': 'card_name_queen_of_swords',
    'King of Swords': 'card_name_king_of_swords',
    'Ace of Pentacles': 'card_name_ace_of_pentacles',
    'Two of Pentacles': 'card_name_two_of_pentacles',
    'Three of Pentacles': 'card_name_three_of_pentacles',
    'Four of Pentacles': 'card_name_four_of_pentacles',
    'Five of Pentacles': 'card_name_five_of_pentacles',
    'Six of Pentacles': 'card_name_six_of_pentacles',
    'Seven of Pentacles': 'card_name_seven_of_pentacles',
    'Eight of Pentacles': 'card_name_eight_of_pentacles',
    'Nine of Pentacles': 'card_name_nine_of_pentacles',
    'Ten of Pentacles': 'card_name_ten_of_pentacles',
    'Page of Pentacles': 'card_name_page_of_pentacles',
    'Knight of Pentacles': 'card_name_knight_of_pentacles',
    'Queen of Pentacles': 'card_name_queen_of_pentacles',
    'King of Pentacles': 'card_name_king_of_pentacles',
  };

  static String getRandomCard() {
    final _random = Random();
    return cards[_random.nextInt(cards.length)];
  }

  // Функция для получения переведенного названия карты
  static String getTranslatedCardName(String englishName, AppLocalizations l10n) {
    final key = cardToLocalizationKey[englishName];
    if (key != null) {
      // Используем рефлексию для получения значения по ключу
      switch (key) {
        case 'card_name_the_fool': return l10n.card_name_the_fool;
        case 'card_name_the_magician': return l10n.card_name_the_magician;
        case 'card_name_the_high_priestess': return l10n.card_name_the_high_priestess;
        case 'card_name_the_empress': return l10n.card_name_the_empress;
        case 'card_name_the_emperor': return l10n.card_name_the_emperor;
        case 'card_name_the_hierophant': return l10n.card_name_the_hierophant;
        case 'card_name_the_lovers': return l10n.card_name_the_lovers;
        case 'card_name_the_chariot': return l10n.card_name_the_chariot;
        case 'card_name_strength': return l10n.card_name_strength;
        case 'card_name_the_hermit': return l10n.card_name_the_hermit;
        case 'card_name_wheel_of_fortune': return l10n.card_name_wheel_of_fortune;
        case 'card_name_justice': return l10n.card_name_justice;
        case 'card_name_the_hanged_man': return l10n.card_name_the_hanged_man;
        case 'card_name_death': return l10n.card_name_death;
        case 'card_name_temperance': return l10n.card_name_temperance;
        case 'card_name_the_devil': return l10n.card_name_the_devil;
        case 'card_name_the_tower': return l10n.card_name_the_tower;
        case 'card_name_the_star': return l10n.card_name_the_star;
        case 'card_name_the_moon': return l10n.card_name_the_moon;
        case 'card_name_the_sun': return l10n.card_name_the_sun;
        case 'card_name_judgement': return l10n.card_name_judgement;
        case 'card_name_the_world': return l10n.card_name_the_world;
        case 'card_name_ace_of_wands': return l10n.card_name_ace_of_wands;
        case 'card_name_two_of_wands': return l10n.card_name_two_of_wands;
        case 'card_name_three_of_wands': return l10n.card_name_three_of_wands;
        case 'card_name_four_of_wands': return l10n.card_name_four_of_wands;
        case 'card_name_five_of_wands': return l10n.card_name_five_of_wands;
        case 'card_name_six_of_wands': return l10n.card_name_six_of_wands;
        case 'card_name_seven_of_wands': return l10n.card_name_seven_of_wands;
        case 'card_name_eight_of_wands': return l10n.card_name_eight_of_wands;
        case 'card_name_nine_of_wands': return l10n.card_name_nine_of_wands;
        case 'card_name_ten_of_wands': return l10n.card_name_ten_of_wands;
        case 'card_name_page_of_wands': return l10n.card_name_page_of_wands;
        case 'card_name_knight_of_wands': return l10n.card_name_knight_of_wands;
        case 'card_name_queen_of_wands': return l10n.card_name_queen_of_wands;
        case 'card_name_king_of_wands': return l10n.card_name_king_of_wands;
        case 'card_name_ace_of_cups': return l10n.card_name_ace_of_cups;
        case 'card_name_two_of_cups': return l10n.card_name_two_of_cups;
        case 'card_name_three_of_cups': return l10n.card_name_three_of_cups;
        case 'card_name_four_of_cups': return l10n.card_name_four_of_cups;
        case 'card_name_five_of_cups': return l10n.card_name_five_of_cups;
        case 'card_name_six_of_cups': return l10n.card_name_six_of_cups;
        case 'card_name_seven_of_cups': return l10n.card_name_seven_of_cups;
        case 'card_name_eight_of_cups': return l10n.card_name_eight_of_cups;
        case 'card_name_nine_of_cups': return l10n.card_name_nine_of_cups;
        case 'card_name_ten_of_cups': return l10n.card_name_ten_of_cups;
        case 'card_name_page_of_cups': return l10n.card_name_page_of_cups;
        case 'card_name_knight_of_cups': return l10n.card_name_knight_of_cups;
        case 'card_name_queen_of_cups': return l10n.card_name_queen_of_cups;
        case 'card_name_king_of_cups': return l10n.card_name_king_of_cups;
        case 'card_name_ace_of_swords': return l10n.card_name_ace_of_swords;
        case 'card_name_two_of_swords': return l10n.card_name_two_of_swords;
        case 'card_name_three_of_swords': return l10n.card_name_three_of_swords;
        case 'card_name_four_of_swords': return l10n.card_name_four_of_swords;
        case 'card_name_five_of_swords': return l10n.card_name_five_of_swords;
        case 'card_name_six_of_swords': return l10n.card_name_six_of_swords;
        case 'card_name_seven_of_swords': return l10n.card_name_seven_of_swords;
        case 'card_name_eight_of_swords': return l10n.card_name_eight_of_swords;
        case 'card_name_nine_of_swords': return l10n.card_name_nine_of_swords;
        case 'card_name_ten_of_swords': return l10n.card_name_ten_of_swords;
        case 'card_name_page_of_swords': return l10n.card_name_page_of_swords;
        case 'card_name_knight_of_swords': return l10n.card_name_knight_of_swords;
        case 'card_name_queen_of_swords': return l10n.card_name_queen_of_swords;
        case 'card_name_king_of_swords': return l10n.card_name_king_of_swords;
        case 'card_name_ace_of_pentacles': return l10n.card_name_ace_of_pentacles;
        case 'card_name_two_of_pentacles': return l10n.card_name_two_of_pentacles;
        case 'card_name_three_of_pentacles': return l10n.card_name_three_of_pentacles;
        case 'card_name_four_of_pentacles': return l10n.card_name_four_of_pentacles;
        case 'card_name_five_of_pentacles': return l10n.card_name_five_of_pentacles;
        case 'card_name_six_of_pentacles': return l10n.card_name_six_of_pentacles;
        case 'card_name_seven_of_pentacles': return l10n.card_name_seven_of_pentacles;
        case 'card_name_eight_of_pentacles': return l10n.card_name_eight_of_pentacles;
        case 'card_name_nine_of_pentacles': return l10n.card_name_nine_of_pentacles;
        case 'card_name_ten_of_pentacles': return l10n.card_name_ten_of_pentacles;
        case 'card_name_page_of_pentacles': return l10n.card_name_page_of_pentacles;
        case 'card_name_knight_of_pentacles': return l10n.card_name_knight_of_pentacles;
        case 'card_name_queen_of_pentacles': return l10n.card_name_queen_of_pentacles;
        case 'card_name_king_of_pentacles': return l10n.card_name_king_of_pentacles;
        default: return englishName; // Возвращаем оригинальное название, если перевод не найден
      }
    }
    return englishName; // Возвращаем оригинальное название, если ключ не найден
  }

  static String getTranslation(String cardName, AppLocalizations l10n) {
    return getTranslatedCardName(cardName, l10n);
  }
} 