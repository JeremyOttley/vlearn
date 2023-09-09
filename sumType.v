struct Null {}
struct Alias {}
struct Prime {}
struct Update {}
struct Resolved {}

type Status = Null | Alias | Prime | Update | Resolved

fn check_status(sum Status) string {
	return match true {
		sum.type_name() == 'Null' { sum.type_name() }
		sum.type_name() == 'Alias' { sum.type_name() }
		sum.type_name() == 'Prime' { sum.type_name() }
		sum.type_name() == 'Update' { sum.type_name() }
		sum.type_name() == 'Resolved' { sum.type_name() }
		else { 'Error: failed to fetch status' }
	}
}

fn main() {
	sum := Status(Alias{})
	assert sum.type_name() == 'Alias'
	println(check_status(sum))
}
