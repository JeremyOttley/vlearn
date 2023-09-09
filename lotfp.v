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
