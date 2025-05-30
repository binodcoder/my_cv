import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_cv/common_widgets/bottom_nav_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter/services.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 96, 59, 181),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 5, 99, 125),
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  colorScheme: kDarkColorScheme,
  cardTheme: CardTheme().copyWith(
    color: kDarkColorScheme.secondaryContainer,
    margin: EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 8,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: kDarkColorScheme.primaryContainer,
      foregroundColor: kDarkColorScheme.onPrimaryContainer,
    ),
  ),
);

ThemeData theme = ThemeData().copyWith(
  colorScheme: kColorScheme,
  appBarTheme: AppBarTheme().copyWith(
    backgroundColor: kColorScheme.onPrimaryContainer,
    foregroundColor: kColorScheme.primaryContainer,
  ),
  cardTheme: CardTheme().copyWith(
    color: kColorScheme.secondaryContainer,
    margin: EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 8,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: kColorScheme.primaryContainer,
    ),
  ),
  // textTheme: ThemeData().textTheme.copyWith(
  //       titleLarge: TextStyle(
  //         fontWeight: FontWeight.bold,
  //         color: kColorScheme.onSecondaryContainer,
  //         fontSize: 16,
  //       ),
  //     ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]).then((fn) {
  runApp(
    ProviderScope(
      child: App(),
    ),
  );
  // });
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: darkTheme,
      // theme: ThemeData(useMaterial3: true),
      theme: theme,
      // themeMode: ThemeMode.system,
      home: BottomNavScaffold(),
      //Expenses(),
    );
  }
}
