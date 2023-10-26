import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../page/home_page.dart';
import '../page/next_page.dart';

part 'router.g.dart';// ファイル名と同じ名前にして、.g.dartとつける
// flutter pub run build_runner build --delete-conflicting-outputs
@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
      debugLogDiagnostics: true,
      routes: $appRoutes,// 自動生成されたファイルからパスを読み込む
      // 404ページを指定
      errorPageBuilder: (context, state) {
        return const MaterialPage(
            child: Scaffold(
              body: Center(
                child: Text('Page not found'),
              ),
            ));
      });
}

/// [この位置にルートを定義する]
/* buildメソッドの設定が変わっていた:
https://pub.dev/documentation/go_router_builder/latest/
*/

/// [HomePageのルート]
@TypedGoRoute<HomeRoute>(
    path: '/',
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

/// [NextPageのルート]
@TypedGoRoute<NextRoute>(
  path: '/next',
)
class NextRoute extends GoRouteData {
  const NextRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const NextPage();
  }
}