import 'package:flutter/material.dart';
import 'Board.dart';
import 'package:chess123/pieces_page.dart';
import 'Updates.dart';
import 'package:provider/provider.dart';
import 'ss.dart';
void main() {
  runApp(MyChessApp());
}

class MyChessApp extends StatelessWidget {

  const MyChessApp({
    Key key,
  }) : super(key: key);

  @override

  Widget build(BuildContext context) {
    const PrimaryColor = const Color(0xFF151026);
    return MaterialApp(
        theme: ThemeData(
          primaryColor: PrimaryColor,
        ),
        debugShowCheckedModeBanner: false,
        home: MyApp()
    );
  }
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
          _buildButtonColumn(color, 'Play', context),
          //_buildButtonColumn2(color, 'Online'),
        ],
      ),
    );
     Widget lowerButton = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn3(color, 'How To Play',context),
        ],
      ),
    );
    Widget evenLowerButton = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn4(color, 'Options',context),
        ],
      ),
    );


    Widget iconButton = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildIconButtonColumn(Color(0xFF2D365C),Icons.wb_sunny,),
          _buildIconButtonColumn1(Color(0xFF2D365C),Icons.wb_sunny_outlined,),
          //_buildIconButtonColumn2(Color(0xFF2D365C),Icons.settings),
          //_buildIconButtonColumn3(Color(0xFF2D365C),Icons.settings),
        ],
      ),
    );

    return Scaffold(
        appBar: AppBar(

        title: Text('Chess'),
        ),

      body: ListView(
        children: [

          Image.asset(
            'images/idk.jpeg',
            width: 600,
            height: 340,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          SizedBox(height:20),
            lowerButton,
            SizedBox(height:20),
            evenLowerButton,
          SizedBox(height:20),
            iconButton,

        ],
      ),

    );
  }

//Bunch of columns or something idk

  Column _buildButtonColumn(Color color, String label, BuildContext context) {
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
                return Color(0xFF151026);
              },
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },

          child: Text("Play"),
        ),

      ],
    );
  }
 /*Column _buildButtonColumn2(Color color, String label) {
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
  }*/
  Column _buildButtonColumn3(Color color, String label,BuildContext context,) {
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
                return Color(0xFF151026);
              },
            ),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PiecesPage()),
            );},

          child: Text("How to play"),
        ),

      ],
    );
  }
  Column _buildButtonColumn4(Color color, String label, BuildContext context,) {
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
                return Color(0xFF151026);
              },
            ),
          ),
          onPressed: () {
          Navigator.push(
           context,
            MaterialPageRoute(builder: (context) => Updates()),
            );},

          child: Text("Updates"),
        ),

      ],
    );
  }
  Column _buildIconButtonColumn(Color color,IconData icon,) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(

          icon: Icon(Icons.wb_sunny),
           onPressed: () => {
        },


        ),

      ],
    );
  }
  Column _buildIconButtonColumn1(Color color,IconData icon,) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(

          icon: Icon(Icons.wb_sunny_outlined),
          onPressed: () {
            print("idk");},

        ),

      ],
    );
  }


/*
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
*/
}
