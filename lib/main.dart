import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
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
                  padding: const EdgeInsets.only(bottom: 0),
                )
              ],
            ),
          )
        ],
      ),
    );
    Color color = Theme
        .of(context)
        .primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, 'Play'),
          _buildButtonColumn2(color, 'Online'),
        ],
      ),
    );
    Widget lowerButton = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn3(color, 'How To Play'),
        ],
      ),
    );

    Widget iconButton = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildIconButtonColumn(Color(0xFF2D365C),Icons.settings),
          _buildIconButtonColumn1(Color(0xFF2D365C),Icons.settings),
          _buildIconButtonColumn2(Color(0xFF2D365C),Icons.settings),
          _buildIconButtonColumn3(Color(0xFF2D365C),Icons.settings),
        ],
      ),
    );
  /*
    Widget iconButton1 = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildIconButtonColumn1(color,Icons.settings),
        ],
      ),
    );
    Widget iconButton2 = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildIconButtonColumn2(color,Icons.settings),
        ],
      ),
    );
    Widget iconButton3 = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildIconButtonColumn3(color,Icons.settings),
        ],
      ),
    );
*/

    return MaterialApp(
      title: 'Chess',
     // theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF165DC0)),
      home: Scaffold(

        appBar: AppBar(

          title: Text('Chess'),

        ),
        body: ListView(
          children: [
            Image.asset(
              'images/background2.jpg',
              width: 600,
              height: 340,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            SizedBox(height:20),
            lowerButton,
            SizedBox(height:35),
            iconButton,
         /*   iconButton1,
            iconButton2,
            iconButton3,
            */
          ],
        ),
      ),
    );
  }
//Bunch of columns or something idk

  Column _buildButtonColumn(Color color, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed))
                  return Colors.green;
                return Color(0xFF2D365C);
              },
            ),
          ),
          onPressed: () {
            print("Play");
          },

          child: Text("Play"),
        ),

      ],
    );
  }
  Column _buildButtonColumn2(Color color, String label) {
      return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed))
                  return Colors.green;
                return Color(0xFF2D365C);
              },
            ),
          ),
          onPressed: () {
            print("Online");
          },

          child: Text("Online"),
        ),

      ],
    );
  }
  Column _buildButtonColumn3(Color color, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed))
                  return Colors.green;
                return Color(0xFF2D365C);
              },
            ),
          ),
          onPressed: () {
            print("How to play");
          },

          child: Text("How to play"),
        ),

      ],
    );
  }

  Column _buildIconButtonColumn(Color color,IconData icon) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(

          icon: Icon(Icons.settings),
          onPressed: () {
            print("Update page popup");
          },
        ),

      ],
    );
  }
  Column _buildIconButtonColumn1(Color color,IconData icon,) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            print("Some other page popup");
          },
        ),

      ],
    );
  }
  Column _buildIconButtonColumn2(Color color,IconData icon,) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            print("Some other page popup");
          },
        ),

      ],
    );
  }
  Column _buildIconButtonColumn3(Color color,IconData icon,) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            print("Some other page popup");
          },
        ),

      ],
    );
  }
}
