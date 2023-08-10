import os

fn reverse_string(s string) string {
	return s.runes().map(it.str()).reverse().join("")
}


fn main() {
  s := os.input("Enter a string: ")
  println(reverse_string(s))
}
