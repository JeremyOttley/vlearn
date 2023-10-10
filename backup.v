import mewzax.chalk
import os
import time
import log

const n = time.now()


fn main() {

	source := os.args[1]

	backup_time := n.custom_format("YYYY-MMMM-DD")
	destination := backup_time + "-" + source

	os.cp(source, destination) or {
		log.error(chalk.fg("Failed to back up ${source} to ${destination}", 'red'))
     	return
  	}

	log.info(chalk.fg("${source} has been backed up to ${destination}", 'green'))
}
