const isbn = "978-1-4780-2737-9"

fn normalize(isbn string) string {
	mut s := isbn
	for s.contains('-') {
    	s = s.replace('-','')
    }
  return s 
}

assert(normalize(isbn) == "9781478027379")
println(normalize(isbn))
