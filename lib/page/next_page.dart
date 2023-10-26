import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../router/router.dart';

class NextPage extends ConsumerWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Next Page'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // pushを使った場合は前のページへ画面遷移できるコード
                context.pop();
              },
              child: const Text('back'),
            ),
          ],
        ),
      ),
    );
  }
}
