import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_database/Operasi.dart';


class Awal extends StatefulWidget {
  @override
  _AwalState createState() => _AwalState();
}

class _AwalState extends State<Awal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SQFlite'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: (){},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Akun(),
          Divider(),
          Operasi(),
        ],
      ),
    );
  }
}

class Akun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                  'assets/me.png'
              ),
            ),
          ),
        ),
        title: Text('Gede Ari Wahyudi',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: <Widget>[
            RaisedButton.icon(
              icon: Icon(Icons.album),
              label: Text('NIM.1715051089'),
              onPressed: (){},
              color: Colors.grey[200],
              elevation: 0.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
            ),
            Padding(padding: EdgeInsets.all(8.0),),
            RaisedButton(
              child: Text('Kelas 6A'),
              onPressed: (){},
              color: Colors.grey[200],
              elevation: 0.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
            ),
          ],
        ),
      ),
    );
  }
}


