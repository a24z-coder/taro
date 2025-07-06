import 'package:flutter/material.dart';
import 'package:tarot_ai/services/translation_service.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final TranslationService _translationService = TranslationService();
  String _testResult = '';
  String _translationResult = '';
  bool _isLoading = false;
  bool _isTranslating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Тест OpenAI'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/main-2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                color: Colors.black.withOpacity(0.8),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const Text(
                        'Тест подключения к OpenAI',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: _isLoading ? null : _testConnection,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFDBC195),
                          foregroundColor: Colors.black,
                        ),
                        child: _isLoading
                            ? const CircularProgressIndicator()
                            : const Text('Тест подключения'),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          _testResult.isEmpty ? 'Результат теста появится здесь' : _testResult,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Card(
                color: Colors.black.withOpacity(0.8),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const Text(
                        'Тест перевода',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: _isTranslating ? null : _testTranslation,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFDBC195),
                          foregroundColor: Colors.black,
                        ),
                        child: _isTranslating
                            ? const CircularProgressIndicator()
                            : const Text('Тест перевода'),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          _translationResult.isEmpty ? 'Результат перевода появится здесь' : _translationResult,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _testConnection() async {
    setState(() {
      _isLoading = true;
      _testResult = 'Тестируем подключение...';
    });

    try {
      final result = await _translationService.testConnection();
      setState(() {
        _testResult = '✅ Успешно!\n\n${result.toString()}';
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _testResult = '❌ Ошибка:\n$e';
        _isLoading = false;
      });
    }
  }

  Future<void> _testTranslation() async {
    setState(() {
      _isTranslating = true;
      _translationResult = 'Тестируем перевод...';
    });

    try {
      final result = await _translationService.testSimpleTranslation();
      setState(() {
        _translationResult = '✅ Перевод:\n$result';
        _isTranslating = false;
      });
    } catch (e) {
      setState(() {
        _translationResult = '❌ Ошибка перевода:\n$e';
        _isTranslating = false;
      });
    }
  }
} 