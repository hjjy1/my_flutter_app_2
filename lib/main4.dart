import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Demo')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: _isVisible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 500),
              ),
              SizedBox(height: 20),
              AnimatedContainer(
                width: _isVisible ? 200 : 100,
                height: 50,
                duration: Duration(milliseconds: 500),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _isVisible = !_isVisible;
                    });
                  },
                  child: Text('handoff'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}