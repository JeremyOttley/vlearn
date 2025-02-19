import os
	
fn palindrome(word string) ?bool {
	if word == "" {
		return none
	}
	return word.split("").reverse() == word.split("")
}

fn main() {
	word := os.input("Enter a some text: ")
	println(palindrome(word)?)
}


