# service-facade.coffee
Logger = require('vair_log').Logger
config = require '../config'
require_tree = require 'require-tree'
coreService = require_tree './rawService'


class ServiceCtl

	companyId: config.compId
	wsdl: config.wsdl
	log: Logger.getLogger()

	getUser: (criteria, callback) ->
		funcId = "EmpData_A"
		log = @log
		coreService.boexpdata.BoExpData @wsdl, @companyId, funcId, criteria, (err, data) ->
			# log.debug "query EoExpData: #{err} #{data}"
			return callback err, data

module.exports = ServiceCtl