fn count_words(s string) ?int {
	if s == "" {
		return none
	}
	return s.split(" ").len
}

fn main() {
  s := os.input("Enter a string: ")
  println(count_words(s)?)
}
