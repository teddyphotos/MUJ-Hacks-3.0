import 'package:flutter/material.dart';
import 'package:orbis/tips.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Tips extends StatefulWidget {
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  Widget _buildListIten(BuildContext context, DocumentSnapshot document) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.94,
          child: Card(
            child: SizedBox(
              height: 130.0,
              child: Center(
                child: Padding(
                  child: Text(document['Tip'],style: TextStyle(fontSize: 18.0),),
                  padding: EdgeInsets.fromLTRB(12, 10, 12, 10),
                )
              ),
            ),
          ),
        ),
        SizedBox(
          height: 12.0,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
          child: StreamBuilder(
              stream: Firestore.instance.collection("TipCollection").snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return const Text("Loading...");

                return ListView.builder(
                    itemCount: snapshot.data.documents.length,
                    itemBuilder: (context, position) => _buildListIten(
                        context, snapshot.data.documents[position]));
              }))
    );
  }
}
