import 'package:flutter/material.dart';

class QuoteView extends StatefulWidget {
  @override
  _QuoteViewState createState() => _QuoteViewState();
}

class _QuoteViewState extends State<QuoteView> {
  Map quote = {};

  @override
  Widget build(BuildContext context) {
    quote = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Quote View"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(
                    quote['quote'],
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 6.0,),
                Text(
                  quote['author'],
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.normal
                  ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
