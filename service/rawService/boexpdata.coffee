# boexpdata.coffee
soap = require 'soap'
Logger = require('vair_log').Logger
{parseString} = require 'xml2js'

module.exports.BoExpData = (wsdl, companyID, funId, options, callback) ->

	log = Logger.getLogger()
	# mindate=xxx;maxdate=xxx;type=xxx;svid=xxx;empno=xxx

	strCriteria = []
	strCriteria.push "mindate=#{options.mindate}" if options.mindate?
	strCriteria.push "maxdate=#{options.maxdate}" if options.maxdate?
	strCriteria.push "type=#{options.type}" if options.type?
	strCriteria.push "svid=#{options.svid}" if options.svid?
	strCriteria.push "empno=#{options.empno}" if options.empno?

	params = 
		companyID: companyID
		funcID: funId
		filter: strCriteria.join ";"

	console.log params
	soap.createClient wsdl, (err, client) ->
		if err?
			return callback err, null

		client.BOExpData params, (er, data) ->
			log.debug "Request Header: #{JSON.stringify client.lastRequestHeaders}"
			log.debug "Request Body: #{client.lastRequest}"
			log.debug "Response Body #{client.lastResponse}"

			if er?
				return callback er, null

			xmlString = data.BOExpDataResult ? null

			if xmlString?
				parseString xmlString, (parseErr, result) ->
					if parseErr?
						return callback parseErr, null
					if result? and result.Collection?
						return callback null, result.Collection.RECD
					return callback null, null
			else
				return callback null, null