import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_theme_system/extensions/themedata_ext.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ACRA Point Client',
      theme: ref.themeData,
      home: Scaffold(
        backgroundColor: ref.theme.color.background,
        appBar: AppBar(
          title: const Text("Theme test"),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: ref.theme.color.surface,
                      ),
                      child: Center(
                        child: Text(
                          "surface box",
                          style: ref.theme.font.body1,
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: ref.theme.color.surface,
                      ),
                      child: Center(
                        child: Text(
                          "Container",
                          style: ref.theme.font.body1,
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: ref.theme.color.surface,
                      ),
                      child: Center(
                        child: Text(
                          "Container",
                          style: ref.theme.font.body1,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
