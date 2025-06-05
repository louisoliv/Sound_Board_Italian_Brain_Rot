// import 'dart:ffi';

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
  String pathImage;

  Song({
    required this.id,
    required this.pathSong,
    required this.name,
    required this.pathImage,
  });
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Song> soundPaths = [
    Song(
      id: 0,
      pathSong: 'sounds/italian-brainrot-Balerina-capuccina.mp3',
      name: 'Balerina capuccina',
      pathImage: 'assets/images/Ballerina-Cappuccina2.png',
    ),
    Song(
      id: 1,
      pathSong: 'sounds/italian-brainrot-Bananita-dolphinista.mp3',
      name: 'Bananita dolphinista',
      pathImage: 'assets/images/Bananita-Dolfinita.png',
    ),
    Song(
      id: 2,
      pathSong: 'sounds/italian-brainrot-Bober-kurwa.mp3',
      name: 'Bober kurwa',
      pathImage: 'assets/images/Bober-kurwa.png',
    ),
    Song(
      id: 3,
      pathSong: 'sounds/italian-brainrot-Boberito-bondito.mp3',
      name: 'Boberito bondito',
      pathImage: 'assets/images/Bobrito-Bandito.png',
    ),
    Song(
      id: 4,
      pathSong: 'sounds/italian-brainrot-Bombadiro-Crocodilo.mp3',
      name: 'Bombardiro crocodilo',
      pathImage: 'assets/images/Bombardiro-Crocodilo.png',
    ),
    Song(
      id: 5,
      pathSong: 'sounds/italian-brainrot-Bombondini-gusini.mp3',
      name: 'Bombadini gusini',
      pathImage: 'assets/images/Bombombini-Gusini.png',
    ),
    Song(
      id: 6,
      pathSong: 'sounds/italian-brainrot-Bricus-dicus.mp3',
      name: 'Brr brr Bicus dicus',
      pathImage: 'assets/images/Brri-Brri-Bicus-Dicus-Bombicus.png',
    ),
    Song(
      id: 7,
      pathSong: 'sounds/italian-brainrot-Brr-brr-Patapim.mp3',
      name: 'Brr brr Patapim',
      pathImage: 'assets/images/Brarr-Patta-Pim.png',
    ),
    Song(
      id: 8,
      pathSong: 'sounds/italian-brainrot-Capiballero-cococini.mp3',
      name: 'Capiballero cococini',
      pathImage: 'assets/images/Burbaloni-Lulilolli.png',
    ),
    Song(
      id: 9,
      pathSong: 'sounds/italian-brainrot-Cappuccino-assassino.mp3',
      name: 'Capuccino assassino',
      pathImage: 'assets/images/Cappuccino-Assassino.png',
    ),
    Song(
      id: 10,
      pathSong: 'sounds/italian-brainrot-Chimpanzini-bananini.mp3',
      name: 'Chimpazini bananini',
      pathImage: 'assets/images/Chimpanzini-Bananini.png',
    ),
    Song(
      id: 11,
      pathSong: 'sounds/italian-brainrot-Cocofanto-elephanto.mp3',
      name: 'Cocofanto elephanto',
      pathImage: 'assets/images/Cocofanto-Elefanto.png',
    ),
    Song(
      id: 12,
      pathSong: 'sounds/italian-brainrot-Crabito-cococito.mp3',
      name: 'Crabito cococito',
      pathImage: 'assets/images/Crabito-cococito.png',
    ),
    Song(
      id: 13,
      pathSong: 'sounds/italian-brainrot-Cuivi-tortili.mp3',
      name: 'Cuivi tortili',
      pathImage: 'assets/images/Cuivi-tortilli.png',
    ),
    Song(
      id: 14,
      pathSong: 'sounds/italian-brainrot-Fruli-frula.mp3',
      name: 'Fruli frula',
      pathImage: 'assets/images/Frulli-Frulla.png',
    ),
    Song(
      id: 15,
      pathSong: 'sounds/italian-brainrot-Galamaranga.mp3',
      name: 'Galamaranga',
      pathImage: 'assets/images/Garamararamararaman.png',
    ),
    Song(
      id: 16,
      pathSong: 'sounds/italian-brainrot-Glorbo.mp3',
      name: 'Glorbo',
      pathImage: 'assets/images/Glorbo-Fruttodrillo.png',
    ),
    Song(
      id: 17,
      pathSong: 'sounds/italian-brainrot-Lirili-Larila.mp3',
      name: 'Lirili larila',
      pathImage: 'assets/images/Lirily-Larila.png',
    ),
    Song(
      id: 18,
      pathSong: 'sounds/italian-brainrot-Pingo-cococinito.mp3',
      name: 'Pingo cococinito',
      pathImage: 'assets/images/Penguino-Cocosino.png',
    ),
    Song(
      id: 19,
      pathSong: 'sounds/italian-brainrot-Saturno.mp3',
      name: 'Satuno saturnita',
      pathImage: 'assets/images/La-Vaca-Saturno-Saturnita.png',
    ),
    Song(
      id: 20,
      pathSong: 'sounds/italian-brainrot-Toucano-banano.mp3',
      name: 'Toucano banano',
      pathImage: 'assets/images/Tukanno-Bananno.png',
    ),
    Song(
      id: 21,
      pathSong: 'sounds/italian-brainrot-Tralalelo-Tralala.mp3',
      name: 'Tralalelo tralala',
      pathImage: 'assets/images/Tralalero-Tralala.png',
    ),
    Song(
      id: 22,
      pathSong: 'sounds/italian-brainrot-Trigrulini-watermelini.mp3',
      name: 'Tigroulini watermelini',
      pathImage: 'assets/images/Tigrrullini-Watermellini.png',
    ),
    Song(
      id: 23,
      pathSong: 'sounds/italian-brainrot-Tripi-Tropi.mp3',
      name: 'Tripi tropi',
      pathImage: 'assets/images/Trippi-Troppi-Troppa-Trippa.png',
    ),
    Song(
      id: 24,
      pathSong: 'sounds/italian-brainrot-Tsung-tsung-sahur.mp3',
      name: 'Tsung tsung sahur',
      pathImage: 'assets/images/Sahur.png',
    ),
    Song(
      id: 25,
      pathSong: 'sounds/BRR-BRR-PATAPIM-FUNK.mp3',
      name: 'Patapim Funk',
      pathImage: 'assets/images/BRR-BRR-PATAPIM.png',
    ),
    Song(
      id: 26,
      pathSong: 'sounds/le-poisson-steve.mp3',
      name: 'Poisson Steve',
      pathImage: 'assets/images/le-poisson-steve.png',
    ),
  ];
  final AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.yellow, title: Text(widget.title)),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: SizedBox(
          height: 775, // ou MediaQuery pour s'adapter à l'écran
          child: Column(
            children: [
              Expanded(
                child: GridView.count(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  primary: false,
                  crossAxisCount: 3,
                  mainAxisSpacing: 16.0,
                  children: List.generate(soundPaths.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                backgroundColor: Colors.transparent,
                              ),
                              clipBehavior: Clip.hardEdge,
                              onPressed: () async {
                                await player.play(
                                  AssetSource(soundPaths[index].pathSong),
                                );
                              },
                              child: Image.asset(
                                soundPaths[index].pathImage,
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            soundPaths[index].name,
                            style: TextStyle(fontSize: 14.0),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
