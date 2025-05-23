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

class _MyHomePageState extends State<MyHomePage> {
  final List<String> soundPaths = [
    'sounds/italian-brainrot-Balerina-capuccina.mp3',
    'sounds/italian-brainrot-Bananita-dolphinista.mp3',
    'sounds/italian-brainrot-Bober-kurwa.mp3',
    'sounds/italian-brainrot-Boberito-bondito.mp3',
    'sounds/italian-brainrot-Bombadiro-Crocodilo.mp3',
    'sounds/italian-brainrot-Bombondini-gusini.mp3',
    'sounds/italian-brainrot-Bricus-dicus.mp3',
    'sounds/italian-brainrot-Brr-brr-Patapim.mp3',
    'sounds/italian-brainrot-Capiballero-cococini.mp3',
    'sounds/italian-brainrot-Cappuccino-assassino.mp3',
    'sounds/italian-brainrot-Chimpanzini-bananini.mp3',
    'sounds/italian-brainrot-Cocofanto-elephanto.mp3',
    'sounds/italian-brainrot-Crabito-cococito.mp3',
    'sounds/italian-brainrot-Cuivi-tortili.mp3',
    'sounds/italian-brainrot-Fruli-frula.mp3',
    'sounds/italian-brainrot-Galamaranga.mp3',
    'sounds/italian-brainrot-Glorbo.mp3',
    'sounds/italian-brainrot-Lirili-Larila.mp3',
    'sounds/italian-brainrot-Pingo-cococinito.mp3',
    'sounds/italian-brainrot-Saturno.mp3',
    'sounds/italian-brainrot-Toucano-banano.mp3',
    'sounds/italian-brainrot-Tralalelo-Tralala.mp3',
    'sounds/italian-brainrot-Trigrulini-watermelini.mp3',
    'sounds/italian-brainrot-Tripi-Tropi.mp3',
    'sounds/italian-brainrot-Tsung-tsung-sahur.mp3',

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

                  await player.play(AssetSource(soundPaths[index]));
                  // await player.stop();
                },
                child: Text('Son $index'),
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
