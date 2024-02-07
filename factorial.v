fn factorial(n u64) u64 {
	if (n > 0) {
		return n * factorial(n - 1)
	}
	return 1
}
