import 'package:flutter/material.dart';
import 'package:translator/translator.dart';
import 'package:screens/widget/LanguageSelector.dart';
import 'package:screens/widget/TranslateCard.dart';

class LanguageTranslatorPage extends StatefulWidget {
  @override
  _LanguageTranslatorPageState createState() => _LanguageTranslatorPageState();
}

class _LanguageTranslatorPageState extends State<LanguageTranslatorPage> {
  GoogleTranslator translator = GoogleTranslator();
  String translatedText = '';
  final langController = TextEditingController();

  void translateText() {
    translator.translate(langController.text, to: 'es').then((output) {
      setState(() {
        translatedText = output.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Language Translator',
            style: TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.bold,
              color: Color(0xFF000000),
            ),
          ),
        ),
        backgroundColor: Color(0xFFFFFFFF),
        iconTheme: IconThemeData(color: Color(0xFF000000)),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Open menu
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Color(0xFFF7FAFA),
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Color(0xFFE3E8F2)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  LanguageSelector(
                    language: 'English',
                    flag: 'images/englishpic.png',
                  ),
                  Icon(Icons.swap_horiz, color: Color(0xFF000000)),
                  LanguageSelector(
                    language: 'Spanish',
                    flag: 'images/spainpic.png',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: langController,
              decoration: InputDecoration(
                hintText: 'Enter text to translate',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                translateText();
              },
              child: Text('Translate'),
            ),
            SizedBox(height: 20),
            Text(
              translatedText,
              style: TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  TranslationCard(
                    language: 'English',
                    text: langController.text,
                    isInput: true,
                  ),
                  SizedBox(height: 20),
                  TranslationCard(
                    language: 'Spanish',
                    text: translatedText,
                    isInput: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}