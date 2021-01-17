import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '코로나 현황',
      theme: ThemeData(
          primaryColor: const Color(0xFF264653),
          primaryColorDark: const Color(0xFF2A9D8F),
          primaryColorLight: const Color(0xFFE9C46A),
          accentColor: const Color(0xFFF4A261),
          backgroundColor: const Color(0xFFE76F51)),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("코로나 현황"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              stops: [
                0.8,
                0.99,
              ],
              colors: [
                Theme.of(context).primaryColorLight,
                Theme.of(context).backgroundColor,
              ]),
        ),
        child: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: _CovidPanel(
                      title: "title",
                      value: "100 명",
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: _CovidPanel(
                      title: "title",
                      value: "100 명",
                    ),
                    flex: 1,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: _CovidPanel(
                      title: "title",
                      value: "100 명",
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: _CovidPanel(
                      title: "title",
                      value: "100 명",
                    ),
                    flex: 1,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: _CovidPanel(
                      title: "title",
                      value: "100 명",
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: _CovidPanel(
                      title: "title",
                      value: "100 명",
                    ),
                    flex: 1,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: _CovidPanel(
                      title: "title",
                      value: "100 명",
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: _CovidPanel(
                      title: "title",
                      value: "100 명",
                    ),
                    flex: 1,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: _CovidPanel(
                      title: "title",
                      value: "100 명",
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: _CovidPanel(
                      title: "title",
                      value: "100 명",
                    ),
                    flex: 1,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CovidPanel extends StatefulWidget {
  _CovidPanel({this.title, this.value});

  String title;
  String value;

  @override
  _CovidPanelState createState() => _CovidPanelState();
}

class _CovidPanelState extends State<_CovidPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.7, 0.9],
              colors: [
                Theme.of(context).primaryColor,
                Theme.of(context).primaryColor.withAlpha(180),
              ],
              tileMode: TileMode.repeated),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).backgroundColor,
              offset: const Offset(5, 5),
              blurRadius: 5,
              spreadRadius: 1
            ),
          ]),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(
              bottom: 8
            ),
            child: Text(
              widget.title,
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Text(
            widget.value,
            style: TextStyle(
              fontSize: 36,
              color: Theme.of(context).accentColor,
            ),
          )
        ],
      ),
    );
  }
}

