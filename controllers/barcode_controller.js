//NPM Dependencies
var express = require("express");
var jwt = require("jsonwebtoken");
var bcrypt = require("bcryptjs");

//Local Dependencies
var db = require("../models");
var keys = require("../keys");
var Jwtkey = keys.Jwtkey.secret_key;
var User = db.securityuser;
var VerifyToken = require('./verifyToken');
module.exports = function (app) {

	app.get('/', (req, res) => {
		res.render("login");
	});

	app.post('/login', function (req, res) {

		User.findOne({
			where: {
				userName: req.body.userName
			}
		}).then(function (user) {
			// if (err) return res.status(500).send('Error on the server.');
			if (!user) return res.status(404).send('No user found.');

			// check if the password is valid
			var passwordIsValid = bcrypt.compareSync(req.body.password, user.password);
			if (!passwordIsValid) return res.status(401).send({ auth: false, token: null });

			// if user is found and password is valid
			// create a token
			var token = jwt.sign({ id: user._id }, Jwtkey, {
				expiresIn: 86400 // expires in 24 hours
			});

			// return the information including token as JSON
			res.status(200).send({ auth: true, token: token });
		});

	});

	app.get('/me', VerifyToken, function(req, res, next) {
	
		User.findById(req.userId, { password: 0 }, function (err, user) {
			if (err) return res.status(500).send("There was a problem finding the user.");
			if (!user) return res.status(404).send("No user found.");
			res.status(200).send(user);
		});
	
	});

	app.get('/logout', function(req, res) {
		// res.status(200).send({ auth: false, token: null });
		res.render("login");
	});

	app.get('/index', (req, res) => {
		// find the user
			var user = {
				firstName: "Admin",
				lastName: "User"
			}
			res.render("index", { user });
		
	});

	app.get('/newUser', (req, res) => {
		res.render("newUser");
	});

	app.post('/register', function (req, res) {
		db.securityuser.count({
			where: {
				//where email or userName is found
				email: req.body.email
			}
		}).then(count => {
			console.log(count);
			if (count < 1) {

				var hashedPassword = bcrypt.hashSync(req.body.password, 8);

				db.securityuser.create({
					userName: req.body.userName,
					email: req.body.email,
					password: hashedPassword,
					firstName: req.body.firstName,
					lastName: req.body.lastName,
					address: req.body.address,
					address2: req.body.address2,
					city: req.body.city,
					state: req.body.state,
					zip: req.body.zip
				},
					function (err, user) {
						if (err) return res.status(500).send("There was a problem registering the user.")

						console.log("this is the user we created", user);
						res.status(200).send('/index');

					});
			}
		});

	});

	app.get('/item', /*VerifyToken,*/ (req, res) => {
		// console.log("userid",req.userId);
		// User.findById(req.userId, { password: 0 }, function (err, user) {
		// 	if (err) return res.status(500).send("There was a problem finding the user.");
		// 	if (!user) return res.status(404).send("No user found.");
		// 	console.log(user);
		// 	res.status(200).send(user);	
		// });
		db.cataloginfocategory.findAll({
		}).then(function (results) {
			res.render("item",{ categories: results });
		});
		
	});

	app.get('/categories', (req, res) => {
		res.render("categories");
	});

	app.get('/index', (req, res) => {
		console.log(req.params);
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

	app.get('/api/userexists', (req, res) => {
		db.securityuser.findOne({
			where: {
				email: req.body.email,
				userName: req.body.userName
			}
		}).then(function (results) {
			res.json(results);
		});
	})



}
