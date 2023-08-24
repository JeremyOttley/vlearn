module main

import net.http
import json
import mewzax.chalk

const user_api = 'https://jsonplaceholder.typicode.com/users'

struct Geo {
pub:
  lat string
  lng string
}

struct Company {
pub:
  name string
  catchphrase string [json:'catchPhrase']
  bs string
}

struct Address {
pub:
  street string
  suite string
  city string
  zipcode string
  geo Geo
}

struct User {
pub:
  id int
  name string
  username string
  email string
  address Address
  phone string
  website string
  company Company
}

fn main() {
json_data := http.get_text(user_api)


  mut zipcodes := json.decode([]User, json_data) or {
     eprintln('Failed to parse json, error: ${err}')
     return
  }

for user in zipcodes {
  zip_report := chalk.fg("Your zipcode is: ${user.address.zipcode}", 'green')
  println(zip_report)
}

}
