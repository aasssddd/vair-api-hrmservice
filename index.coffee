# index.coffee
Logger = require('vair_log').Logger
restify = require 'restify'
domain = require 'domain'
ServiceCtl = require './service/service-facade'


log = Logger.getLogger()

d = domain.create()

d.on 'error', (err) ->
	log.error "Error occur: #{tosource err}"

d.run =>
	server = restify.createServer {
		name: "hrm webservice",
		version: "1.0.0"
	}

	server.use restify.acceptParser server.acceptable
	server.use restify.queryParser()
	server.use restify.bodyParser()

	server.post "/hrm/getUser", (req, res, next) ->
		log.info "retrieve request with params: #{JSON.stringify req.params}"
		
		serviceCtl = new ServiceCtl
		serviceCtl.getUser req.body, (err, data) ->
			if err?
				return res.json {code: "9000", result: "#{err}"}
			return res.json {code: "0000", result: data}

	server.listen 8000, () ->
		log.info "#{server.name} is listen at #{server.url}"