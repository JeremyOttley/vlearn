import os

fn greater_than_zero(n int) bool {
  return n >= 0
}

fn is_even(n int) bool {
  return n % 2 == 0
}

fn is_odd(n int) bool {
  return !is_even(n)
}
                                          
fn collatz(n int) int {
  if is_even(n) {
    return n / 2
  } else if is_odd(n) {
    return (n * 3) + 1
  } else { return n }
}
 
fn main() {
  assert(collatz(12) == 6)
  input := os.input("Enter a number: ")
  println(collatz(input.int()))
} 
