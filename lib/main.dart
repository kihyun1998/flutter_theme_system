import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_theme_system/extensions/provider/theme_provider.dart';
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
                    ColorBox(
                        color: ref.theme.color.surface,
                        text: "surface box",
                        textStyle: ref.theme.font.body1),
                    const SizedBox(width: 30),
                    ColorBox(
                      color: ref.theme.color.hintContainer,
                      text: "hint box",
                      textStyle: ref.theme.font.body1.copyWith(
                        color: ref.theme.color.hint,
                      ),
                    ),
                    const SizedBox(width: 30),
                    ColorBox(
                      color: ref.theme.color.inactiveContainer,
                      text: "inactive box",
                      textStyle: ref.theme.font.body1.copyWith(
                        color: ref.theme.color.onInactiveContainer,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorBox(
                      color: ref.theme.color.primary,
                      text: "primary box",
                      textStyle: ref.theme.font.body1.copyWith(
                        color: ref.theme.color.onPrimary,
                      ),
                    ),
                    const SizedBox(width: 30),
                    ColorBox(
                      color: ref.theme.color.background,
                      text: "Select \nIcon box",
                      textStyle: ref.theme.font.body1.copyWith(
                        color: ref.theme.color.selectedIconColor,
                      ),
                    ),
                    const SizedBox(width: 30),
                    ColorBox(
                      color: ref.theme.color.background,
                      text: "Unselect \nIcon box",
                      textStyle: ref.theme.font.body1.copyWith(
                        color: ref.theme.color.unSelectedIconColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 20,
                      color: ref.theme.color.bar,
                    ),
                    const SizedBox(width: 30),
                    ElevatedButton(
                      onPressed: () {
                        ref.read(themeProvider.notifier).toggleTheme();
                      },
                      child: const Text("Toggle colors"),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ColorBox extends ConsumerWidget {
  const ColorBox({
    super.key,
    required this.color,
    required this.text,
    required this.textStyle,
  });

  final Color color;
  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: color,
      ),
      child: Center(
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
