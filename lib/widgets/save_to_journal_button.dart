import 'package:flutter/material.dart';
import 'package:tarot_ai/models/journal_entry.dart';
import 'package:tarot_ai/services/journal_service.dart';
import 'package:tarot_ai/utils/font_utils.dart';

class SaveToJournalButton extends StatefulWidget {
  final String spreadType;
  final String spreadKey;
  final List<String> cards;
  final Map<String, dynamic> spreadData;
  final String? spreadTitle;
  final String? spreadDescription;

  const SaveToJournalButton({
    Key? key,
    required this.spreadType,
    required this.spreadKey,
    required this.cards,
    required this.spreadData,
    this.spreadTitle,
    this.spreadDescription,
  }) : super(key: key);

  @override
  State<SaveToJournalButton> createState() => _SaveToJournalButtonState();
}

class _SaveToJournalButtonState extends State<SaveToJournalButton> {
  bool _isSaving = false;

  @override
  Widget build(BuildContext context) {
    final langCode = Localizations.localeOf(context).toLanguageTag();
    final accentColor = const Color(0xFFDBC195);

    return ElevatedButton.icon(
      onPressed: _isSaving ? null : _saveToJournal,
      icon: _isSaving
          ? const SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
              ),
            )
          : const Icon(Icons.book_outlined),
      label: Text(
        _isSaving ? 'Сохранение...' : 'Сохранить в дневник',
        style: bodyStyleForLang(langCode, 14, color: Colors.black),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: accentColor,
        foregroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  Future<void> _saveToJournal() async {
    setState(() {
      _isSaving = true;
    });

    try {
      // Создаем запись дневника
      final entry = JournalEntry(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        date: DateTime.now(),
        spreadKey: widget.spreadKey,
        spreadType: widget.spreadType,
        cards: widget.cards,
        userNote: '',
        spreadData: widget.spreadData,
        spreadTitle: widget.spreadTitle,
        spreadDescription: widget.spreadDescription,
      );

      // Сохраняем запись в дневник
      await JournalService().addEntry(entry);

      // Показываем уведомление об успешном сохранении
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Расклад сохранен в дневник'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Ошибка сохранения: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isSaving = false;
        });
      }
    }
  }
} 