import os

const vowels = ['a', 'e', 'i', 'o', 'u']

fn count_vowels(s string) int {
	return s.split("").filter(it in vowels).len
	}
	
fn main() {
	word := os.input("Enter a string: ")
	println(count_vowels(word))
}
