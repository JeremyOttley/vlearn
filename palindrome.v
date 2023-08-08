
fn palindrome(word string) bool {
	return word.split("").reverse() == word.split("")
}

fn main() {
	println(palindrome("Jeremy"))
}

