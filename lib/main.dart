import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:olx_mock/screens/base/base_screen.dart';
import 'package:olx_mock/stores/page_store.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  setupLocators();
  runApp(const MyApp());
}

Future<void> initializeParse() async {
  await Parse().initialize('Ya1vnu3dgH1o4r6pLF0o12LO2H4uV6s2zhXKDWoe',
      'https://parseapi.back4app.com/',
      clientKey: 'b3SEFNSPI26LCEaqCxAdDPTCD5OseymsZ0VyFJ2F',
      autoSendSessionId: true,
      debug: true);
}

void setupLocators() {
  GetIt.I.registerSingleton(PageStore());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OLX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.purple,
        backgroundColor: Colors.purple,
        appBarTheme: const AppBarTheme(
          elevation: 0,
        ),
      ),
      home: BaseScreen(),
    );
  }
}
