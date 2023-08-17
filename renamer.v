import os
import rand
import arrays

fn is_img(f string) bool {
	return match false {
			os.file_ext(f) == ".jpg" { true }
			os.file_ext(f) == ".bmp" { true }
			os.file_ext(f) == ".jpeg" { true }
			os.file_ext(f) == ".png" { true }
			else { false }
		}
}

fn renamer(f string)! {
	os.mv(f, rand.string(16) + os.file_ext(f)) or {
      eprintln('Failed to rename file, Error: ${err}')
      return
    }
}





fn main() {

	mut images := []string{}

	jpgs := os.glob("*.jpg") or {
	[]
    }
	bmps := os.glob("*.bmp") or {
	[]	
    }
	jpegs := os.glob("*.jpeg") or {
	[]
    }
	pngs := os.glob("*.png") or {
	[]
    }

	formats := arrays.flatten([jpgs, bmps, jpegs, pngs])

	for extension in formats {
		images << extension
	}

	for image in images {
		renamer(image) or {
      eprintln('Failed to fetch image file from directory, Error: ${err}')
      return
    }
	}	

}

