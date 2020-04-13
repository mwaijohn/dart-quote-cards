import 'package:flutter/material.dart';
import 'package:datalist/quote.dart';
import 'package:datalist/quote_card.dart';


class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes  = [
    Quote(author: "Colin Powell",text: "“There are no secrets to success. It is the result of preparation, hard work and learning from failure.”"),
    Quote(author: "Les Brown",text:"“Be willing to go all out, in pursuit of your dream. Ultimately it will pay off. You are more powerful than you think you are.”"),
    Quote(author: "Paulo Coelho",text: "“There is only one thing that makes a dream impossible to achieve: the fear of failure.” "),
    Quote(author: "Russell Simmons",text: "“Don’t worry what others are doing. Do you!”"),
  ];


  Widget quoteTemplate(quote){
    return new QuoteCard(quote:quote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Quote List"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
        child: SingleChildScrollView(
                child: Column(
            children: quotes.map((quote) => QuoteCard(
                quote:quote,
              delete:(){
                  setState(() {
                    quotes.remove(quote);
                  });
              }
            )).toList(),
          ),
        ),
      )
    );
  }
}


