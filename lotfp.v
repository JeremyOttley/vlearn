import x.json2
import net.http

url := "https://character.totalpartykill.ca/basic/json/"

api_request := fn (url string) !string {
	mut response := http.get(url) or {
		panic(err)
	}
	return response.body
}

json_data := json2.raw_decode(api_request(url)!)!.as_map()
//equipment := json_data['equipment']!.arr()
//appearance := json_data['appaearance']!.str()

// Implement structs properly

struct Root {
	thac9 int @[omitempty]
	spell []string @[omitempty]
	ac int @[omitempty]
	saves Saves @[omitempty]
	attr Attr @[omitempty]
	hp int @[omitempty]
	to_hit [][] @[omitempty]
	appearance string @[omitempty]
	system string @[omitempty]
	skills Any @[omitempty]
	class string @[omitempty]
	languages []string @[omitempty]
	equipment []string @[omitempty]
	attributes [][] @[omitempty]
	notes []Any @[omitempty]
	personality string @[omitempty]
}

struct Saves {
	wands int @[omitempty]
	breath int @[omitempty]
	stone int @[omitempty]
	magic int @[omitempty]
	poison int @[omitempty]
}

struct Attr {
	d_e_x string @[json: "DEX"; omitempty]
	c_h_a string @[json: "CHA"; omitempty]
	i_n_t string @[json: "INT"; omitempty]
	w_i_s string @[json: "WIS"; omitempty]
	s_t_r string @[json: "STR"; omitempty]
	c_o_n string @[json: "CON"; omitempty]
}

struct Any{}
