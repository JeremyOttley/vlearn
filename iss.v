import net.http
import json

const api = 'http://api.open-notify.org'


struct ISS {
	message string @[omitempty]
	people []struct {
		name string @[omitempty]
		craft string @[omitempty]
	} @[omitempty]
	number int @[omitempty]
}



fn show_roster() !ISS {
	text := http.get_text('${api}/astros.json')
	data := json.decode(ISS, text) or { exit(1) }
	return data
}

fn main() {
	iss := show_roster()!
	for astro in iss.people {
		println(astro.name)
	}
}
