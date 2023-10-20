import strings

me := 'Jeremy'.runes()
mut name := strings.new_builder(5)
name.write_runes(me)

println(name)
