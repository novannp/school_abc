class Abjad {
  String abjad;
  String imageUrl;
  String audioUrl;
  String nextRoute;
  String previousRoute;
  String animalName;

  Abjad({
    required this.abjad,
    required this.imageUrl,
    required this.audioUrl,
    required this.nextRoute,
    required this.previousRoute,
    required this.animalName,
  });
}

var abjadList = [
  Abjad(
      abjad: 'Aa',
      imageUrl: 'assets/images/a.png',
      audioUrl: 'assets/audio/A - Angsa.mp3',
      animalName: 'Angsa',
      nextRoute: '/b',
      previousRoute: '/z'),
  Abjad(
      abjad: 'Bb',
      imageUrl: 'assets/images/b.png',
      audioUrl: 'assets/audio/B - Badak.mp3',
      animalName: 'Badak',
      nextRoute: '/c',
      previousRoute: '/a'),
  Abjad(
      abjad: 'Cc',
      imageUrl: 'assets/images/c.png',
      audioUrl: 'assets/audio/C - Cicak.mp3',
      animalName: 'Cicak',
      nextRoute: '/d',
      previousRoute: '/b'),
  Abjad(
      abjad: 'Dd',
      imageUrl: 'assets/images/d.png',
      audioUrl: 'assets/audio/D - Domba .mp3',
      animalName: 'Domba',
      nextRoute: '/e',
      previousRoute: '/c'),
  Abjad(
      abjad: 'Ee',
      imageUrl: 'assets/images/e.png',
      audioUrl: 'assets/audio/E - Elang .mp3',
      animalName: 'Elang',
      nextRoute: '/f',
      previousRoute: '/d'),
  Abjad(
      abjad: 'Ff',
      imageUrl: 'assets/images/f.png',
      audioUrl: 'assets/audio/F - Flamingo .mp3',
      animalName: 'Flamingo',
      nextRoute: '/g',
      previousRoute: '/e'),
  Abjad(
      abjad: 'Gg',
      imageUrl: 'assets/images/g.png',
      audioUrl: 'assets/audio/G - Gajah .mp3',
      animalName: 'Gajah',
      nextRoute: '/h',
      previousRoute: '/f'),
  Abjad(
      abjad: 'Hh',
      imageUrl: 'assets/images/h.png',
      audioUrl: 'assets/audio/H - Harimau .mp3',
      animalName: 'Harimau',
      nextRoute: '/i',
      previousRoute: '/g'),
  Abjad(
      abjad: 'Ii',
      imageUrl: 'assets/images/i.png',
      audioUrl: 'assets/audio/I - Iguana .mp3',
      animalName: 'Iguana',
      nextRoute: '/j',
      previousRoute: '/h'),
  Abjad(
      abjad: 'Jj',
      imageUrl: 'assets/images/j.png',
      audioUrl: 'assets/audio/J - Jerapah .mp3',
      animalName: 'Jerapah',
      nextRoute: '/k',
      previousRoute: '/i'),
  Abjad(
      abjad: 'Kk',
      imageUrl: 'assets/images/k.png',
      audioUrl: 'assets/audio/K - Kucing .mp3',
      animalName: 'Kucing',
      nextRoute: '/l',
      previousRoute: '/j'),
  Abjad(
      abjad: 'Ll',
      imageUrl: 'assets/images/l.png',
      audioUrl: 'assets/audio/L - Landak .mp3',
      animalName: 'Landak',
      nextRoute: '/m',
      previousRoute: '/k'),
  Abjad(
      abjad: 'Mm',
      imageUrl: 'assets/images/m.png',
      audioUrl: 'assets/audio/M - Musang .mp3',
      animalName: 'Musang',
      nextRoute: '/n',
      previousRoute: '/l'),
  Abjad(
      abjad: 'Nn',
      imageUrl: 'assets/images/n.png',
      audioUrl: 'assets/audio/N - Nyamuk .mp3',
      animalName: 'Nyamuk',
      nextRoute: '/o',
      previousRoute: '/m'),
  Abjad(
      abjad: 'Oo',
      imageUrl: 'assets/images/o.png',
      audioUrl: 'assets/audio/O - Orang Utan.mp3',
      animalName: 'Orang Utan',
      nextRoute: '/p',
      previousRoute: '/n'),
  Abjad(
      abjad: 'Pp',
      imageUrl: 'assets/images/p.png',
      audioUrl: 'assets/audio/P - Pinguin.mp3',
      animalName: 'Penguin',
      nextRoute: '/q',
      previousRoute: '/o'),
  Abjad(
      abjad: 'Qq',
      imageUrl: 'assets/images/q.png',
      audioUrl: 'assets/audio/Q - Qoull.mp3',
      animalName: 'Qoull',
      nextRoute: '/r',
      previousRoute: '/p'),
  Abjad(
      abjad: 'Rr',
      imageUrl: 'assets/images/r.png',
      audioUrl: 'assets/audio/R - Rusa.mp3',
      animalName: 'Rusa',
      nextRoute: '/s',
      previousRoute: '/q'),
  Abjad(
      abjad: 'Ss',
      imageUrl: 'assets/images/s.png',
      audioUrl: 'assets/audio/S - Singa.mp3',
      animalName: 'Singa',
      nextRoute: '/t',
      previousRoute: '/r'),
  Abjad(
      abjad: 'Tt',
      imageUrl: 'assets/images/t.png',
      audioUrl: 'assets/audio/T - Tupai.mp3',
      animalName: 'Tupai',
      nextRoute: '/u',
      previousRoute: '/s'),
  Abjad(
      abjad: 'Uu',
      imageUrl: 'assets/images/u.png',
      audioUrl: 'assets/audio/U - Ular.mp3',
      animalName: 'Ular',
      nextRoute: '/v',
      previousRoute: '/t'),
  Abjad(
      abjad: 'Vv',
      imageUrl: 'assets/images/v.png',
      audioUrl: 'assets/audio/V - Vicuna.mp3',
      animalName: 'Vicuna',
      nextRoute: '/w',
      previousRoute: '/u'),
  Abjad(
      abjad: 'Ww',
      imageUrl: 'assets/images/w.png',
      audioUrl: 'assets/audio/W - Walrus.mp3',
      animalName: 'Walrus',
      nextRoute: '/x',
      previousRoute: '/v'),
  Abjad(
      abjad: 'Xx',
      imageUrl: 'assets/images/x.png',
      audioUrl: 'assets/audio/X - Xenatra.mp3',
      animalName: 'Xenatra',
      nextRoute: '/y',
      previousRoute: '/w'),
  Abjad(
      abjad: 'Yy',
      imageUrl: 'assets/images/y.png',
      audioUrl: 'assets/audio/Y - Yak.mp3',
      animalName: 'Yak',
      nextRoute: '/z',
      previousRoute: '/x'),
  Abjad(
      abjad: 'Zz',
      imageUrl: 'assets/images/z.png',
      audioUrl: 'assets/audio/Z - Zebra.mp3',
      animalName: 'Zebra',
      nextRoute: '/a',
      previousRoute: '/y'),
];
