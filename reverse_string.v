import os

fn reverse_string(s string) string {
	return s.bytes().reverse().bytestr()
}


fn main() {
  s := os.input("Enter a string: ")
  println(reverse_string(s))
}
