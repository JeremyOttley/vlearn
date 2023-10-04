fn string_to_array(s string) []string {
	return s.runes().map(it.str())
}
