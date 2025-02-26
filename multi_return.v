fn func(x int, y int) (int, int, int) {
	z := x + y
	return x, y, z
}

_, _, a := func(77, 43)
println(a)
