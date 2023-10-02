struct User {
	id   int
	name string
}

struct Repo {
	users []User
}

fn (r Repo) find_user_by_id(id int) ?User {
	
	for user in r.users {
		if user.id == id {
			return user
		}
	}
	return none
      
}
      
fn main() {

  repo := Repo{ users: [User{1, 'Andrew'}, User{2, 'Bob'}, User{10, 'Charles'}, User{103088, 'Jeremy'}] }

  println("Hello, my name is ${repo.find_user_by_id(103088)?.name}")
}
