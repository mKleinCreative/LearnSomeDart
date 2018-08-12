void main() {
  var deck = new Deck();
  deck.shuffle();
  
  print(deck);
  print(deck.removeCard('Ace', "Spades"));
  print(deck);
}

class Deck {
  List<Card> cards = [];
  
  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten', 'Jack', 'Queen', 'King'];
    var suits = ['Clubs', 'Hearts', 'Spades', 'Diamonds'];
    
    for (var suit in suits) {
      for (var rank in ranks) {
        var card = new Card(
          rank: rank,
          suit: suit
        );
        cards.add(card);
      }
    }
  }
  
  toString() {
    return cards.toString();
  }
  
  shuffle() {
    cards.shuffle();
  }
  
  cardsWithSuit(String suit) {
    return cards.where((card) => card.suit == suit );
  }
  
  deal(int handSize) {
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);
    
    return hand;
  }
  
  removeCard(String rank, String suit) {
    return cards.removeWhere((card) => (card.suit == suit) && (card.rank == rank));
  }
}

class Card {
  String suit;
  String rank;
  
  Card({this.rank, this.suit});
  
  toString() {
    return '$rank of $suit';
  }
}