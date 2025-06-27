import 'package:flutter/material.dart';
import 'package:tarot_ai/services/language_service.dart';
import 'package:tarot_ai/utils/font_utils.dart';
import 'card_detail_screen.dart';

const List<String> majorArcanaFilenames = [
  'death.jpg',
  'judgement.jpg',
  'justice.jpg',
  'strength.jpg',
  'temperance.jpg',
  'the chariot.jpg',
  'the devil.jpg',
  'the emperor.jpg',
  'the empress.jpg',
  'the fool.jpg',
  'the hanged man.jpg',
  'the hermit.jpg',
  'the hierophant.jpg',
  'the high priestess.jpg',
  'the lovers.jpg',
  'the magician.jpg',
  'the moon.jpg',
  'the star.jpg',
  'the sun.jpg',
  'the tower.jpg',
  'the world.jpg',
  'wheel of fortune.jpg',
];

const List<String> tabTitles = [
  'Главные арканы',
  'Жезлы',
  'Кубки',
  'Мечи',
  'Пентакли',
];

const List<IconData> tabIcons = [
  Icons.auto_awesome, // Главные арканы
  Icons.flash_on,     // Жезлы
  Icons.opacity,      // Кубки
  Icons.content_cut,  // Мечи
  Icons.circle,       // Пентакли
];

// Новый список главных арканов в нужном порядке и с правильными подписями
const List<Map<String, String>> majorArcana = [
  {'name': 'The Fool', 'file': 'the fool.jpg'},
  {'name': 'The Magician', 'file': 'the magician.jpg'},
  {'name': 'The High Priestess', 'file': 'the high priestess.jpg'},
  {'name': 'The Empress', 'file': 'the empress.jpg'},
  {'name': 'The Emperor', 'file': 'the emperor.jpg'},
  {'name': 'The Hierophant', 'file': 'the hierophant.jpg'},
  {'name': 'The Lovers', 'file': 'the lovers.jpg'},
  {'name': 'The Chariot', 'file': 'the chariot.jpg'},
  {'name': 'Strength', 'file': 'strength.jpg'},
  {'name': 'The Hermit', 'file': 'the hermit.jpg'},
  {'name': 'Wheel of Fortune', 'file': 'wheel of fortune.jpg'},
  {'name': 'Justice', 'file': 'justice.jpg'},
  {'name': 'The Hanged Man', 'file': 'the hanged man.jpg'},
  {'name': 'Death', 'file': 'death.jpg'},
  {'name': 'Temperance', 'file': 'temperance.jpg'},
  {'name': 'The Devil', 'file': 'the devil.jpg'},
  {'name': 'The Tower', 'file': 'the tower.jpg'},
  {'name': 'The Star', 'file': 'the star.jpg'},
  {'name': 'The Moon', 'file': 'the moon.jpg'},
  {'name': 'The Sun', 'file': 'the sun.jpg'},
  {'name': 'Judgement', 'file': 'judgement.jpg'},
  {'name': 'The World', 'file': 'the world.jpg'},
];

// Список карт Жезлов (Wands) в нужном порядке
const List<Map<String, String>> wandsCards = [
  {'name': 'Ace of Wands', 'file': 'ace of wands.jpg'},
  {'name': 'Two of Wands', 'file': '2 of wands.jpg'},
  {'name': 'Three of Wands', 'file': '3 of wands.jpg'},
  {'name': 'Four of Wands', 'file': '4 of wands.jpg'},
  {'name': 'Five of Wands', 'file': '5 of wands.jpg'},
  {'name': 'Six of Wands', 'file': '6 of wands.jpg'},
  {'name': 'Seven of Wands', 'file': '7 of wands.jpg'},
  {'name': 'Eight of Wands', 'file': '8 of wands.jpg'},
  {'name': 'Nine of Wands', 'file': '9 of wands.jpg'},
  {'name': 'Ten of Wands', 'file': '10 of wands.jpg'},
  {'name': 'Page of Wands', 'file': 'page of wands.jpg'},
  {'name': 'Knight of Wands', 'file': 'knight of wands.jpg'},
  {'name': 'Queen of Wands', 'file': 'queen of wands.jpg'},
  {'name': 'King of Wands', 'file': 'king of wands.jpg'},
];

// Список карт Кубков (Cups) в нужном порядке
const List<Map<String, String>> cupsCards = [
  {'name': 'Ace of Cups', 'file': 'ace of cups.jpg'},
  {'name': 'Two of Cups', 'file': '2 of cups.jpg'},
  {'name': 'Three of Cups', 'file': '3 of cups.jpg'},
  {'name': 'Four of Cups', 'file': '4 of cups.jpg'},
  {'name': 'Five of Cups', 'file': '5 of cups.jpg'},
  {'name': 'Six of Cups', 'file': '6 of cups.jpg'},
  {'name': 'Seven of Cups', 'file': '7 of cups.jpg'},
  {'name': 'Eight of Cups', 'file': '8 of cups.jpg'},
  {'name': 'Nine of Cups', 'file': '9 of cups.jpg'},
  {'name': 'Ten of Cups', 'file': '10 of cups.jpg'},
  {'name': 'Page of Cups', 'file': 'page of cups.jpg'},
  {'name': 'Knight of Cups', 'file': 'knight of cups.jpg'},
  {'name': 'Queen of Cups', 'file': 'queen of cups.jpg'},
  {'name': 'King of Cups', 'file': 'king of cups.jpg'},
];

// Список карт Мечей (Swords) в нужном порядке
const List<Map<String, String>> swordsCards = [
  {'name': 'Ace of Swords', 'file': 'ace of swords.jpg'},
  {'name': 'Two of Swords', 'file': '2 of swords.jpg'},
  {'name': 'Three of Swords', 'file': '3 of swords.jpg'},
  {'name': 'Four of Swords', 'file': '4 of swords.jpg'},
  {'name': 'Five of Swords', 'file': '5 of swords.jpg'},
  {'name': 'Six of Swords', 'file': '6 of swords.jpg'},
  {'name': 'Seven of Swords', 'file': '7 of swords.jpg'},
  {'name': 'Eight of Swords', 'file': '8 of swords.jpg'},
  {'name': 'Nine of Swords', 'file': '9 of swords.jpg'},
  {'name': 'Ten of Swords', 'file': '10 of swords.jpg'},
  {'name': 'Page of Swords', 'file': 'page of swords.jpg'},
  {'name': 'Knight of Swords', 'file': 'knight of swords.jpg'},
  {'name': 'Queen of Swords', 'file': 'queen of swords.jpg'},
  {'name': 'King of Swords', 'file': 'king of swords.jpg'},
];

// Список карт Пентаклей (Pentacles) в нужном порядке
const List<Map<String, String>> pentaclesCards = [
  {'name': 'Ace of Pentacles', 'file': 'ace of pentacles.jpg'},
  {'name': 'Two of Pentacles', 'file': '2 of pentacles.jpg'},
  {'name': 'Three of Pentacles', 'file': '3 of pentacles.jpg'},
  {'name': 'Four of Pentacles', 'file': '4 of pentacles.jpg'},
  {'name': 'Five of Pentacles', 'file': '5 of pentacles.jpg'},
  {'name': 'Six of Pentacles', 'file': '6 of pentacles.jpg'},
  {'name': 'Seven of Pentacles', 'file': '7 of pentacles.jpg'},
  {'name': 'Eight of Pentacles', 'file': '8 of pentacles.jpg'},
  {'name': 'Nine of Pentacles', 'file': '9 of pentacles.jpg'},
  {'name': 'Ten of Pentacles', 'file': '10 of pentacles.jpg'},
  {'name': 'Page of Pentacles', 'file': 'page of pentacles.jpg'},
  {'name': 'Knight of Pentacles', 'file': 'knight of pentacles.jpg'},
  {'name': 'Queen of Pentacles', 'file': 'queen of pentacles.jpg'},
  {'name': 'King of Pentacles', 'file': 'king of pentacles.jpg'},
];

String getCardDisplayName(String name) {
  if (name == 'The High Priestess') return 'Priestess';
  return name;
}

class CardMeaningsScreen extends StatefulWidget {
  const CardMeaningsScreen({Key? key}) : super(key: key);

  @override
  State<CardMeaningsScreen> createState() => _CardMeaningsScreenState();
}

class _CardMeaningsScreenState extends State<CardMeaningsScreen> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    final langCode = LanguageService().currentLanguageCode;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Значение карт', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/main-2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            top: true,
            bottom: false,
            child: ListView(
              padding: EdgeInsets.only(top: 8),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(tabTitles.length, (index) {
                    final iconFiles = [
                      'star.png',
                      'zhezl.png',
                      'cub.png',
                      'mech.png',
                      'pent.png',
                    ];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedTab = index;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: _selectedTab == index ? Colors.white24 : Colors.transparent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Image.asset(
                            'assets/images/' + iconFiles[index],
                            width: 32,
                            height: 32,
                            color: _selectedTab == index ? Colors.black : Colors.white,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 18),
                Builder(
                  builder: (context) {
                    List<Map<String, String>> cards;
                    switch (_selectedTab) {
                      case 0:
                        cards = majorArcana;
                        break;
                      case 1:
                        cards = wandsCards;
                        break;
                      case 2:
                        cards = cupsCards;
                        break;
                      case 3:
                        cards = swordsCards;
                        break;
                      case 4:
                        cards = pentaclesCards;
                        break;
                      default:
                        cards = majorArcana;
                    }
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 12,
                        childAspectRatio: 0.65,
                      ),
                      itemCount: cards.length,
                      itemBuilder: (context, index) {
                        final card = cards[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => CardDetailScreen(
                                  cardName: card['name']!,
                                  cardFile: card['file']!,
                                ),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(7),
                                  child: Image.asset(
                                    'assets/cards/${card['file']}',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                getCardDisplayName(card['name']!),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: headingStyleForLang(langCode, 12, color: Colors.white),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 