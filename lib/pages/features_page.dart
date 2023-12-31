import 'package:flutter/material.dart';
import '/widgets/card_widget.dart';
import '/widgets/page_widget.dart';

class FeaturesPage extends StatelessWidget {
  const FeaturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Features', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 15),
          const Text(
            'Nice to meet you. Here it is our benefits that you can learn',
          ),
          const SizedBox(height: 30),
          const Row(
            children: [
              SizedBox(width: 30),
              CardFeatures(
                Icons.file_copy_rounded,
                'Clear Guides',
                "We're providing full guides with security, anonymity and lists of shops",
              ),
              SizedBox(width: 30),
              CardFeatures(
                Icons.refresh,
                'Full Refund or Replace',
                "We're providing full guides with security, anonymity and lists of shops",
              ),
              SizedBox(width: 30),
              CardFeatures(
                Icons.price_check,
                'Low prices',
                "We're providing full guides with security, anonymity and lists of shops",
              ),
              SizedBox(width: 30),
            ],
          ),
        ],
      ),
    );
  }
}
