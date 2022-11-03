import './endpoint.dart';

extension Set on Map {
  void set(Endpoint v) {
    this[v.path] = v;
  }
}

void loadEndpoints(Map<String, Endpoint> endpoints) {
  // Facts
  endpoints.set(Endpoint('/facts/bird'));
  endpoints.set(Endpoint('/facts/cat'));
  endpoints.set(Endpoint('/facts/dog'));
  endpoints.set(Endpoint('/facts/fox'));
  endpoints.set(Endpoint('/facts/koala'));
  endpoints.set(Endpoint('/facts/panda'));

  // Images
  endpoints.set(Endpoint('/img/bird'));
  endpoints.set(Endpoint('/img/cat'));
  endpoints.set(Endpoint('/img/dog'));
  endpoints.set(Endpoint('/img/fox'));
  endpoints.set(Endpoint('/img/kangaroo'));
  endpoints.set(Endpoint('/img/koala'));
  endpoints.set(Endpoint('/img/panda'));
  endpoints.set(Endpoint('/img/pikachu'));
  endpoints.set(Endpoint('/img/racoon'));
  endpoints.set(Endpoint('/img/red_panda'));
  endpoints.set(Endpoint('/img/whale'));

  // Animals
  endpoints.set(Endpoint('/animal/bird'));
  endpoints.set(Endpoint('/animal/cat'));
  endpoints.set(Endpoint('/animal/dog'));
  endpoints.set(Endpoint('/animal/fox'));
  endpoints.set(Endpoint('/animal/kangaroo'));
  endpoints.set(Endpoint('/animal/koala'));
  endpoints.set(Endpoint('/animal/panda'));
  endpoints.set(Endpoint('/animal/racoon'));
  endpoints.set(Endpoint('/animal/red_panda'));

  // Animu
  endpoints.set(Endpoint('/animu/face-palm'));
  endpoints.set(Endpoint('/animu/hug'));
  endpoints.set(Endpoint('/animu/pat'));
  endpoints.set(Endpoint('/animu/quote'));
  endpoints.set(Endpoint('/animu/wink'));

  // Canvas/Filter
  endpoints.set(Endpoint('/canvas/filter/blue', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/filter/blurple', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/filter/blurple2', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/filter/brightness', [
    {'key': 'avatar', 'required': true},
    {'key': 'brightness'}
  ]));
  endpoints.set(Endpoint('/canvas/filter/color', [
    {'key': 'avatar', 'required': true},
    {'key': 'color', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/filter/green', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/filter/greyscale', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/filter/invert', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/filter/invertgreyscale', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/filter/red', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/filter/sepia', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/filter/threshold', [
    {'key': 'avatar', 'required': true},
    {'key': 'threshold'}
  ]));

  // Canvas/Misc
  endpoints.set(Endpoint('/canvas/misc/bisexual', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/blur', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/crop', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/colorviewer', [
    {'key': 'hex', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/heart', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/hex', [
    {'key': 'rgb', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/horny', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/its-so-stupid', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/jpg', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/lesbian', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/lgbt', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/lied', [
    {'key': 'avatar', 'required': true},
    {'key': 'username', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/lolice', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/namecard', [
    {'key': 'avatar', 'required': true},
    {'key': 'birthday', 'required': true},
    {'key': 'username', 'required': true},
    {'key': 'description'},
  ]));
  endpoints.set(Endpoint('/canvas/misc/nobitches', [
    {'key': 'no', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/nonbinary', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/oogway', [
    {'key': 'quote', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/oogway2', [
    {'key': 'quote', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/pansexual', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/pixelate', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/rgb', [
    {'key': 'hex', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/simpcard', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/spin', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/tonikawa', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/transgender', [
    {'key': 'avatar', 'required': true}
  ]));
  endpoints.set(Endpoint('/canvas/misc/tweet', [
    {'key': 'displayname', 'required': true},
    {'key': 'username', 'required': true},
    {'key': 'avatar', 'required': true},
    {'key': 'comment', 'required': true},
    {'key': 'replies'},
    {'key': 'likes'},
    {'key': 'retweets'},
    {'key': 'theme'}
  ]));
  endpoints.set(Endpoint('/canvas/misc/youtube-comment', [
    {'key': 'username', 'required': true},
    {'key': 'avatar', 'required': true},
    {'key': 'comment', 'required': true}
  ]));

  // Canvas/Overlay
  endpoints.set(Endpoint('/canvas/overlay/comrade', [
    {'key': 'avatar', 'required': true},
  ]));
  endpoints.set(Endpoint('/canvas/overlay/gay', [
    {'key': 'avatar', 'required': true},
  ]));
  endpoints.set(Endpoint('/canvas/overlay/glass', [
    {'key': 'avatar', 'required': true},
  ]));
  endpoints.set(Endpoint('/canvas/overlay/jail', [
    {'key': 'avatar', 'required': true},
  ]));
  endpoints.set(Endpoint('/canvas/overlay/passed', [
    {'key': 'avatar', 'required': true},
  ]));
  endpoints.set(Endpoint('/canvas/overlay/triggered', [
    {'key': 'avatar', 'required': true},
  ]));
  endpoints.set(Endpoint('/canvas/overlay/wasted', [
    {'key': 'avatar', 'required': true},
  ]));

  // Other
  endpoints.set(Endpoint('/others/base64', [
    {'key': 'encode'},
    {'key': 'decode'},
  ]));
  endpoints.set(Endpoint('/others/binary', [
    {'key': 'encode'},
    {'key': 'decode'},
  ]));
  endpoints.set(Endpoint('/others/bottoken', [
    {'key': 'id'},
  ]));
  endpoints.set(Endpoint('/others/dictionary', [
    {'key': 'word', 'required': true},
  ]));
  endpoints.set(Endpoint('/others/joke'));
  endpoints.set(Endpoint('/others/lyrics', [
    {'key': 'title', 'required': true},
  ]));

  // Pokemon
  endpoints.set(Endpoint('/pokemon/abilities', [
    {'key': 'ability', 'required': true},
  ]));
  endpoints.set(Endpoint('/pokemon/items', [
    {'key': 'item', 'required': true},
  ]));
  endpoints.set(Endpoint('/pokemon/moves', [
    {'key': 'move', 'required': true},
  ]));
  endpoints.set(Endpoint('/pokemon/pokedex', [
    {'key': 'pokemon', 'required': true},
  ]));

  // Chatbot
  endpoints.set(Endpoint('/chatbot', [
    {'key': 'message', 'required': true},
  ]));

  // Premium
  endpoints.set(Endpoint(
      '/premium/amongus',
      [
        {'key': 'avatar', 'required': true},
        {'key': 'username', 'required': true},
        {'key': 'custom'},
      ],
      true));
  endpoints.set(Endpoint(
      '/premium/petpet',
      [
        {'key': 'avatar', 'required': true},
      ],
      true));

  // Could not get to adapt [Welcome Image (Premium)], [Welcome Image (Free)]
  // and [Rank Card] with the code
  //
  // [Rank Card]: https://some-random-api.ml/docs/premium#rank-card
  // [Welcome Image (Premium)]: https://some-random-api.ml/docs/premium#welcome-images
  // [Welcome Image (Free)]: https://some-random-api.ml/docs/welcome#welcome-images-free-
  // ignore: todo
  // TODO: Fix this. Possible attempts: Make separate method in [Client] to access this endpoints?
}
