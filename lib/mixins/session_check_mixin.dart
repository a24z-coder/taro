import 'package:flutter/material.dart';
import 'package:tarot_ai/services/journal_service.dart';
import 'package:tarot_ai/widgets/session_completed_dialog.dart';

mixin SessionCheckMixin<T extends StatefulWidget> on State<T> {
  /// Проверка сессии и показ диалога при необходимости
  Future<void> checkSession() async {
    try {
      final journalService = JournalService();
      final progress = await journalService.getCurrentSessionProgress();
      
      if (progress >= 7 && mounted) {
        debugPrint('[${widget.runtimeType}] Session completed, showing dialog');
        await showSessionCompletedDialog();
      }
    } catch (e) {
      debugPrint('[${widget.runtimeType}] Error checking session: $e');
    }
  }

  /// Показ диалога о завершении сессии
  Future<void> showSessionCompletedDialog() async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => SessionCompletedDialog(
        onViewAnalysis: () {
          Navigator.of(context).pop(); // Закрываем диалог
          Navigator.of(context).pushNamed('/journal'); // Переходим в журнал
        },
        onReset: () async {
          Navigator.of(context).pop(); // Закрываем диалог
          await JournalService().resetCurrentSession(); // Сбрасываем сессию
          setState(() {}); // Обновляем UI
        },
      ),
    );
  }
} 