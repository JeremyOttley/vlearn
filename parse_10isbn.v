
fn parse_10isbn(isbn string) bool {
	x := isbn.split("").map(it.int())
	y := ((x[0] * 10) + (x[1] * 9) + (x[2] * 8) + (x[3] * 7) + (x[4] * 6) + (x[5] * 5) + (x[6] * 4) + (x[7] * 3) + (x[8] * 2) + (x[9] * 1))
	return y % 11 == 0
}

fn main() {
  //need to add X to 10 switch
  println(parse_10isbn("0198526636"))
}
