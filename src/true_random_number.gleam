import gleam/int
import gleam/io
import prng/random

pub fn main() {
  let sorte: random.Generator(Int) = random.int(1, 10)

  case random.random_sample(sorte) {
    n if n > 5 -> io.debug("You win 🏆! " <> int.to_string(n))
    _ -> io.debug("You lose ❌!")
  }
}
