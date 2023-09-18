import regex

const isbn = "978-1-4780-2737-9"

fn normalize(isbn string) string {
	mut s := isbn
	
	mut re_non_digit := regex.regex_opt(r'\D+') or { panic(err) }
	s = re_non_digit.replace(s, '')
	
  return s 
}

assert(normalize(isbn) == "9781478027379")
println(normalize(isbn))
