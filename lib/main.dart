import 'package:flutter/material.dart';
import 'package:flutter_webapi_first_course/models/journal.dart';
import 'package:flutter_webapi_first_course/screens/add_journal/add_journal_screen.dart';
import 'package:flutter_webapi_first_course/services/async_study.dart';
import 'package:flutter_webapi_first_course/services/journal_service.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());

  JournalService service = JournalService();
  //service.register("Hello world!");
  //service.get();

  asyncStudy();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Journal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.black26,
          titleTextStyle: TextStyle(
            color: Colors.white,
          ),
          actionsIconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        textTheme: GoogleFonts.bitterTextTheme(),
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      initialRoute: "add-journal",
      routes: {
        "home": (context) => const HomeScreen(),
        "add-journal": (context) => AddJournalScreen(
                journal: Journal(
              id: "id",
              content: "content",
              createdAt: DateTime.now(),
              updatedAt: DateTime.now(),
            )),
      },
    );
  }
}
