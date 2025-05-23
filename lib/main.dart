import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Soundboard Brain rot',
      home: const MyHomePage(title: 'SoundBoard'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class Song {
  int id;
  String pathSong;
  String name;

  Song({required this.id, required this.pathSong, required this.name});
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Song> soundPaths = [
    Song(
      id: 0,
      pathSong: 'sounds/italian-brainrot-Balerina-capuccina.mp3',
      name: 'Balerina capuccina',
    ),
    Song(
      id: 1,
      pathSong: 'sounds/italian-brainrot-Bananita-dolphinista.mp3',
      name: 'Bananita dolphinista',
    ),
    Song(
      id: 2,
      pathSong: 'sounds/italian-brainrot-Bober-kurwa.mp3',
      name: 'Bober kurwa',
    ),
    Song(
      id: 3,
      pathSong: 'sounds/italian-brainrot-Boberito-bondito.mp3',
      name: 'Boberito bondito',
    ),
    Song(
      id: 4,
      pathSong: 'sounds/italian-brainrot-Bombadiro-Crocodilo.mp3',
      name: 'Bombardiro crocodilo',
    ),
    Song(
      id: 5,
      pathSong: 'sounds/italian-brainrot-Bombondini-gusini.mp3',
      name: 'Bombadini gusini',
    ),
    Song(
      id: 6,
      pathSong: 'sounds/italian-brainrot-Bricus-dicus.mp3',
      name: 'Brr brr Bicus dicus',
    ),
    Song(
      id: 7,
      pathSong: 'sounds/italian-brainrot-Brr-brr-Patapim.mp3',
      name: 'Brr brr Patapim',
    ),
    Song(
      id: 8,
      pathSong: 'sounds/italian-brainrot-Capiballero-cococini.mp3',
      name: 'Capiballero cococini',
    ),
    Song(
      id: 9,
      pathSong: 'sounds/italian-brainrot-Cappuccino-assassino.mp3',
      name: 'Capuccino assassino',
    ),
    Song(
      id: 10,
      pathSong: 'sounds/italian-brainrot-Chimpanzini-bananini.mp3',
      name: 'Chimpazini bananini',
    ),
    Song(
      id: 11,
      pathSong: 'sounds/italian-brainrot-Cocofanto-elephanto.mp3',
      name: 'Cocofanto elephanto',
    ),
    Song(
      id: 12,
      pathSong: 'sounds/italian-brainrot-Crabito-cococito.mp3',
      name: 'Crabito cococito',
    ),
    Song(
      id: 13,
      pathSong: 'sounds/italian-brainrot-Cuivi-tortili.mp3',
      name: 'Cuivi tortili',
    ),
    Song(
      id: 14,
      pathSong: 'sounds/italian-brainrot-Fruli-frula.mp3',
      name: 'Fruli frula',
    ),
    Song(
      id: 15,
      pathSong: 'sounds/italian-brainrot-Galamaranga.mp3',
      name: 'Galamaranga',
    ),
    Song(
      id: 16,
      pathSong: 'sounds/italian-brainrot-Glorbo.mp3',
      name: 'Glorbo',
    ),
    Song(
      id: 17,
      pathSong: 'sounds/italian-brainrot-Lirili-Larila.mp3',
      name: 'Lirili larila',
    ),
    Song(
      id: 18,
      pathSong: 'sounds/italian-brainrot-Pingo-cococinito.mp3',
      name: 'Pingo cococinito',
    ),
    Song(
      id: 19,
      pathSong: 'sounds/italian-brainrot-Saturno.mp3',
      name: 'Satuno saturnita',
    ),
    Song(
      id: 20,
      pathSong: 'sounds/italian-brainrot-Toucano-banano.mp3',
      name: 'Toucano banano',
    ),
    Song(
      id: 21,
      pathSong: 'sounds/italian-brainrot-Tralalelo-Tralala.mp3',
      name: 'Tralalelo tralala',
    ),
    Song(
      id: 22,
      pathSong: 'sounds/italian-brainrot-Trigrulini-watermelini.mp3',
      name: 'Tigroulini watermelini',
    ),
    Song(
      id: 23,
      pathSong: 'sounds/italian-brainrot-Tripi-Tropi.mp3',
      name: 'Tripi tropi',
    ),
    Song(
      id: 24,
      pathSong: 'sounds/italian-brainrot-Tsung-tsung-sahur.mp3',
      name: 'Tsung tsung sahur',
    ),

    // etc.
  ];
  final AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.yellow, title: Text(widget.title)),
      body: Center(
        child: GridView.count(
          primary: false,
          crossAxisCount: 3,
          children: List.generate(25, (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () async {
                  print("ça clique !");

                  await player.play(AssetSource(soundPaths[index].pathSong));
                  // await player.stop();
                },
                child: Text(soundPaths[index].name),
              ),
            );
          }),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Clicked");
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
