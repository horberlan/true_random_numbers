import gleam/io
import prng/random

pub type Jogo {
  Ganhou
  Perdeu
}

pub fn main() {
  let sorte: random.Generator(Int) = random.int(1, 10)

  case random.random_sample(sorte) {
    n if n > 5 -> io.println("Você ganhou!")
    _ -> io.println("Você perdeu!")
  }
}
