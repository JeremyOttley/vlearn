struct Coordinate {
pub mut:
lng f64
lat f64
}


fn (c &Coordinate) geolocation() (f64, f64) {
return c.lng, c.lat
}

mut baltimore := Coordinate{
lng: 39.3
lat: 76.6
}

print(baltimore.geolocation())
