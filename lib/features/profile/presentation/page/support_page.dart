import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  final String _supportEmail = "support@fino.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text('Support', style: Theme.of(context).textTheme.bodyMedium),
        toolbarHeight: 46,
      ),
      body: SafeArea(
        minimum: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.envelope,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Contact Us',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Have questions, suggestions, or found a bug? We would love to hear from you!',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                      const SizedBox(height: 16),
                      GestureDetector(
                        onTap: () => _copyEmail(),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Theme.of(
                              context,
                            ).colorScheme.primary.withAlpha(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                CupertinoIcons.mail,
                                size: 20,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                _supportEmail,
                                style: Theme.of(context).textTheme.bodyMedium
                                    ?.copyWith(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.primary,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 6),
                      Center(
                        child: Text(
                          'Tap to copy email',
                          style: Theme.of(context).textTheme.labelSmall
                              ?.copyWith(
                                color: Theme.of(
                                  context,
                                ).colorScheme.onSecondary,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.question_circle,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(width: 12),
                          Text(
                            'FAQ',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      _FaqItem(
                        question: 'How do I add a new expense?',
                        answer:
                            'Tap the "+" button in the bottom navigation bar and fill in the expense details.',
                      ),
                      const SizedBox(height: 12),
                      _FaqItem(
                        question: 'Can I edit or delete an expense?',
                        answer:
                            'Yes, go to History or Home page, find the expense and swipe left to delete or tap to edit.',
                      ),
                      const SizedBox(height: 12),
                      _FaqItem(
                        question: 'How do I change the currency?',
                        answer:
                            'Go to Profile → Currency and select your preferred currency.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _copyEmail() async {
    await Clipboard.setData(ClipboardData(text: _supportEmail)); //copy text
    HapticFeedback.lightImpact(); // vibration
  }
}

class _FaqItem extends StatefulWidget {
  const _FaqItem({required this.question, required this.answer});

  final String question;
  final String answer;

  @override
  State<_FaqItem> createState() => _FaqItemState();
}

class _FaqItemState extends State<_FaqItem> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => _isExpanded = !_isExpanded),
      behavior: HitTestBehavior.opaque,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.question,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              Icon(
                _isExpanded
                    ? CupertinoIcons.chevron_up
                    : CupertinoIcons.chevron_down,
                size: 16,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ],
          ),
          if (_isExpanded) ...[
            const SizedBox(height: 8),
            Text(
              widget.answer,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
