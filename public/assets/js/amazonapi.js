
// var CryptoJS = require("crypto-js"); 

// The below section formats and creates the amazon url with correctly encoded keys and timestamp.
/////////////////////////////////////////////////////////////////////////

function sha256(stringToSign, secretKey) {
	var hex = CryptoJS.HmacSHA256(stringToSign, secretKey);
	return hex.toString(CryptoJS.enc.Base64);
}

function timestamp() {
	var date = new Date();
	var y = date.getUTCFullYear().toString();
	var m = (date.getUTCMonth() + 1).toString();
	var d = date.getUTCDate().toString();
	var h = date.getUTCHours().toString();
	var min = date.getUTCMinutes().toString();
	var s = date.getUTCSeconds().toString();

	if (m.length < 2) { m = "0" + m; }
	if (d.length < 2) { d = "0" + d; }
	if (h.length < 2) { h = "0" + h; }
	if (min.length < 2) { min = "0" + min; }
	if (s.length < 2) { s = "0" + s }

	var date = y + "-" + m + "-" + d;
	var time = h + ":" + min + ":" + s;
	return date + "T" + time + "Z";
}

function getAmazonURL(searchTerm) {
	var PrivateKey = "Z+wOlQop9dvlRNXLlEJUDfndNKx0oXODfYl5SJd6";
	var PublicKey = "AKIAJRYOQWC2PWS5IWMQ";
	var AssociateTag = "priceit05-20";

	var parameters = [];
	parameters.push("AWSAccessKeyId=" + PublicKey);
	parameters.push("Keywords=" + searchTerm);
	parameters.push("Availability=Available");
	parameters.push("Operation=ItemSearch");
	parameters.push("SearchIndex=All");
	parameters.push("ResponseGroup=" + encodeURIComponent('Images,ItemAttributes,Offers'));
	parameters.push("Service=AWSECommerceService");
	parameters.push("Timestamp=" + encodeURIComponent(timestamp()));
	parameters.push("Version=2011-08-01");
	parameters.push("AssociateTag=" + AssociateTag);

	parameters.sort();
	var paramString = parameters.join('&');

	var signingKey = "GET\n" + "webservices.amazon.com\n" + "/onca/xml\n" + paramString

	var signature = sha256(signingKey, PrivateKey);
	signature = encodeURIComponent(signature);

	var amazonUrl = "https://webservices.amazon.com/onca/xml?" + paramString + "&Signature=" + signature;

	return amazonUrl;
}

// The section below then converts the amazon results from xml to JSON.
////////////////////////////////////////////////////////////////////////////////////////////

// Changes XML to JSON
function xmlToJson(xml) {

	// Create the return object
	var obj = {};

	if (xml.nodeType == 1) { // element
		// do attributes
		if (xml.attributes.length > 0) {
			obj["@attributes"] = {};
			for (var j = 0; j < xml.attributes.length; j++) {
				var attribute = xml.attributes.item(j);
				obj["@attributes"][attribute.nodeName] = attribute.nodeValue;
			}
		}
	} else if (xml.nodeType == 3) { // text
		obj = xml.nodeValue;
	}

	// do children
	if (xml.hasChildNodes()) {
		for (var i = 0; i < xml.childNodes.length; i++) {
			var item = xml.childNodes.item(i);
			var nodeName = item.nodeName;
			if (typeof (obj[nodeName]) == "undefined") {
				obj[nodeName] = xmlToJson(item);
			} else {
				if (typeof (obj[nodeName].push) == "undefined") {
					var old = obj[nodeName];
					obj[nodeName] = [];
					obj[nodeName].push(old);
				}
				obj[nodeName].push(xmlToJson(item));
			}
		}
	}
	return obj;
};

//////////////////////////////////////////////////////////////////////////////////



var amazon = {
	currentItem: {
		id: "Amazon",
		msrp: 0,
		model: '',
		description: '',
		title: '',
		upc: '',
		image: [],
		url: '',
		primeEligible: ''
	},
	getItems: function (searchTerm, data) {
		var amazonUrl = getAmazonURL(encodeURIComponent(searchTerm));
		$.ajax({
			// function below uses searchTerm to generate URL for amazon API
			url: amazonUrl,
			method: "GET",
			crossDomain: true
		}).then(function (response) {
			var results = xmlToJson(response);
			// console.log(results);
			var amazonResults = results.ItemSearchResponse.Items;
			var i = 0;
			for (var j = 0; j < 10; j++) {
				if (amazonResults.Request.IsValid === 'True') {
					i = j;
					j = 11;
				}
			}
			var numResults = parseInt(stringReplace(amazonResults.TotalResults));
			if (numResults !== 0) {
				if (numResults > 1) {
					amazon.currentItem.image = [];
					amazon.currentItem.msrp = stringReplace(amazonResults.Item[i].Offers.Offer.OfferListing.Price.FormattedPrice);
					amazon.currentItem.primeEligible = stringReplace(amazonResults.Item[i].Offers.Offer.OfferListing.IsEligibleForPrime);
					amazon.currentItem.model = stringReplace(amazonResults.Item[i].ItemAttributes.Model);
					amazon.currentItem.description;
					amazon.currentItem.title = stringReplace(amazonResults.Item[i].ItemAttributes.Title);
					amazon.currentItem.upc = stringReplace(amazonResults.Item[i].ItemAttributes.UPC);
					amazon.currentItem.url = stringReplace(amazonResults.Item[i].DetailPageURL);
					// Loops through images to store but sets the limit at 5.
					var numImages = amazonResults.Item[i].ImageSets.ImageSet.length;
					if (numImages > 5) {
						numImages = 5;
					}
					for (var j = 0; j < numImages; j++) {
						amazon.currentItem.image.unshift(stringReplace(amazonResults.Item[i].ImageSets.ImageSet[j].SmallImage.URL));
					}
					// Amazon uses a feature array to hold descriptions. This loops through and makes it into a string to display later.
					if (amazonResults.Item[i].ItemAttributes.Feature) {
						var numFeatures = amazonResults.Item[i].ItemAttributes.Feature.length;
						for (var k = 0; k < numFeatures; k++) {
							amazon.currentItem.description += stringReplace(amazonResults.Item[i].ItemAttributes.Feature[k]) + '<br>';
						}
					} else {
						amazon.currentItem.description = 'no description available';
					}


					return data = amazon.currentItem;
				} else {
					amazon.currentItem.image = [];
					amazon.currentItem.msrp = stringReplace(amazonResults.Item.Offers.Offer.OfferListing.Price.FormattedPrice);
					amazon.currentItem.primeEligible = stringReplace(amazonResults.Item.Offers.Offer.OfferListing.IsEligibleForPrime);
					amazon.currentItem.model = stringReplace(amazonResults.Item.ItemAttributes.Model);
					amazon.currentItem.description;
					amazon.currentItem.title = stringReplace(amazonResults.Item.ItemAttributes.Title);
					amazon.currentItem.upc = stringReplace(amazonResults.Item.ItemAttributes.UPC);
					amazon.currentItem.url = stringReplace(amazonResults.Item.DetailPageURL);
					// Loops through images to store but sets the limit at 5.
					var numImages = amazonResults.Item.ImageSets.ImageSet.length;
					if (numImages > 5) {
						numImages = 5;
					}
					if (numImages > 0) {
						for (var j = 0; j < numImages; j++) {
							amazon.currentItem.image.unshift(stringReplace(amazonResults.Item.ImageSets.ImageSet[j].SmallImage.URL));
						}
					} else {
						amazon.currentItem.image.unshift(stringReplace(amazonResults.Item.ImageSets.ImageSet.SmallImage.URL));
					}

					// Amazon uses a feature array to hold descriptions. This loops through and makes it into a string to display later.
					if (amazonResults.Item[i].ItemAttributes.Feature) {
						var numFeatures = amazonResults.Item.ItemAttributes.Feature.length;
						for (var k = 0; k < numFeatures; k++) {
							amazon.currentItem.description += stringReplace(amazonResults.Item.ItemAttributes.Feature[k]) + '<br>';
						}
					} else {
						amazon.currentItem.description = 'no description available';
					}

					return data = amazon.currentItem;
				}
			} else {
				displayFoundNothing('amazon');
			}
			// end of then
		});
	}
};

// This removes unneeded text on data strings from Amazon.
function stringReplace(string) {
	// console.log(string);
	if (string) {
		return JSON.stringify(string).slice(10).replace('"', '').replace('}', '').replace('$', '');
	} else {
		return '';
	}

};
