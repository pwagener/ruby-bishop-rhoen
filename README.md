# Ruby Bishop

Welcome!  The purpose of this exercise is to give us a problem to pair program on.
It assumes basic Ruby knowledge and some familiarity with the game of [Chess](https://en.wikipedia.org/wiki/Chess).

## Running the Example Code

To run the provided code, clone this repository and execute ...

```
$ rspec spec/bishop_spec.rb
...
F

Failures:

  1) Bishop#available_moves returns an array of available moves
     Failure/Error: raise NotImplementedError

     NotImplementedError:
       NotImplementedError
     # ./lib/bishop.rb:12:in `available_moves'
     # ./spec/bishop_spec.rb:10:in `block (3 levels) in <top (required)>'

Finished in 0.00057 seconds (files took 0.09057 seconds to load)
1 example, 1 failure

Failed examples:

rspec ./spec/bishop_spec.rb:7 # Bishop#available_moves returns an array of available moves

```


As you can see, out of the box the example has a single unit spec `Bishop#availabe_moves` that fails.

## The Provided Code
There are two provided classes in this exercise:

- `lib/bishop.rb`:  This is a Ruby class that represents a Bishop in the game of chess.
If you recall, the [Bishop](https://en.wikipedia.org/wiki/Bishop_(chess)) can move in any of the four
diagonal directions.
- `lib/position.rb`:  This is a Ruby class that represents a position on a chess
board.  Since chess is played on an 8 X 8 grid, positions can be thought of as a Column ("a" thru "h")
and a Row ("1" thru "8").

Additionally, there is a very basic unit spec provided for the Bishop:
- `spec/bishop_spec.rb`: This currently has a single spec that checks if the Bishop instance method `available_moves` returns an `Array`.

## The Goal of the Exercise
The `Bishop` class has a single method called `available_moves` that, given a starting position, returns the
positions that a Bishop could reach in a single move.  Your goal is to implement that method, and prove
it works properly by adding test cases to `bishop_spec.rb`.

Please feel free to ask questions, and good luck!
