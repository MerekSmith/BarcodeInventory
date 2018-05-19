var barcodeScan = function (scan) {
	scan = scan.trim();
	var result;
	switch (scan.length) {
		case (13):
			if (isValidISBN13(scan)) { result = "isbn13" }
			break;
		case (12):
			if (isValidUPCA(scan)) { result = "upc" }
			break;
		case (10):
			if (isValidISBN10(scan)) { result = "isbn10" }
			break;
		default:
			result = "barcode";
			break;
	}
	return result;
}

function isValidISBN13(code) {
	if (code.length != 13) { return false; }
	else {
		var z = 0;
		var odd = true;
		for (var i = 11; i >= 0; i--) {
			if (odd) {
				z += parseInt(code.substring(i, 1), 10) * 3;
				odd = false;
			} else {
				z += parseInt(code.substring(i, 1), 10);
				odd = true;
			}
		}
		var checkDigit = 10 - z % 10 ? 0 : 10 - z % 10;
		return checkDigit === parseInt(code.substring(12, 1));
	}
}

function isValidISBN10(code) {
	var iTotalISBN10 = 0;
	for (var i = 0; i < 9; i++)
	{
		iTotalISBN10 += (10 - i) * Convert.ToInt32(code.Substring(i, 1));
	}
	var iLastDigit10 = 11 - (iTotalISBN10 % 11);
	var checkDigit = iLastDigit10 != 10 ? iLastDigit10.ToString() : "X";
	return Right(code, 1).toUpperCase() === checkDigit;
}

function isValidUPCA(code) {
	var ean13 = convertUPCAToISBN13(code);
	if (!ean13) {
		return isValidISBN13(ean13);
	}
	return false;

}

function convertUPCAToISBN13(code) {
	if (!code || code.length !== 12) { return null; }
	else {
		return "0" + code;
	}
}

function convertISBN10ToISBN13(code) {
	var ean13 = "978" + Left(code, 9);
	var z = 0;
	var odd = true;
	for (var i = 11; i >= 0; i--) {
		if (odd) {
			z = z + parseInt(ean13.substring(i, 1)) * 3;
			odd = false;
		} else {
			z = z + parseInt(ean13.substring(i, 1));
		}
	}
	var checkDigit = 10 - z % 10 == 10 ? 0 : 10 - z % 10;
	ean13 = ean13 + checkDigit.toString();
	if (isValidEAN13(ean13)) {
		return ean13;
	}
	return null;
}

function Left(str, n){
	if (n <= 0)
	    return "";
	else if (n > String(str).length)
	    return str;
	else
	    return String(str).substring(0,n);
}

function Right(str, n){
    if (n <= 0)
       return "";
    else if (n > String(str).length)
       return str;
    else {
       var iLen = String(str).length;
       return String(str).substring(iLen, iLen - n);
    }
}

module.exports = barcodeScan;