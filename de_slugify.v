import regex

const isbn = "9781478027379"


fn de_slugify(isbn string) string {
	mut s := isbn
	
	mut re_original := regex.regex_opt(r'(\d{3})(\d{1})(\d{4})(\d{4})(\d{1})') or { panic(err) }
	s = re_original.replace(s, r'\0-\1-\2-\3-\4')
	
  return s 
}

assert(de_slugify(isbn) == "978-1-4780-2737-9")

println(de_slugify(isbn))

