module main

//import net.http
import json
//import mewzax.chalk

//const user_api = 'https://jsonplaceholder.typicode.com/users'

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
  
json_data := '{
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {
        "lat": "-37.3159",
        "lng": "81.1496"
      }
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    }
  }'

  mut zipcodes := json.decode(User, json_data) or {
     eprintln('Failed to parse json, error: ${err}')
     return
  }
  
  println(zipcodes.address.zipcode)

}
