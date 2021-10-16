import 'package:flutter/material.dart';
import 'package:olx_mock/screens/base/base_screen.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  runApp(const MyApp());
}

Future<void> initializeParse() async {
  await Parse().initialize('Ya1vnu3dgH1o4r6pLF0o12LO2H4uV6s2zhXKDWoe',
      'https://parseapi.back4app.com/',
      clientKey: 'b3SEFNSPI26LCEaqCxAdDPTCD5OseymsZ0VyFJ2F',
      autoSendSessionId: true,
      debug: true);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XML',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BaseScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(child: Container()));
  }
}
