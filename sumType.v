struct Null {}
struct Alias {}
struct Prime {}
struct Update {}
struct Resolved {}

type Status = Null | Alias | Prime | Update | Resolved

sum := Status(Alias{})
assert sum.type_name() == 'Alias'
println(sum)


