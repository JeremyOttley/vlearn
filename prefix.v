module main

import net.http
import walkingdevel.vxml { parse }
import os

fn main() {
  prefix := os.input("Enter a prefix: ")
  resp := http.get("https://doi.crossref.org/getPrefixPublisher/?prefix=${prefix}") or {
      eprintln('Failed to fetch data from the server, Error: ${err}')
      return
    }
    doc := parse(resp.body)
    upress := doc.get_element_by_tag_name("publisher_name") or {
      eprintln('Failed to fetch tag from XML, Error: ${err}')
      return
      }
    println(upress.text)
}
