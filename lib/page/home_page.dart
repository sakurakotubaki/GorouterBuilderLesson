import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../router/router.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Go Router Builder'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // AppBarの戻るボタンが表示されない画面遷移のコード
                  const NextRoute().push(context);
                },
                child: const Text('Next')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  // Stackが削除されて、AppBarに戻るボタンが表示されないコード
                  const NextRoute().go(context);
                },
                child: const Text('go')),
          ],
        ),
      ),
    );
  }
}
