module main

import net.http
import walkingdevel.vxml { parse }

fn main() {
  resp := http.get("https://doi.crossref.org/getPrefixPublisher/?prefix=10.1215") or {
      eprintln('Failed to fetch data from the server, Error: ${err}')
      return
    }
    doc := parse(resp.body)
    upress := doc.get_element_by_tag_name("publisher_name")!
    println(upress.text)
}
