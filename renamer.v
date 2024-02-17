import os
import rand
import arrays

const image_extensions = [".jpg", ".jpeg", ".png", ".bmp"]

fn get_images() ![]string {
    mut images := []string{}
    jpgs := os.glob("*.jpg") or { [] }
    bmps := os.glob("*.bmp") or { [] }
    jpegs := os.glob("*.jpeg") or { [] }
    pngs := os.glob("*.png") or { [] }
    dir := arrays.flatten([jpgs, bmps, jpegs, pngs])
    for file in dir {
        images << file
    }
    return images
  }

fn is_image(f string) bool {
  if os.file_ext(f) in image_extensions {
    return true
  } else { 
    return false 
  }
}

// fn is_image(f string) ?string {
//   if os.file_ext(f) in image_extensions {
//     return f
//   } else { 
//     return none
//   }
// }
      // use ? to unwrap: x := is_image("file.png")
      // x?


fn main() {

  for image in get_images()! {
    os.mv(image, rand.string(16) + os.file_ext(image))!
  }

}

