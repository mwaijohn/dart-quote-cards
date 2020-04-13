import 'package:flutter/material.dart';
import 'package:datalist/quote.dart';

class QuoteCard extends StatelessWidget {

  final  Quote quote;
  final Function delete;
  QuoteCard({this.quote,this.delete});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, "/quote",arguments: {
          "quote":quote.text,
          "author":quote.author
        });
        },
          child: Card(
        margin: EdgeInsets.fromLTRB(16.0,16.0,16.0,0.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                quote.text,
                style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 6.0,),
              Text(
                quote.author,
                style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 18.0
                ),
              ),
              SizedBox(height: 6.0),
              FlatButton.icon(onPressed: delete,
                  icon: Icon(Icons.delete), label: Text("Delete quote"))
            ],
          ),
        ),
      ),
    );
  }
}