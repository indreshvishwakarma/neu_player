import 'package:flute_music_player/flute_music_player.dart';
import 'package:flutter/material.dart';
import 'package:neo_player/data/song_data.dart';
import 'package:velocity_x/velocity_x.dart';

class Album extends StatefulWidget {
  @override
  _AlbumState createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: FutureBuilder(
            future: SongData.fetchSongs(),
            builder: (contex, snap) {
              SongData songInstance = snap.data;
              var songs = songInstance.songs;

              return GridView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: songs.length * 100,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return songs[0]
                        .title
                        .text
                        .make()
                        .box
                        .margin(EdgeInsets.all(8))
                        .neumorphic(curve: VxCurve.concave, elevation: 18.0)
                        .rounded
                        .make();
                  });
            }),
      ),
    );
  }
}
