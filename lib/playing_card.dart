import 'package:flutter/material.dart';
import 'package:solitaire_flutter/enum/cardcolor.dart';
import 'package:solitaire_flutter/enum/cardsuit.dart';
import 'package:solitaire_flutter/enum/cardtype.dart';

// Simple playing card model
class PlayingCard {
  CardSuit cardSuit;
  CardType cardType;
  bool faceUp;
  bool opened;

  PlayingCard({
    @required this.cardSuit,
    @required this.cardType,
    this.faceUp = false,
    this.opened = false,
  });

  CardColor get cardColor {
    if (cardSuit == CardSuit.hearts || cardSuit == CardSuit.diamonds) {
      return CardColor.red;
    } else {
      return CardColor.black;
    }
  }
}
