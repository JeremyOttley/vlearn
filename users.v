import json


struct Geo {
  lat string
  lng string
}

struct Company {
  name string
  catchphase string
  bs string
}

struct Address {
  street string
  suite string
  city string
  zipcode string
  geo Geo
}

struct User {
  id string
  name string
  username string
  email string
  address Address

}

fn main() {
json_data := '[{
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
  }]'


  mut users := json.decode([]User, json_data) or {
     eprintln('Failed to parse json, error: ${err}')
     return
  }

  for user in users {
     println('${user.name}: ${user.email}')
  }
}
