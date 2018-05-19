var expect = require("chai").expect;
var barcode = require("../service/barcode-scan");

describe("barcode-scan",function(){
	it("If the barcode is too short it will return as a general barcode.", function(){
		expect(barcode("01234")).to.equal("barcode");
	});

	it("If we have a valid UPC it will return upc", function(){
		expect(barcode("011110816405")).to.equal("upc");
	});

	it("If we have a valid isbn13 it will return isbn13", function(){
		expect(barcode("0011110816405")).to.equal("isbn13");
	});

	it("If we have a bunch of weird input we should get barcode back.", function(){
		expect(barcode("93klsdf@")).to.equal("barcode");
	});
});