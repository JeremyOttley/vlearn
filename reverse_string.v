import os

fn reverse_string(s string) ?string {
	if s == "" {
		return none
	}
	return s.bytes().reverse().bytestr()
}


fn main() {
  s := "Jeremy"
  println(reverse_string(s)?)
}
