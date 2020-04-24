import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quotes> quotes = [
    Quotes(author: 'Oscar wilde', text: 'Be yourself; everyone else is ready taken'),
    Quotes(author: 'Oscar wilde', text: 'I have nothing to declare except my genius'),
    Quotes(author: 'Oscar wilde', text: 'The truth is rarely pure and never simple')
  ];

//    Widget quotesTemplate(quotes) {
//     return QuoteCard(quotes: quotes);
//    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent
      ),
      body: Column(
//        children: quotes.map((quotes) => Text('${quotes.text} - ${quotes.author}')).toList(),
        children: quotes.map((quote) => QuoteCard(
          quotes: quote, //Here quotes is instance of Quotes
          delete: (){
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList(),
      )
    );
  }
}





