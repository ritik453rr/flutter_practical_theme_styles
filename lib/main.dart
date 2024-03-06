import 'package:flutter/material.dart';
import 'package:styles_themes/ui/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          displaySmall: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Hello')),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          Text(
            "Text 1",
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: Theme.of(context).primaryColor),
          ),
          Text(
            "Text 2",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          Text(
            "Text 3",
            style: mTextStyle21(),
          ),
          Text(
            "Text 4",
            style: mTextStyle11(textColor: Colors.blue),
          ),
        ],
      ),
    );
  }
}
