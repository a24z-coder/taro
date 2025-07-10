import 'package:flutter/material.dart';
import 'dart:ui';

class MessageBubble extends StatelessWidget {
  final String text;
  final bool isUser;
  final EdgeInsetsGeometry? margin;
  final double userBubbleOpacity;
  final Widget? child;

  const MessageBubble({
    required this.text,
    this.isUser = false,
    this.margin,
    this.userBubbleOpacity = 1.0,
    this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = isUser
        ? Colors.white.withOpacity(0.15)
        : const Color(0xFF23272F).withOpacity(0.85);
    final textStyle = const TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'NotoSans');
    final align = isUser ? Alignment.centerRight : Alignment.centerLeft;
    final defaultMargin = isUser
        ? const EdgeInsets.only(left: 60, right: 12, bottom: 10)
        : const EdgeInsets.only(left: 12, right: 60, bottom: 10);
    final borderRadius = BorderRadius.only(
      topLeft: const Radius.circular(16),
      topRight: const Radius.circular(16),
      bottomLeft: isUser ? const Radius.circular(16) : const Radius.circular(4),
      bottomRight: isUser ? const Radius.circular(4) : const Radius.circular(16),
    );
    return Align(
      alignment: align,
      child: isUser
          ? Container(
              margin: margin ?? defaultMargin,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                borderRadius: borderRadius,
                border: Border.all(color: Colors.white24),
              ),
              child: Text(text, style: textStyle.copyWith(color: Colors.white)),
            )
          : Align(
              alignment: align,
              child: Container(
                margin: margin ?? const EdgeInsets.only(left: 12, right: 60, bottom: 10),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 420),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                      bottomRight: Radius.circular(22),
                      bottomLeft: Radius.circular(6),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.22),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(22),
                            topRight: Radius.circular(22),
                            bottomRight: Radius.circular(22),
                            bottomLeft: Radius.circular(6),
                          ),
                          border: Border.all(color: Colors.white.withOpacity(0.18), width: 1.2),
                        ),
                        child: child ?? Text(text, style: textStyle.copyWith(color: Colors.white)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }
} 