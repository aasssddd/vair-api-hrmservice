# log_config.coffee
module.exports = {
	console: {
		"level": "info"
	},
	file: {
		level: "info",
		name: "bookingService.log",
		path: "./log"
	}
}