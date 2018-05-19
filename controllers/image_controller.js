//NPM Dependencies
var express = require("express");


//Local Dependencies
var db = require("../models");

module.exports = function (app) {

	app.post('/api/item', (req, res) => {
		var code = 500;
		var message = 'Internal Server Error';
		var response = '';
		var catalogData = {
			upc: req.body.upc,
			model: req.body.model,
			title: req.body.title,
			// category: req.body.category,
			msrp: req.body.msrp,
			description: req.body.description
			// imageUpload: req.body.imageUpload
		};
		console.log("");
		db.cataloginfo.create(catalogData)
			.then(function (model) {
				code = 200;
				message = 'OK';
				response = 'Record is successfully added.';
				res.json({
					code: code,
					message: message,
					response: {
						msg: response
					}
				});
			})
			.catch(function (err) {
				code = 500;
				response = 'Failure to add';
				console.log("test 5");
				res.json({
					code: code,
					message: message,
					response: {
						msg: response
					}
				});
			});
	})
}