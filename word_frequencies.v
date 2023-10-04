import regex

// count frequencies of unique words

// print them out with their frequencies, ordered most frequent first

fn string_to_array(s string) []string {
	return s.runes().map(it.str())
}

fn normalize(isbn string) string {
	mut s := isbn
	
	mut re_non_digit := regex.regex_opt(r'\W+') or { panic(err) }
	s = re_non_digit.replace(s, '')
	
  return s 
}

input := "The foo the foo the  defenestration the"

// strint -> array

input_array := input.split(" ").filter(it != '').map(it.to_lower())
//input_array.join("")
println(input_array)



