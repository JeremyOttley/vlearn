fn count_words(s string) int {
	return s.split(" ").len
}

fn main() {
  s := os.input("Enter a string: ")
  println(count_words(s))
}
