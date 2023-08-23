import os

  fn main() {
  
os.write_file('app.log', '
ERROR: log file not found
DEBUG: create new file
DEBUG: write text to log file
ERROR: file not writeable
') or {
	eprintln('failed to write the file: ${err}')
	return
}

text := os.read_file('app.log') or {
	eprintln('failed to read the file: ${err}')
	return
}

lines := text.split_into_lines()
for line in lines {
	if line.starts_with('DEBUG:') {
	    println(line)
	}
}

}
