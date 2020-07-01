import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sager/models/playlists.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.black,
          onPressed: () => print("Menu button pressed"),
        ),
        title: Text(
          'Sager',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.0,
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children: <Widget>[
                  Container(
                    height: 480.0,
                    margin:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                            image: AssetImage(
                                Playlist.fetchPlaylists[index].imageUrl),
                            fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10.0,
                              offset: Offset(0.0, 10.0),
                              color: Colors.black26)
                        ]),
                  ),
                  Container(
                    height: 480.0,
                    margin:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.black.withOpacity(0.4),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10.0,
                              offset: Offset(0.0, 10.0),
                              color: Colors.black26)
                        ]),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(Playlist
                                      .fetchPlaylists[index].ownerImage),
                                  radius: 23,
                                ),
                              ),
                              SizedBox(width: 10.0),
                              Text(Playlist.fetchPlaylists[index].ownerName,
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20.0, left: 20.0, right: 20.0),
                          child: Text(
                            Playlist.fetchPlaylists[index].name,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.graphic_eq,
                              color: Colors.white60,
                            ),
                            Text(
                              Playlist.fetchPlaylists[index].count.toString(),
                              style: TextStyle(color: Colors.white60),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
