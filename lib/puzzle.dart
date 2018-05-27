const mockTiles = [
  ["P", "E", "A", "K", "S", " ", " "],
  ["E", " ", " ", " ", "A", " ", " "],
  ["A", " ", "S", " ", "A", " ", "S"],
  ["S", "A", "P", " ", "A", "S", "S"],
  [" ", " ", "A", "S", "K", " ", "A"],
  [" ", " ", " ", "E", " ", " ", "S"],
  [" ", " ", " ", "A", " ", " ", " "]
];

const mockGameState = [
  [true, true, false, false, false, false, false],
  [true, true, false, false, false, false, false],
  [true, true, false, false, false, false, false],
  [true, true, false, false, false, false, false],
  [true, true, false, false, false, false, false],
  [true, true, false, false, false, false, false],
  [true, true, false, false, false, false, false],
];

class Puzzle {
  List<List<String>> tiles;
  List<List<bool>> revealedTiles;

  Puzzle() {
    this.tiles = mockTiles;
    this.revealedTiles = mockGameState;
  }
}