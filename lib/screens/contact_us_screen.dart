import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();
  bool _sending = false;

  @override
  void dispose() {
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  Future<void> _sendEmail() async {
    if (!_formKey.currentState!.validate()) return;
    final email = _emailController.text.trim();
    final message = _messageController.text.trim();
    // Отправка в Telegram
    try {
      const telegramToken = '7751865837:AAE1sD3PxhstEA4gKcUNUvcMrH6HFbhSP9M'; // <-- Вставьте сюда токен вашего бота
      const chatId = '367413583'; // <-- Вставьте сюда chat_id
      final telegramUrl =
          'https://api.telegram.org/bot$telegramToken/sendMessage';
      final telegramText =
          'Новое сообщение с формы TarotAI:\nEmail: $email\n$message';
      await http.post(
        Uri.parse(telegramUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'chat_id': chatId,
          'text': telegramText,
        }),
      );
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Ваше сообщение получено, спасибо!')),
        );
        _emailController.clear();
        _messageController.clear();
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Ошибка отправки сообщения')),
      );
    }
    // Здесь можно добавить отправку на email через backend/EmailJS/Firebase Functions
    // (почтовое приложение больше не открывается)
  }

  @override
  Widget build(BuildContext context) {
    final accentColor = const Color(0xFFDBC195);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Связаться с нами', style: TextStyle(color: Colors.white)),
        centerTitle: true,
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
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - MediaQuery.of(context).padding.bottom,
                ),
                child: IntrinsicHeight(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 12),
                        const Text(
                          'Напишите нам',
                          style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 24),
                        GestureDetector(
                          onTap: () async {
                            final mailto = Uri(scheme: 'mailto', path: 'info@tarotaiapp.com');
                            if (await canLaunchUrl(mailto)) {
                              await launchUrl(mailto);
                            }
                          },
                          child: Row(
                            children: [
                              Icon(Icons.email, color: accentColor),
                              const SizedBox(width: 8),
                              Text(
                                'info@tarotaiapp.com',
                                style: TextStyle(
                                  color: accentColor,
                                  fontSize: 16,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 32),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.13),
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: accentColor, width: 1.5),
                          ),
                          child: TextFormField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'Ваш e-mail',
                              hintStyle: TextStyle(color: Colors.white70),
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) return 'Введите e-mail';
                              if (!RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(value)) return 'Некорректный e-mail';
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.13),
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: accentColor, width: 1.5),
                          ),
                          child: TextFormField(
                            controller: _messageController,
                            maxLines: 6,
                            minLines: 3,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'Ваше сообщение',
                              hintStyle: TextStyle(color: Colors.white70),
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) return 'Введите сообщение';
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(height: 32),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: accentColor,
                              foregroundColor: Colors.black,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                            ),
                            onPressed: _sending ? null : _sendEmail,
                            child: const Text('Отправить', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
} 