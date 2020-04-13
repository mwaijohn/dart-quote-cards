import 'package:datalist/quote_view.dart';
import 'package:flutter/material.dart';
import 'package:datalist/quote_list.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context)=> QuoteList(),
    '/quote':(context) => QuoteView()
  },
));