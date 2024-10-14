enum IsbnError {
   @none
   invalid_isbn
   invalid_check_digit
   invalid_length
}

mut err := IsbnError.invalid_isbn

err = IsbnError.invalid_length

println(err)

match err {
	.invalid_isbn { 'Error: Invalid ISBN!' }
	.invalid_check_digit { 'Error: Invalid Check Digit!' }
	.invalid_length { 'Error: Invalid ISBN length!' }
	.none { 'Pass!' }
}
   
