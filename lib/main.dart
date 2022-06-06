import 'package:flutter/material.dart';

void main() {
  runApp(QuoteApp());
}

class QuoteApp extends StatefulWidget {
  const QuoteApp({Key? key}) : super(key: key);

  @override
  _QuoteAppState createState() => _QuoteAppState();
}

class _QuoteAppState extends State<QuoteApp> {
  int _index = 0;
  List quotes = [
    "150 Life Quotes — Inspiring the Happy",
    " Inspiring the Happy Inspiring the Happy ",
    "Good and Funny in Life Good and Funny in ",
    "Life Inspiring the Happy Inspiring the Happy ",
    "AUGUST 25, 2021 – 4:35 PM  – 10 COMMENTS Parade",
    "By PARADE  @parademagazine Life-Quotes-Dolly ",
    "Life-Quotes-Dolly Inspiring the Happy ",
    "Life-Quotes-Dolly Life-Quotes-Dolly Life-Quotes-Dolly khan",
    "Life is a beautiful journey that is meant ",
    "Too be embraced to fInspiring the Happy ",
    "the fInspiring the Happy , that doesn’t mean you always",
    "wake up ready to seize the day, and sometimes need a reminder",
    "that life is a great gift. Whether a funny quote ",
    "From a famous fInspiring the Happy fInspiring the Happy",
    "celebrity or an encouraging message about giving it your best",
    "from a successful business person, we can all use a little motivation",
    "and inspiration these days via a life quote. Inspiring the Happy",
    "Allow these 150 inspirational quotes about life to give you an extra pep",
    "in your step whenever you may need it. Keep these life quotes bookmarked ",
    "on your phone or computer to pull up and scroll through",
    " whenever you need a little pick me up scroll through.",
    "The purpose of our lives is to be happy. Dalai Lama Inspiring the Happy",
    "Life is what happens when you’re busy making other plans. John Lennon",
    "Get busy living or get busy dying. Stephen King Inspiring the Happy",
    "You only live once, but if you do it right, once is enough. Mae West",
    "Many of life’s failures are people who did not realize how close",
    "they were to success when they gave up. Thomas A. Edison",
    "Never let the fear of striking out keep you from playing",
    "The game.Babe Ruth scroll through scroll through",
    "Money and success don’t change people; they merely",
    "Amplify what is already there. Will Smith",
    "Your time is limited, so don’t waste it living",
    "Someone else’s life realize how close right.",
    "You only live once, but if you do it right, once is enough.",
    "Mae West life’s failures are people who did not",
    "Many of life’s failures are people who did not realize how close",
    "they were to success when they gave up. Thomas A. Edison",
    "Never let the fear of striking out keep you from playing.",
    "The game.Babe Ruth  success don’t change people",
    "Money and success don’t change people; they merely",
    "Amplify what is already there. Will Smith",
    "Your time is limited, so don’t waste it living someone else’s life.",
    "You only live once, but if you do it right, once is enough. Mae West",
    "Many of life’s failures are people who did not realize how close",
    "they were to success when they gave up. Thomas A. Edison",
    "Never let the fear of striking out keep you from",
    "playing the game.Babe Ruth",
    "Money and success don’t change people;",
    "They merely amplify what is already there. Will Smith",
    "Your time is limited, so don’t waste it living someone else’s life.",
    "Life is what happens when you're busy making other plans",
    "Whoever is happy will make others happy too",
    "The future belongs to those who believe in the beauty of their dreams.",
    "Whoever is happy will make others happy too",
    "Life is either a daring adventure or nothing at all.",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Quote APP")),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Container(
                    height: 200,
                    width: 300,
                    margin: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          quotes[_index % quotes.length],
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 2.3,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: FlatButton.icon(
                  onPressed: _showQuote,
                  color: Colors.lightBlue,
                  icon: Icon(Icons.wb_sunny),
                  label: Text(
                    "Inspire ME",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  void _showQuote() {
    setState(() {
      _index++;
    });
  }
}
