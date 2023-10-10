import mewzax.chalk
import os
import time

const n = time.now()


fn main() {
	source := os.args[1]
	backup_time := n.custom_format("YYYY-MMMM-DD")
	destination := backup_time + "-" + source
	os.cp(source, destination) or {
     eprintln('Failed to copy file or directory, error: ${err}')
     return
  }
	println(chalk.fg("${source} has been backed up to ${destination}", 'green'))
}
