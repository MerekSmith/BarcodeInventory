//NPM Dependencies
var express = require("express");
var jwt = require("jsonwebtoken");

//Local Dependencies
var db = require("../models");

module.exports = function (app) {

	app.get('/', (req, res) => {
		res.render("login");
	});

	app.get('/newUser', (req, res) => {
		res.render("newUser");
	});

	app.get('/item', (req, res) => {
			res.render("item");
	});
	
	app.get('/categories', (req, res) => {
			res.render("categories");
	});
	

	app.get('/index', (req, res) => {
		res.render("index");
	});

	//get all catalog info items that have a matching upc
	app.get('/api/upc/:upc', function (req, res) {
		db.cataloginfo.findOne({
			where: {
				upc: req.params.upc
			}
		}).then(function (results) {
			
			res.json(results);
	
		});
	});

	//get all catalog info items that have a matching model
	app.get('/api/model/:model', (req, res) => {
		db.cataloginfo.findAll({
			where: {
				model: req.params.model
			}
		}).then(function (results) {
			res.json(results);
		});
	});

	//get all catalog info items that have a matching title
	app.get('/api/title/:title', (req, res) => {
		db.cataloginfo.findAll({
			where: {
				title: req.params.title
			}
		}).then(function (results) {
			res.json(results);
		});
	});
	
	//get all catalog categories data
	app.get('/api/categories/', (req, res) => {
		db.cataloginfocategory.findAll({
		}).then(function (results) {
			res.json(results);
		});
	});
	
	//get all catalog categories data
	app.get('/api/allitems/', (req, res) => {
		db.cataloginfo.findAll({
		}).then(function (results) {
			res.json(results);
		});
	});

	app.put('/app/create/:catalogExists/:data', (req,res) => {

	})


	app.post('/login', function (req, res) {

		// find the user
		db.securityuser.findOne({
			name: req.body.name
		}, function (err, user) {

			if (err) throw err;

			if (!user) {
				res.json({ success: false, message: 'Authentication failed. User not found.' });
			} else if (user) {

				// check if password matches
				if (user.password != req.body.password) {
					res.json({ success: false, message: 'Authentication failed. Wrong password.' });
				} else {

					// if user is found and password is right
					// create a token with only our given payload
					// we don't want to pass in the entire user since that has the password
					const payload = {
						admin: user.admin
					};
					var token = jwt.sign(payload, app.get('superSecret'), {
						expiresInMinutes: 1440 // expires in 24 hours
					});

					// return the information including token as JSON
					res.json({
						success: true,
						message: 'Enjoy your token!',
						token: token
					});
				}

			}

		});
	});

	// app.post('/login', (req, res) => {
	// 	var message;
	// 	for (var user of users) {
	// 		if (user.name != req.body.name) {
	// 			message = "Wrong Name";
	// 		} else {
	// 			if (user.password != req.body.password) {
	// 				message = "Wrong Password";
	// 				break;
	// 			}
	// 			else {
	// 				//create the token.
	// 				var token = jwt.sign(user, "samplesecret");
	// 				message = "Login Successful";
	// 				break;
	// 			}
	// 		}
	// 	}
	// 	//If token is present pass the token to client else send respective message
	// 	if (token) {
	// 		res.status(200).json({
	// 			message,
	// 			token
	// 		});
	// 	}
	// 	else {
	// 		res.status(403).json({
	// 			message
	// 		});
	// 	}
	// });

	app.use((req, res, next) => {
		// check header or url parameters or post parameters for token
		var token = req.body.token || req.query.token || req.headers['x-access-token'];
		if (token) {
			//Decode the token
			jwt.verify(token, "samplesecret", (err, decod) => {
				if (err) {
					res.status(403).json({
						message: "Wrong Token"
					});
				}
				else {
					//If decoded then call next() so that respective route is called.
					req.decoded = decod;
					next();
				}
			});
		}
		else {
			res.status(403).json({
				message: "No Token"
			});
		}
	});

	app.post('/getusers', (req, res) => {
		var user_list = [];
		users.forEach((user) => {
			user_list.push({ "name": user.name });
		})
		res.send(JSON.stringify({ users: user_list }));
	});

}
