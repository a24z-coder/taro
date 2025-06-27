import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationSettingsScreen> createState() => _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState extends State<NotificationSettingsScreen> {
  String _frequency = 'daily';
  String _time = 'morning';
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _frequency = prefs.getString('notification_frequency') ?? 'daily';
      _time = prefs.getString('notification_time') ?? 'morning';
      _loading = false;
    });
  }

  Future<void> _saveSettings() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('notification_frequency', _frequency);
    await prefs.setString('notification_time', _time);
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Настройки сохранены')),
      );
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final accentColor = const Color(0xFFDBC195);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Настройки уведомлений', style: TextStyle(color: Colors.white)),
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
          if (_loading)
            const Center(child: CircularProgressIndicator())
          else
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Как часто вы хотите получать уведомление о карте дня?',
                      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    Theme(
                      data: Theme.of(context).copyWith(
                        unselectedWidgetColor: Colors.white,
                      ),
                      child: RadioListTile<String>(
                        value: 'daily',
                        groupValue: _frequency,
                        onChanged: (v) => setState(() => _frequency = v!),
                        activeColor: accentColor,
                        title: const Text('Каждый день', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Theme(
                      data: Theme.of(context).copyWith(
                        unselectedWidgetColor: Colors.white,
                      ),
                      child: RadioListTile<String>(
                        value: '3days',
                        groupValue: _frequency,
                        onChanged: (v) => setState(() => _frequency = v!),
                        activeColor: accentColor,
                        title: const Text('Раз в три дня', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Theme(
                      data: Theme.of(context).copyWith(
                        unselectedWidgetColor: Colors.white,
                      ),
                      child: RadioListTile<String>(
                        value: 'weekly',
                        groupValue: _frequency,
                        onChanged: (v) => setState(() => _frequency = v!),
                        activeColor: accentColor,
                        title: const Text('Раз в неделю', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      'В какое время суток?',
                      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    Theme(
                      data: Theme.of(context).copyWith(
                        unselectedWidgetColor: Colors.white,
                      ),
                      child: RadioListTile<String>(
                        value: 'morning',
                        groupValue: _time,
                        onChanged: (v) => setState(() => _time = v!),
                        activeColor: accentColor,
                        title: const Text('Утром', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Theme(
                      data: Theme.of(context).copyWith(
                        unselectedWidgetColor: Colors.white,
                      ),
                      child: RadioListTile<String>(
                        value: 'day',
                        groupValue: _time,
                        onChanged: (v) => setState(() => _time = v!),
                        activeColor: accentColor,
                        title: const Text('Днем', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Theme(
                      data: Theme.of(context).copyWith(
                        unselectedWidgetColor: Colors.white,
                      ),
                      child: RadioListTile<String>(
                        value: 'evening',
                        groupValue: _time,
                        onChanged: (v) => setState(() => _time = v!),
                        activeColor: accentColor,
                        title: const Text('Вечером', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: accentColor,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        ),
                        onPressed: _saveSettings,
                        child: const Text('Сохранить', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
} 