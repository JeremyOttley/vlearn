
fn bat_avg(hits f64, at_bats f64) string {
	avg := hits / at_bats
	return match true {
  	avg <= 0.200	{ "Turrible" }
  	avg <= 0.250	{ "Aiiight" }
  	avg <= 0.280	{ "Niiiiice" }
		else { "JFC!" }
	}
}

avg := bat_avg(3.4,49.3)

println(avg)
