import os
import net.html
import net.http

fn main() {	

	sign := os.input("Hey baby, what's your sign: ")

	resp := http.get("https://www.astrology.com/horoscope/daily/${sign}.html") or {
      		eprintln('Failed to fetch data from the server, Error: ${err}')
      		return
    	}

    	mut doc := html.parse(resp.body)

    	fortune := doc.get_tags_by_attribute_value('style', "font-weight: 400")[0].text()

	println("\n" + fortune)
}
