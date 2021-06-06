import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget title = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
      Expanded(
      /*1*/
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /*2*/
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              'Update 2.0.0',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            'Settings button and Updates page',
            style: TextStyle(
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    ),
    ]
      )
    );
    Widget title1 = Container(
        padding: const EdgeInsets.all(32),
        child: Row(
            children: [
              Expanded(
                /*1*/
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /*2*/
                    Container(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        'Update 1.0.0',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'Play and tutorial function',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
            ]
        )
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Options"),
      ),
      body: ListView(children: [
        title,title1
      ],

      ),
    );
  }
}