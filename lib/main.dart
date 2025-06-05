import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en'); // Padrão inicial: inglês

  void _changeLanguage(Locale locale) {
    setState(() {
      _locale = locale;
      Intl.defaultLocale = locale.toLanguageTag(); // 🔵 Atualiza locale do intl
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Localizations Sample App',
      locale: _locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('es'),
        Locale('pt'),
      ],
      home: MyHomePage(onLocaleChange: _changeLanguage),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final void Function(Locale) onLocaleChange;

  const MyHomePage({super.key, required this.onLocaleChange});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final appLoc = AppLocalizations.of(context)!;

    // Exemplo com intl
    final agora = DateTime.now();
    final dataFormatada = DateFormat.yMMMMEEEEd().format(agora);
    final precoFormatado = NumberFormat.simpleCurrency().format(1234.56);

    return Scaffold(
      appBar: AppBar(
        title: Text(appLoc.helloWorld),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(appLoc.hello('João')),
            Text(appLoc.nWombats(0)),
            Text(appLoc.nWombats(1)),
            Text(appLoc.nWombats(5)),
            Text(appLoc.pronoun('male')),
            Text(appLoc.pronoun('female')),
            Text(appLoc.pronoun('other')),

            const SizedBox(height: 20),

            // Data e preço formatados
            Text('Data formatada: $dataFormatada'),
            Text('Preço formatado: $precoFormatado'),

            const SizedBox(height: 20),
            Text("Escolha o idioma:"),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => widget.onLocaleChange(const Locale('en')),
                  child: const Text('English'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () => widget.onLocaleChange(const Locale('es')),
                  child: const Text('Español'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () => widget.onLocaleChange(const Locale('pt')),
                  child: const Text('Português'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
