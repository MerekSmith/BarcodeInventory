use enterprisedb;

INSERT INTO securityuser (firstName,lastName,userName,password,active) 
VALUES 
("Thomas","Benedict","tbenedict","$2a$08$tepAEmbIbngSsyjfPHZgHOy5SoOQmHx8hct6O03ew4GWG9BoWrYGi",1),
("Merek","Smith","msmith","$2a$08$5cN2c32OUV9mzL6Gz9fqaOT6PkbkjdV/6CegXMNZiHT41mMZkadbK",1),
("Tyler","Schmauch","tschmauch","$2a$08$uxdxqKoad/T5HrU7c7fMZ.P9NAo9vzydfsyhPYV7vlMlfGooKpWPe",1),
("Dead","Account","toast","$2a$08$K6XlqFTvqFA4yebgRWmzquSdufy5NcI5LLEGtOrjID8jHaiZr3lPe",0);

INSERT INTO purchasetype (description) 
VALUES
("consignment"),("bid"),("purchase");

INSERT INTO productsource (name,user,password)
VALUES 
("ours","master","password"),
("my budy","mybudy","password"),
("your budy", "ybudy","password");

INSERT INTO itemcondition (description)
VALUES
("DamageLight"),("DamageModerate"),("DamageSevere"),("IncompleteDamageLight"),("IncompleteDamageModerate"),("IncompleteDamageSevere"),("IncompleteUsedHeavily"),("IncompleteUsedLightly"),("IncompleteUsedModerately"),("New"),("UsedHeavily"),("UsedLightly"),("UsedModerately"),("UsedRestored");

INSERT INTO itemtype (description)
VALUES
("Commodity"),("Fee"),("Service");

INSERT INTO packagingcondition (description)
VALUES
("Missing"),
("OriginalLight")
,("OriginalModerate")
,("OriginalOpened")
,("OriginalOpenedLight")
,("OriginalOpenedModerate")
,("OriginalOpenedSevere")
,("OriginalPristine")
,("OriginalSevere")
,("UnoriginalLight")
,("UnoriginalModerate")
,("UnoriginalOpened")
,("UnoriginalOpenedLight")
,("UnoriginalOpenedModerate")
,("UnoriginalOpenedSevere")
,("UnoriginalPristine")
,("UnoriginalSevere");

INSERT INTO cataloginfoattribute (description,valuesCSV,valuesRegex,uiType,validationErrorMessage)
VALUES
("Length (Inches)","NULL","^\d+(\.\d+)?$","TextInput","Length must be in inches.")
,("Height (Inches)","NULL","^\d+(\.\d+)?$","TextInput","Height must be in inches.")
,("Width (Inches)","NULL","^\d+(\.\d+)?$","TextInput","Width must be in inches.")
,("Lot Quantity","NULL","^.+$","TextInput","This must be a number.")
,("Mens Shoe Size","6,6.5,7,7.5,8,8.5,9,9.5,10,10.5,11,11.5,12,12.5,13,13.5,14,14.5,15,15.5,16,16.5,17,17.5,18,18.5,19,19.5","^(1[0-9]|[6-9])(\.(5))?$","ComboBox","This must be a legitimate shoe size.  If it is and you are getting this error message, please report this through the 'submit error' tool.")
,("Bed Size","California King,King,Queen,Full,Double,Single,Other","^(California King)|(King)|(Queen)|(Full)|(Double)|(Single)|(Other)$","ComboBox","We're looking for bed size here.")
,("Womens Shoe Size","4,4.5,5,5.5,6,6.5,7,7.5,8,8.5,9,9.5,10,10.5,11,11.5,12,12.5,13,13.5,14,14.5,15,15.5,16,16.5","^(1[0-6]|[4-9])(\.(5))?$","ComboBox","This must be a legitimate shoe size.  If it is and you are getting this error message, please report this through the 'submit error' tool.")
,("Toddler Shoe Size","1,1.5,2,2.5,3.5,4,4.5,5,5.5,6,6.5,7,7.5,8,8.5,9,9.5,10,10.5,11,11.5,12,12.5,13,13.5","^(1[0-3]|[1-9])(\.(5))?$","ComboBox","This must be a legitimate shoe size.  If it is and you are getting this error message, please report this through the 'submit error' tool.")
,("Kids Shoe Size","1,1.5,2,2.5,3.5,4,4.5,5,5.5,6,6.5,7,7.5,8,8.5,9,9.5,10,10.5,11,11.5,12,12.5,13,13.5","^(1[0-3]|[1-9])(\.(5))?$","ComboBox","This must be a legitimate shoe size.  If it is and you are getting this error message, please report this through the 'submit error' tool.")
,("Gender","Unspecified,Male,Female","^(Unspecified)|(Male)|(Female)$","ComboBox","Male and Female are your only options.  Anything else is lame.")
,("Weight","NULL","^\d+(\.\d+)?((kg)|(lbs)|(g)|(mg)|(oz))$","TextInput","Weight must be filled out in kg, lbs, g, mg, or oz.")
,("Autographed","Yes,No","^((Yes)|(No))$","ComboBox","Answer must be yes or no.")
,("Color","NULL","^.+$","TextInput","Color must be an actual color.  Whatever you typed in wasn't even a word.")
,("Channels","NULL","^\d+$","TextInput","Channels must be a number.")
,("Watts","NULL","^\d+$","TextInput","Watts must be a number.")
,("Game Console","GameCube,Wii,PSP,DS,GameBoy,XBox, XBox 360,PS2,PS3,DS","^((GameCube)|(Wii)|(PSP)|(DS)|(GameBoy)|(XBox)|(XBox 360)|(PS2)|(PS3)|(DS))$","ComboBox","Please select a console from the list.")
,("Screen Size (Inches)","NULL","^\d+$","TextInput","Screen size must be in inches.")
,("Megapixels","NULL","^\d+(\.[05])?$","TextInput","This must be a number.")
,("Capacity (Megabytes)","NULL","^\d+$","TextInput","This must be a number.")
,("Expiration Date","NULL","((^(10|12|0?[13578])([/])(3[01]|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])([/])(30|[12][0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(2[0-8]|1[0-9]|0?[1-9])([/])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)([/])(29)([/])([2468][048]00)$)|(^(0?2)([/])(29)([/])([3579][26]00)$)|(^(0?2)([/])(29)([/])([1][89][0][48])$)|(^(0?2)([/])(29)([/])([2-9][0-9][0][48])$)|(^(0?2)([/])(29)([/])([1][89][2468][048])$)|(^(0?2)([/])(29)([/])([2-9][0-9][2468][048])$)|(^(0?2)([/])(29)([/])([1][89][13579][26])$)|(^(0?2)([/])(29)([/])([2-9][0-9][13579][26])$))","TextInput","Please put in a valid date.")
,("Pack Quantity","NULL","^\d+$","TextInput","This must be a number.")
,("Pieces Per Set","NULL","^\d+$","TextInput","This must be a number.")
,("Shirt Size","NULL","^.+$","TextInput","Please put in a valid shirt size.")
,("Size","NULL","^.+$","TextInput","Please put in a valid size.")
,("Processor Type","NULL","^.+$","TextInput","Please enter a processor type.")
,("Processor Speed","NULL","^.+$","TextInput","Please enter a processor speed.")
,("Memory","NULL","^.+$","TextInput","Please enter the total memory.")
,("Hard Drive Size","NULL","^.+$","TextInput","Please enter the drive size.")
,("Operating System","NULL","^.+$","TextInput","Please enter an OS.");

INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (1,681,"Antiques",2,"Art -> Antiques",0);                                 
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (2,681,"Autographed Items",2,"Art -> Autographed Items",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (3,681,"Figurines/Statues",2,"Art -> Figurines/Statues",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (4,681,"Framed Art",2,"Art -> Framed Art",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (5,681,"Prints/Posters",2,"Art -> Prints/Posters",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (6,3,"Bronze",3,"Art -> Figurines/Statues -> Bronze",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (7,3,"Porcelain",3,"Art -> Figurines/Statues -> Porcelain",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (8,3,"Wood",3,"Art -> Figurines/Statues -> Wood",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (9,4,"Certified",3,"Art -> Framed Art -> Certified",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (10,4,"Signed And Numbered",3,"Art -> Framed Art -> Signed And Numbered",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (11,5,"Canvas",3,"Art -> Prints/Posters -> Canvas",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (12,5,"Numbered And Signed",3,"Art -> Prints/Posters -> Numbered And Signed",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (13,25,"Belts",3,"Clothing -> Accessories -> Belts",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (14,25,"Hangers",3,"Clothing -> Accessories -> Hangers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (15,25,"Purses",3,"Clothing -> Accessories -> Purses",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (16,25,"Socks",3,"Clothing -> Accessories -> Socks",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (17,25,"Wallets",3,"Clothing -> Accessories -> Wallets",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (18,26,"Blankets",3,"Clothing -> Bedding -> Blankets",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (19,26,"Comforters",3,"Clothing -> Bedding -> Comforters",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (20,26,"Pillows",3,"Clothing -> Bedding -> Pillows",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (21,26,"Sheets",3,"Clothing -> Bedding -> Sheets",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (22,27,"Baby",3,"Clothing -> Children -> Baby",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (23,27,"Bottoms",3,"Clothing -> Children -> Bottoms",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (24,27,"Tops",3,"Clothing -> Children -> Tops",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (25,682,"Accessories",2,"Clothing -> Accessories",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (26,682,"Bedding",2,"Clothing -> Bedding",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (27,682,"Children",2,"Clothing -> Children",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (28,682,"Curtains",2,"Clothing -> Curtains",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (29,682,"Kitchen Linen",2,"Clothing -> Kitchen Linen",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (30,682,"Womens",2,"Clothing -> Womens",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (31,682,"Men",2,"Clothing -> Men",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (32,682,"Seasonal",2,"Clothing -> Seasonal",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (33,682,"Shoe Laces",2,"Clothing -> Shoe Laces",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (35,682,"Towels",2,"Clothing -> Towels",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (36,682,"Uniforms",2,"Clothing -> Uniforms",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (37,30,"Bottoms",3,"Clothing -> Womens -> Bottoms",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (38,30,"Coats",3,"Clothing -> Womens -> Coats",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (39,30,"Dresses",3,"Clothing -> Womens -> Dresses",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (40,30,"Sleepwear",3,"Clothing -> Womens -> Sleepwear",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (41,30,"Suits",3,"Clothing -> Womens -> Suits",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (42,30,"Swim Wear",3,"Clothing -> Womens -> Swim Wear",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (43,30,"Tops",3,"Clothing -> Womens -> Tops",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (44,30,"Underwear",3,"Clothing -> Womens -> Underwear",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (45,31,"Bottoms",3,"Clothing -> Men -> Bottoms",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (46,31,"Coats",3,"Clothing -> Men -> Coats",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (47,31,"Sleepwear",3,"Clothing -> Men -> Sleepwear",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (48,31,"Suits",3,"Clothing -> Men -> Suits",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (49,31,"Swim Wear",3,"Clothing -> Men -> Swim Wear",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (50,31,"Tops",3,"Clothing -> Men -> Tops",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (51,31,"Underwear",3,"Clothing -> Men -> Underwear",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (52,118,"Bag",4,"Electronics -> Photo -> Accessories -> Bag",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (53,118,"Tripod",4,"Electronics -> Photo -> Accessories -> Tripod",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (54,119,"Blank Media Tapes",4,"Electronics -> Photo -> Camcorder -> Blank Media Tapes",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (55,76,"Accessories",3,"Electronics -> Car Audio -> Accessories",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (56,76,"Amplifier",3,"Electronics -> Car Audio -> Amplifier",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (57,76,"Car Video",3,"Electronics -> Car Audio -> Car Video",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (58,76,"Cd Player",3,"Electronics -> Car Audio -> Cd Player",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (59,76,"Satellite Radio",3,"Electronics -> Car Audio -> Satellite Radio",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (60,76,"Speakers",3,"Electronics -> Car Audio -> Speakers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (61,77,"Cell Phone Accessories",3,"Electronics -> Cellular -> Cell Phone Accessories",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (62,77,"Cell Phones",3,"Electronics -> Cellular -> Cell Phones",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (63,77,"Pagers",3,"Electronics -> Cellular -> Pagers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (64,78,"Desktop",3,"Electronics -> Computers -> Desktop",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (65,78,"Drives And Storage",3,"Electronics -> Computers -> Drives And Storage",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (66,78,"Laptop",3,"Electronics -> Computers -> Laptop",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (67,78,"Networking And Communication",3,"Electronics -> Computers -> Networking And Communication",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (68,78,"Pc Components",3,"Electronics -> Computers -> Pc Components",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (69,78,"Peripherals",3,"Electronics -> Computers -> Peripherals",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (70,78,"Servers",3,"Electronics -> Computers -> Servers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (71,65,"Cd-Rw",4,"Electronics -> Computers -> Drives And Storage -> Cd-Rw",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (72,65,"Data Tapes",4,"Electronics -> Computers -> Drives And Storage -> Data Tapes",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (73,65,"Dvd-R",4,"Electronics -> Computers -> Drives And Storage -> Dvd-R",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (74,65,"Hard Drives",4,"Electronics -> Computers -> Drives And Storage -> Hard Drives",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (75,65,"Usb Drives",4,"Electronics -> Computers -> Drives And Storage -> Usb Drives",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (76,683,"Car Audio",2,"Electronics -> Car Audio",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (77,683,"Cellular",2,"Electronics -> Cellular",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (78,683,"Computers",2,"Electronics -> Computers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (79,683,"Gps",2,"Electronics -> Gps",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (80,683,"Home Theater",2,"Electronics -> Home Theater",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (81,683,"Ic Chips And Circuit Boards",2,"Electronics -> Ic Chips And Circuit Boards",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (82,683,"Photo",2,"Electronics -> Photo",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (83,683,"Portable Electronics",2,"Electronics -> Portable Electronics",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (84,683,"Telecom",2,"Electronics -> Telecom",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (85,79,"Gps Accessories",3,"Electronics -> Gps -> Gps Accessories",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (86,79,"Hand Held",3,"Electronics -> Gps -> Hand Held",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (87,79,"Marine",3,"Electronics -> Gps -> Marine",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (88,79,"Vehicle",3,"Electronics -> Gps -> Vehicle",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (89,80,"Accessories",3,"Electronics -> Home Theater -> Accessories",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (90,80,"Amplifiers",3,"Electronics -> Home Theater -> Amplifiers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (91,80,"Cd Player",3,"Electronics -> Home Theater -> Cd Player",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (92,80,"Dvd Player",3,"Electronics -> Home Theater -> Dvd Player",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (93,80,"Dvr/Satellite Receiver",3,"Electronics -> Home Theater -> Dvr/Satellite Receiver",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (94,80,"Receivers",3,"Electronics -> Home Theater -> Receivers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (95,80,"Remotes",3,"Electronics -> Home Theater -> Remotes",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (96,80,"Speakers",3,"Electronics -> Home Theater -> Speakers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (97,80,"Tv",3,"Electronics -> Home Theater -> Tv",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (98,67,"Cards",4,"Electronics -> Computers -> Networking And Communication -> Cards",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (99,67,"Hubs",4,"Electronics -> Computers -> Networking And Communication -> Hubs",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (100,67,"Routers",4,"Electronics -> Computers -> Networking And Communication -> Routers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (101,67,"Switches",4,"Electronics -> Computers -> Networking And Communication -> Switches",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (102,68,"Computer Cases",4,"Electronics -> Computers -> Pc Components -> Computer Cases",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (103,68,"Cooling Fans",4,"Electronics -> Computers -> Pc Components -> Cooling Fans",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (104,68,"Cpu Processors",4,"Electronics -> Computers -> Pc Components -> Cpu Processors",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (105,68,"Graphics Cards",4,"Electronics -> Computers -> Pc Components -> Graphics Cards",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (106,68,"Internal Hard Drives",4,"Electronics -> Computers -> Pc Components -> Internal Hard Drives",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (107,68,"Memory",4,"Electronics -> Computers -> Pc Components -> Memory",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (108,68,"Motherboards",4,"Electronics -> Computers -> Pc Components -> Motherboards",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (109,68,"Power Supplies",4,"Electronics -> Computers -> Pc Components -> Power Supplies",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (110,68,"Sound Cards",4,"Electronics -> Computers -> Pc Components -> Sound Cards",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (111,69,"Cables",4,"Electronics -> Computers -> Peripherals -> Cables",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (112,69,"Keyboard",4,"Electronics -> Computers -> Peripherals -> Keyboard",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (113,69,"Monitors",4,"Electronics -> Computers -> Peripherals -> Monitors",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (114,69,"Mouse",4,"Electronics -> Computers -> Peripherals -> Mouse",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (115,69,"Pc Speakers",4,"Electronics -> Computers -> Peripherals -> Pc Speakers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (116,78,"Printer",3,"Electronics -> Computers -> Printer",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (117,69,"Projector",4,"Electronics -> Computers -> Peripherals -> Projector",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (118,82,"Accessories",3,"Electronics -> Photo -> Accessories",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (119,82,"Camcorder",3,"Electronics -> Photo -> Camcorder",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (120,82,"Camera",3,"Electronics -> Photo -> Camera",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (121,82,"Digital Frames",3,"Electronics -> Photo -> Digital Frames",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (122,82,"Memory Cards",3,"Electronics -> Photo -> Memory Cards",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (123,83,"2-Way Radios",3,"Electronics -> Portable Electronics -> 2-Way Radios",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (124,83,"Boom Boxes",3,"Electronics -> Portable Electronics -> Boom Boxes",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (125,83,"Headphones",3,"Electronics -> Portable Electronics -> Headphones",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (126,83,"Portable Media Player",3,"Electronics -> Portable Electronics -> Portable Media Player",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (127,116,"Accessories",4,"Electronics -> Computers -> Printer -> Accessories",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (128,116,"Ink Cartridges",4,"Electronics -> Computers -> Printer -> Ink Cartridges",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (129,116,"Printer Parts",4,"Electronics -> Computers -> Printer -> Printer Parts",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (130,116,"Toner",4,"Electronics -> Computers -> Printer -> Toner",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (131,684,"Fabric By Yard",2,"Fabric -> Fabric By Yard",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (132,684,"Leather",2,"Fabric -> Leather",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (133,684,"Quilting",2,"Fabric -> Quilting",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (134,684,"Rugs",2,"Fabric -> Rugs",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (135,684,"Seasonal",2,"Fabric -> Seasonal",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (136,684,"Sewing Accessories",2,"Fabric -> Sewing Accessories",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (137,684,"Sewing Machine",2,"Fabric -> Sewing Machine",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (138,134,"Room Size Rugs",3,"Fabric -> Rugs -> Room Size Rugs",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (139,134,"Runners",3,"Fabric -> Rugs -> Runners",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (140,134,"Small Area Rugs",3,"Fabric -> Rugs -> Small Area Rugs",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (141,136,"Buttons",3,"Fabric -> Sewing Accessories -> Buttons",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (142,136,"Catalogs",3,"Fabric -> Sewing Accessories -> Catalogs",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (143,136,"Clothing Patterns",3,"Fabric -> Sewing Accessories -> Clothing Patterns",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (144,136,"Elastic",3,"Fabric -> Sewing Accessories -> Elastic",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (145,136,"Needles",3,"Fabric -> Sewing Accessories -> Needles",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (146,136,"Threads",3,"Fabric -> Sewing Accessories -> Threads",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (147,136,"Trims/Ribbons",3,"Fabric -> Sewing Accessories -> Trims/Ribbons",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (148,136,"Yarn",3,"Fabric -> Sewing Accessories -> Yarn",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (149,136,"Zippers",3,"Fabric -> Sewing Accessories -> Zippers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (150,162,"Benches",3,"Furniture -> Accent Furniture -> Benches",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (151,162,"Chests",3,"Furniture -> Accent Furniture -> Chests",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (152,162,"Coffee Table",3,"Furniture -> Accent Furniture -> Coffee Table",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (153,162,"Displays",3,"Furniture -> Accent Furniture -> Displays",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (154,162,"Mirrors",3,"Furniture -> Accent Furniture -> Mirrors",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (155,162,"Ottomans",3,"Furniture -> Accent Furniture -> Ottomans",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (156,163,"Armoires",3,"Furniture -> Bedroom -> Armoires",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (157,163,"Beds",3,"Furniture -> Bedroom -> Beds",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (158,163,"Dressers",3,"Furniture -> Bedroom -> Dressers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (159,157,"Mattresses",4,"Furniture -> Bedroom -> Beds -> Mattresses",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (160,164,"Grandfather Clocks",3,"Furniture -> Clocks -> Grandfather Clocks",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (161,164,"Wall Clocks",3,"Furniture -> Clocks -> Wall Clocks",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (162,685,"Accent Furniture",2,"Furniture -> Accent Furniture",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (163,685,"Bedroom",2,"Furniture -> Bedroom",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (164,685,"Clocks",2,"Furniture -> Clocks",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (165,685,"Kitchen",2,"Furniture -> Kitchen",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (166,685,"Living Room",2,"Furniture -> Living Room",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (167,685,"Office",2,"Furniture -> Office",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (168,165,"Cabinets",3,"Furniture -> Kitchen -> Cabinets",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (169,165,"Dining Table",3,"Furniture -> Kitchen -> Dining Table",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (170,165,"Stools",3,"Furniture -> Kitchen -> Stools",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (171,166,"Bean Bags",3,"Furniture -> Living Room -> Bean Bags",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (172,166,"Curios",3,"Furniture -> Living Room -> Curios",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (173,166,"Media Furniture",3,"Furniture -> Living Room -> Media Furniture",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (174,166,"Sofas",3,"Furniture -> Living Room -> Sofas",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (175,167,"Bookcases",3,"Furniture -> Office -> Bookcases",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (176,167,"Conference Table",3,"Furniture -> Office -> Conference Table",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (177,167,"Desks",3,"Furniture -> Office -> Desks",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (178,167,"File Cabinets",3,"Furniture -> Office -> File Cabinets",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (179,167,"Office Chairs",3,"Furniture -> Office -> Office Chairs",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (180,167,"Organizer",3,"Furniture -> Office -> Organizer",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (181,167,"Stack Chairs",3,"Furniture -> Office -> Stack Chairs",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (182,167,"Utility Carts",3,"Furniture -> Office -> Utility Carts",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (183,221,"Baking Chocolate",3,"Grocery -> Baking -> Baking Chocolate",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (184,221,"Cake Mix",3,"Grocery -> Baking -> Cake Mix",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (185,221,"Cooking Oil",3,"Grocery -> Baking -> Cooking Oil",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (186,221,"Dry Milk",3,"Grocery -> Baking -> Dry Milk",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (187,221,"Flour",3,"Grocery -> Baking -> Flour",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (188,221,"Jello",3,"Grocery -> Baking -> Jello",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (189,221,"Olive Oil",3,"Grocery -> Baking -> Olive Oil",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (190,221,"Pudding",3,"Grocery -> Baking -> Pudding",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (191,221,"Sugar",3,"Grocery -> Baking -> Sugar",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (192,224,"Canned Fish",3,"Grocery -> Canned Food -> Canned Fish",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (193,224,"Canned Fruit",3,"Grocery -> Canned Food -> Canned Fruit",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (194,224,"Canned Vegetables",3,"Grocery -> Canned Food -> Canned Vegetables",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (195,224,"Soup",3,"Grocery -> Canned Food -> Soup",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (196,225,"Hot Cereal",3,"Grocery -> Cereal -> Hot Cereal",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (197,227,"Air Fresheners",3,"Grocery -> Cleaning Supplies -> Air Fresheners",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (198,227,"Household Cleaners",3,"Grocery -> Cleaning Supplies -> Household Cleaners",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (199,228,"Bbq Sauce",3,"Grocery -> Condiments -> Bbq Sauce",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (200,228,"Horseradish",3,"Grocery -> Condiments -> Horseradish",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (201,228,"Ketchup",3,"Grocery -> Condiments -> Ketchup",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (202,228,"Mayonnaise",3,"Grocery -> Condiments -> Mayonnaise",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (203,228,"Salad Dressing",3,"Grocery -> Condiments -> Salad Dressing",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (204,208,"Cheese",4,"Grocery -> Deli -> Dairy -> Cheese",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (205,208,"Milk",4,"Grocery -> Deli -> Dairy -> Milk",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (206,208,"Yogurt",4,"Grocery -> Deli -> Dairy -> Yogurt",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (207,229,"Cookie Dough",3,"Grocery -> Deli -> Cookie Dough",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (208,229,"Dairy",3,"Grocery -> Deli -> Dairy",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (209,229,"Eggs",3,"Grocery -> Deli -> Eggs",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (210,229,"Lunch Meat",3,"Grocery -> Deli -> Lunch Meat",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (211,229,"Salad",3,"Grocery -> Deli -> Salad",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (212,230,"Dinners",3,"Grocery -> Frozen -> Dinners",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (213,230,"Fish",3,"Grocery -> Frozen -> Fish",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (214,230,"Ice Cream",3,"Grocery -> Frozen -> Ice Cream",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (215,230,"Institutional",3,"Grocery -> Frozen -> Institutional",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (216,230,"Meat",3,"Grocery -> Frozen -> Meat",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (217,230,"Pastry",3,"Grocery -> Frozen -> Pastry",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (218,230,"Shrimp",3,"Grocery -> Frozen -> Shrimp",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (219,230,"Vegetables",3,"Grocery -> Frozen -> Vegetables",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (220,686,"Baby Food",2,"Grocery -> Baby Food",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (221,686,"Baking",2,"Grocery -> Baking",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (222,686,"Bread",2,"Grocery -> Bread",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (223,686,"Candy",2,"Grocery -> Candy",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (224,686,"Canned Food",2,"Grocery -> Canned Food",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (225,686,"Cereal",2,"Grocery -> Cereal",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (226,686,"Chips And Cookies",2,"Grocery -> Chips And Cookies",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (227,686,"Cleaning Supplies",2,"Grocery -> Cleaning Supplies",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (228,686,"Condiments",2,"Grocery -> Condiments",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (229,686,"Deli",2,"Grocery -> Deli",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (230,686,"Frozen",2,"Grocery -> Frozen",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (231,686,"International Food",2,"Grocery -> International Food",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (232,686,"Jam And Jelly",2,"Grocery -> Jam And Jelly",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (233,686,"Juice",2,"Grocery -> Juice",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (234,686,"Paper Products",2,"Grocery -> Paper Products",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (235,686,"Pasta Products",2,"Grocery -> Pasta Products",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (236,686,"Pet Supplies",2,"Grocery -> Pet Supplies",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (237,686,"Produce",2,"Grocery -> Produce",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (238,686,"Snacks",2,"Grocery -> Snacks",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (239,686,"Spices",2,"Grocery -> Spices",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (240,231,"Chinese",3,"Grocery -> International Food -> Chinese",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (241,231,"European",3,"Grocery -> International Food -> European",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (242,231,"Mexican",3,"Grocery -> International Food -> Mexican",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (243,216,"Beef",4,"Grocery -> Frozen -> Meat -> Beef",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (244,216,"Chicken",4,"Grocery -> Frozen -> Meat -> Chicken",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (245,216,"Pork",4,"Grocery -> Frozen -> Meat -> Pork",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (246,216,"Yak",4,"Grocery -> Frozen -> Meat -> Yak",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (247,234,"Napkins",3,"Grocery -> Paper Products -> Napkins",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (248,234,"Paper Cups",3,"Grocery -> Paper Products -> Paper Cups",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (249,234,"Paper Plates",3,"Grocery -> Paper Products -> Paper Plates",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (250,234,"Paper Towel",3,"Grocery -> Paper Products -> Paper Towel",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (251,234,"Toilet Paper",3,"Grocery -> Paper Products -> Toilet Paper",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (252,234,"Utensils",3,"Grocery -> Paper Products -> Utensils",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (253,237,"Dry Good",3,"Grocery -> Produce -> Dry Good",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (254,237,"Fruit",3,"Grocery -> Produce -> Fruit",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (255,237,"Vegetable",3,"Grocery -> Produce -> Vegetable",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (256,270,"Body Cream",3,"Health & Beauty -> Body Care -> Body Cream",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (257,270,"Body Lotions",3,"Health & Beauty -> Body Care -> Body Lotions",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (258,270,"Body Wash",3,"Health & Beauty -> Body Care -> Body Wash",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (259,272,"Ladies",3,"Health & Beauty -> Deodorants -> Ladies",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (260,272,"Men",3,"Health & Beauty -> Deodorants -> Men",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (261,273,"Astringents/Cleaner",3,"Health & Beauty -> Facial Care -> Astringents/Cleaner",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (262,273,"Creams",3,"Health & Beauty -> Facial Care -> Creams",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (263,273,"Tonics",3,"Health & Beauty -> Facial Care -> Tonics",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (264,274,"Foot Cream",3,"Health & Beauty -> Foot Care -> Foot Cream",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (265,274,"Pedicure Sets",3,"Health & Beauty -> Foot Care -> Pedicure Sets",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (266,274,"Toe Nail Clippers",3,"Health & Beauty -> Foot Care -> Toe Nail Clippers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (267,687,"Adult Diapers",2,"Health & Beauty -> Adult Diapers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (268,687,"Band-Aids",2,"Health & Beauty -> Band-Aids",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (269,687,"Bar Soaps",2,"Health & Beauty -> Bar Soaps",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (270,687,"Body Care",2,"Health & Beauty -> Body Care",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (271,687,"Cotton Balls",2,"Health & Beauty -> Cotton Balls",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (272,687,"Deodorants",2,"Health & Beauty -> Deodorants",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (273,687,"Facial Care",2,"Health & Beauty -> Facial Care",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (274,687,"Foot Care",2,"Health & Beauty -> Foot Care",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (275,687,"Hair Care",2,"Health & Beauty -> Hair Care",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (276,687,"Hand Care",2,"Health & Beauty -> Hand Care",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (277,687,"Humidifiers",2,"Health & Beauty -> Humidifiers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (278,687,"Ladies Hygiene",2,"Health & Beauty -> Ladies Hygiene",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (279,687,"Make Up",2,"Health & Beauty -> Make Up",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (280,687,"Massagers",2,"Health & Beauty -> Massagers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (281,687,"Men Hygiene",2,"Health & Beauty -> Men Hygiene",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (282,687,"Nail Polish",2,"Health & Beauty -> Nail Polish",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (283,687,"Oral Hygiene",2,"Health & Beauty -> Oral Hygiene",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (284,687,"Otc",2,"Health & Beauty -> Otc",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (285,687,"Perfume",2,"Health & Beauty -> Perfume",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (286,687,"Suntan Lotions",2,"Health & Beauty -> Suntan Lotions",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (287,687,"Vaporizers",2,"Health & Beauty -> Vaporizers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (288,275,"Combs/Brushes",3,"Health & Beauty -> Hair Care -> Combs/Brushes",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (289,275,"Conditioners",3,"Health & Beauty -> Hair Care -> Conditioners",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (290,275,"Hair Clips",3,"Health & Beauty -> Hair Care -> Hair Clips",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (291,275,"Hair Curlers",3,"Health & Beauty -> Hair Care -> Hair Curlers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (292,275,"Hair Die",3,"Health & Beauty -> Hair Care -> Hair Die",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (293,275,"Hair Dryer",3,"Health & Beauty -> Hair Care -> Hair Dryer",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (294,275,"Hair Gel",3,"Health & Beauty -> Hair Care -> Hair Gel",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (295,275,"Hair Mousse",3,"Health & Beauty -> Hair Care -> Hair Mousse",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (296,275,"Hair Spray",3,"Health & Beauty -> Hair Care -> Hair Spray",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (297,275,"Hair Straighteners",3,"Health & Beauty -> Hair Care -> Hair Straighteners",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (298,275,"Shampoos",3,"Health & Beauty -> Hair Care -> Shampoos",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (299,275,"Wigs",3,"Health & Beauty -> Hair Care -> Wigs",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (300,276,"Hand Creams",3,"Health & Beauty -> Hand Care -> Hand Creams",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (301,276,"Hand Lotions",3,"Health & Beauty -> Hand Care -> Hand Lotions",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (302,276,"Manicure Sets",3,"Health & Beauty -> Hand Care -> Manicure Sets",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (303,276,"Nail Clippers",3,"Health & Beauty -> Hand Care -> Nail Clippers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (304,278,"Douche",3,"Health & Beauty -> Ladies Hygiene -> Douche",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (305,278,"Electric Shavers",3,"Health & Beauty -> Ladies Hygiene -> Electric Shavers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (306,278,"Feminine Deodorants",3,"Health & Beauty -> Ladies Hygiene -> Feminine Deodorants",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (307,278,"Feminine Pads",3,"Health & Beauty -> Ladies Hygiene -> Feminine Pads",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (308,278,"Hair Removers",3,"Health & Beauty -> Ladies Hygiene -> Hair Removers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (309,278,"Razors",3,"Health & Beauty -> Ladies Hygiene -> Razors",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (310,278,"Shaving Cream",3,"Health & Beauty -> Ladies Hygiene -> Shaving Cream",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (311,278,"Tampons",3,"Health & Beauty -> Ladies Hygiene -> Tampons",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (312,279,"Blush",3,"Health & Beauty -> Make Up -> Blush",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (313,279,"Brushes",3,"Health & Beauty -> Make Up -> Brushes",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (314,279,"Eye Shadows",3,"Health & Beauty -> Make Up -> Eye Shadows",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (315,279,"Foundations",3,"Health & Beauty -> Make Up -> Foundations",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (316,279,"Lip Stick",3,"Health & Beauty -> Make Up -> Lip Stick",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (317,279,"Mascara",3,"Health & Beauty -> Make Up -> Mascara",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (318,279,"Pencils",3,"Health & Beauty -> Make Up -> Pencils",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (319,281,"After Shave",3,"Health & Beauty -> Men Hygiene -> After Shave",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (320,281,"Electric Shavers",3,"Health & Beauty -> Men Hygiene -> Electric Shavers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (321,281,"Razors",3,"Health & Beauty -> Men Hygiene -> Razors",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (322,281,"Shaving Cream",3,"Health & Beauty -> Men Hygiene -> Shaving Cream",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (323,283,"Mouth Rinse",3,"Health & Beauty -> Oral Hygiene -> Mouth Rinse",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (324,283,"Toothbrushes",3,"Health & Beauty -> Oral Hygiene -> Toothbrushes",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (325,283,"Toothpaste",3,"Health & Beauty -> Oral Hygiene -> Toothpaste",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (326,284,"Children",3,"Health & Beauty -> Otc -> Children",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (327,284,"Cold/Flu Remedies",3,"Health & Beauty -> Otc -> Cold/Flu Remedies",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (328,284,"Condoms",3,"Health & Beauty -> Otc -> Condoms",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (329,284,"Cough Drops",3,"Health & Beauty -> Otc -> Cough Drops",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (330,284,"Eye Drops",3,"Health & Beauty -> Otc -> Eye Drops",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (331,284,"Feminine Creams",3,"Health & Beauty -> Otc -> Feminine Creams",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (332,284,"Indigestion Remedies",3,"Health & Beauty -> Otc -> Indigestion Remedies",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (333,284,"Laxatives",3,"Health & Beauty -> Otc -> Laxatives",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (334,284,"Lip Balm",3,"Health & Beauty -> Otc -> Lip Balm",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (335,284,"Ointments",3,"Health & Beauty -> Otc -> Ointments",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (336,284,"Pain Killers",3,"Health & Beauty -> Otc -> Pain Killers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (337,284,"Supplements",3,"Health & Beauty -> Otc -> Supplements",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (338,284,"Support",3,"Health & Beauty -> Otc -> Support",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (339,688,"Coins And Tokens",2,"Hobby And Musical Instruments -> Coins And Tokens",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (340,688,"Musical Instruments",2,"Hobby And Musical Instruments -> Musical Instruments",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (341,688,"Rc Parts",2,"Hobby And Musical Instruments -> Rc Parts",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (342,688,"Trading Cards",2,"Hobby And Musical Instruments -> Trading Cards",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (343,340,"Amplifier",3,"Hobby And Musical Instruments -> Musical Instruments -> Amplifier",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (344,340,"Drums",3,"Hobby And Musical Instruments -> Musical Instruments -> Drums",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (345,340,"Guitar",3,"Hobby And Musical Instruments -> Musical Instruments -> Guitar",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (346,340,"Horn",3,"Hobby And Musical Instruments -> Musical Instruments -> Horn",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (347,340,"Keyboard",3,"Hobby And Musical Instruments -> Musical Instruments -> Keyboard",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (348,340,"Speakers",3,"Hobby And Musical Instruments -> Musical Instruments -> Speakers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (349,340,"Stringed Instrument",3,"Hobby And Musical Instruments -> Musical Instruments -> Stringed Instrument",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (350,377,"Car Seats",3,"Home And Garden -> Baby Products -> Car Seats",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (351,377,"Diaper Bags",3,"Home And Garden -> Baby Products -> Diaper Bags",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (352,377,"Diapers",3,"Home And Garden -> Baby Products -> Diapers",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (353,377,"Strollers",3,"Home And Garden -> Baby Products -> Strollers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (354,377,"Swings",3,"Home And Garden -> Baby Products -> Swings",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (355,378,"Art Paint Brushes",3,"Home And Garden -> Crafts -> Art Paint Brushes",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (356,378,"Artificial Flowers",3,"Home And Garden -> Crafts -> Artificial Flowers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (357,378,"Baskets",3,"Home And Garden -> Crafts -> Baskets",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (358,378,"Candle Holders",3,"Home And Garden -> Crafts -> Candle Holders",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (359,378,"Candles",3,"Home And Garden -> Crafts -> Candles",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (360,378,"Clay Molding",3,"Home And Garden -> Crafts -> Clay Molding",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (361,378,"Craft Paints",3,"Home And Garden -> Crafts -> Craft Paints",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (362,378,"Photo Albums",3,"Home And Garden -> Crafts -> Photo Albums",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (363,378,"Photo Frames",3,"Home And Garden -> Crafts -> Photo Frames",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (364,378,"Stickers",3,"Home And Garden -> Crafts -> Stickers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (365,379,"Accessories",3,"Home And Garden -> Floor Cleaners -> Accessories",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (366,379,"Carpet Cleaners",3,"Home And Garden -> Floor Cleaners -> Carpet Cleaners",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (367,379,"Chemicals",3,"Home And Garden -> Floor Cleaners -> Chemicals",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (368,379,"Sweepers",3,"Home And Garden -> Floor Cleaners -> Sweepers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (369,379,"Vacuums",3,"Home And Garden -> Floor Cleaners -> Vacuums",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (370,380,"Live Plants",3,"Home And Garden -> Garden -> Live Plants",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (371,380,"Supplies",3,"Home And Garden -> Garden -> Supplies",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (372,381,"Anniversary",3,"Home And Garden -> Greeting Cards -> Anniversary",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (373,381,"Baby",3,"Home And Garden -> Greeting Cards -> Baby",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (374,381,"Birthday",3,"Home And Garden -> Greeting Cards -> Birthday",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (375,381,"Sympathy",3,"Home And Garden -> Greeting Cards -> Sympathy",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (376,381,"Wedding",3,"Home And Garden -> Greeting Cards -> Wedding",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (377,689,"Baby Products",2,"Home And Garden -> Baby Products",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (378,689,"Crafts",2,"Home And Garden -> Crafts",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (379,689,"Floor Cleaners",2,"Home And Garden -> Floor Cleaners",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (380,689,"Garden",2,"Home And Garden -> Garden",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (381,689,"Greeting Cards",2,"Home And Garden -> Greeting Cards",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (382,689,"Kitchen",2,"Home And Garden -> Kitchen",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (383,689,"Luggage/Bags",2,"Home And Garden -> Luggage/Bags",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (384,689,"Misc",2,"Home And Garden -> Misc",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (385,689,"Office",2,"Home And Garden -> Office",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (386,689,"Party",2,"Home And Garden -> Party",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (387,689,"Smoke Alarms",2,"Home And Garden -> Smoke Alarms",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (388,689,"Toys",2,"Home And Garden -> Toys",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (389,382,"Bottle Openers",3,"Home And Garden -> Kitchen -> Bottle Openers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (390,382,"Brooms & Mops",3,"Home And Garden -> Kitchen -> Brooms & Mops",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (391,382,"Can Openers",3,"Home And Garden -> Kitchen -> Can Openers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (392,382,"Clocks",3,"Home And Garden -> Kitchen -> Clocks",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (393,382,"Coffee Mugs",3,"Home And Garden -> Kitchen -> Coffee Mugs",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (394,382,"Cutting Boards",3,"Home And Garden -> Kitchen -> Cutting Boards",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (395,382,"Dinnerware",3,"Home And Garden -> Kitchen -> Dinnerware",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (396,382,"Drinking Glasses",3,"Home And Garden -> Kitchen -> Drinking Glasses",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (397,382,"Dust Pans",3,"Home And Garden -> Kitchen -> Dust Pans",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (398,382,"Kitchen Appliances",3,"Home And Garden -> Kitchen -> Kitchen Appliances",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (399,382,"Pots & Pans",3,"Home And Garden -> Kitchen -> Pots & Pans",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (400,382,"Shower Curtains",3,"Home And Garden -> Kitchen -> Shower Curtains",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (401,382,"Silverware",3,"Home And Garden -> Kitchen -> Silverware",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (402,382,"Soap Dish/Holder",3,"Home And Garden -> Kitchen -> Soap Dish/Holder",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (403,382,"Trash Can/Basket",3,"Home And Garden -> Kitchen -> Trash Can/Basket",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (404,382,"Water Bottles",3,"Home And Garden -> Kitchen -> Water Bottles",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (405,383,"Backpacks",3,"Home And Garden -> Luggage/Bags -> Backpacks",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (406,384,"Key Chains",3,"Home And Garden -> Misc -> Key Chains",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (407,384,"Pet Accessories",3,"Home And Garden -> Misc -> Pet Accessories",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (408,384,"Shoe Cleaners",3,"Home And Garden -> Misc -> Shoe Cleaners",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (409,385,"Binders",3,"Home And Garden -> Office -> Binders",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (410,385,"Board/Paper",3,"Home And Garden -> Office -> Board/Paper",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (411,385,"Calendars",3,"Home And Garden -> Office -> Calendars",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (412,385,"Chair Mat",3,"Home And Garden -> Office -> Chair Mat",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (413,385,"Color Computer Paper",3,"Home And Garden -> Office -> Color Computer Paper",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (414,385,"Copy Paper",3,"Home And Garden -> Office -> Copy Paper",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (415,385,"Crayons",3,"Home And Garden -> Office -> Crayons",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (416,385,"Daily Organizers",3,"Home And Garden -> Office -> Daily Organizers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (417,385,"Erasers",3,"Home And Garden -> Office -> Erasers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (418,385,"Folders",3,"Home And Garden -> Office -> Folders",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (419,385,"Markers",3,"Home And Garden -> Office -> Markers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (420,385,"Notebooks/Note Pads",3,"Home And Garden -> Office -> Notebooks/Note Pads",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (421,385,"Paper Clips",3,"Home And Garden -> Office -> Paper Clips",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (422,385,"Pencil Sharpeners",3,"Home And Garden -> Office -> Pencil Sharpeners",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (423,385,"Pens & Pencils",3,"Home And Garden -> Office -> Pens & Pencils",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (424,385,"Stapler/Staples",3,"Home And Garden -> Office -> Stapler/Staples",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (425,386,"Balloons",3,"Home And Garden -> Party -> Balloons",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (426,386,"Birthday Candles",3,"Home And Garden -> Party -> Birthday Candles",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (427,386,"Bows",3,"Home And Garden -> Party -> Bows",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (428,386,"Confetti",3,"Home And Garden -> Party -> Confetti",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (429,386,"Cups",3,"Home And Garden -> Party -> Cups",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (430,386,"Cutlery/Spoons/Forks",3,"Home And Garden -> Party -> Cutlery/Spoons/Forks",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (431,386,"Decorations",3,"Home And Garden -> Party -> Decorations",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (432,386,"Gift Bags",3,"Home And Garden -> Party -> Gift Bags",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (433,386,"Gift Boxes",3,"Home And Garden -> Party -> Gift Boxes",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (434,386,"Gift Wrap",3,"Home And Garden -> Party -> Gift Wrap",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (435,386,"Invitations",3,"Home And Garden -> Party -> Invitations",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (436,386,"Party Favors",3,"Home And Garden -> Party -> Party Favors",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (437,386,"Plates",3,"Home And Garden -> Party -> Plates",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (438,386,"Ribbons",3,"Home And Garden -> Party -> Ribbons",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (439,386,"Streamers",3,"Home And Garden -> Party -> Streamers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (440,386,"Table Covers",3,"Home And Garden -> Party -> Table Covers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (441,386,"Thank You Notes",3,"Home And Garden -> Party -> Thank You Notes",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (442,386,"Wedding Accessories",3,"Home And Garden -> Party -> Wedding Accessories",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (443,388,"Board Games",3,"Home And Garden -> Toys -> Board Games",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (444,388,"Model Cars",3,"Home And Garden -> Toys -> Model Cars",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (445,388,"Playing Cards",3,"Home And Garden -> Toys -> Playing Cards",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (446,388,"Stuffed Animals",3,"Home And Garden -> Toys -> Stuffed Animals",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (447,530,"Air Compressor Pumps",3,"Industrial -> Auto -> Air Compressor Pumps",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (448,530,"Air Filters",3,"Industrial -> Auto -> Air Filters",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (449,530,"Alternators",3,"Industrial -> Auto -> Alternators",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (450,530,"Batteries",3,"Industrial -> Auto -> Batteries",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (451,530,"Clamps Auto",3,"Industrial -> Auto -> Clamps Auto",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (452,530,"Distributor Caps & Rotors",3,"Industrial -> Auto -> Distributor Caps & Rotors",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (453,530,"Fuel Filters",3,"Industrial -> Auto -> Fuel Filters",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (454,530,"Fuses",3,"Industrial -> Auto -> Fuses",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (455,530,"Gas & Radiator Caps",3,"Industrial -> Auto -> Gas & Radiator Caps",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (456,530,"Gas Cans",3,"Industrial -> Auto -> Gas Cans",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (457,530,"Gauges Auto",3,"Industrial -> Auto -> Gauges Auto",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (458,530,"Grills Auto",3,"Industrial -> Auto -> Grills Auto",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (459,530,"Harley Davidson",3,"Industrial -> Auto -> Harley Davidson",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (460,530,"Hitch Balls",3,"Industrial -> Auto -> Hitch Balls",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (461,530,"Hitch Mounts",3,"Industrial -> Auto -> Hitch Mounts",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (462,530,"Lighting Auto",3,"Industrial -> Auto -> Lighting Auto",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (463,530,"Muffler Parts",3,"Industrial -> Auto -> Muffler Parts",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (464,530,"Mufflers",3,"Industrial -> Auto -> Mufflers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (465,530,"Oil Filters",3,"Industrial -> Auto -> Oil Filters",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (466,530,"Radiator Hose",3,"Industrial -> Auto -> Radiator Hose",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (467,530,"Ramps Auto",3,"Industrial -> Auto -> Ramps Auto",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (468,530,"Relays",3,"Industrial -> Auto -> Relays",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (469,530,"Rod Ends",3,"Industrial -> Auto -> Rod Ends",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (470,530,"Spark Plugs",3,"Industrial -> Auto -> Spark Plugs",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (471,530,"Starter Motors",3,"Industrial -> Auto -> Starter Motors",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (472,530,"Struts",3,"Industrial -> Auto -> Struts",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (473,530,"Terminals",3,"Industrial -> Auto -> Terminals",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (474,530,"Thermostats",3,"Industrial -> Auto -> Thermostats",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (475,530,"Tires",3,"Industrial -> Auto -> Tires",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (476,530,"Trailer Plugs",3,"Industrial -> Auto -> Trailer Plugs",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (477,530,"U-Joints",3,"Industrial -> Auto -> U-Joints",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (478,530,"Wheel Hubs",3,"Industrial -> Auto -> Wheel Hubs",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (479,531,"Batteries",3,"Industrial -> Electrical -> Batteries",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (480,531,"Cable Ties",3,"Industrial -> Electrical -> Cable Ties",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (481,531,"Capacitors",3,"Industrial -> Electrical -> Capacitors",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (482,531,"Circuit Breakers",3,"Industrial -> Electrical -> Circuit Breakers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (483,531,"Conduit Fittings",3,"Industrial -> Electrical -> Conduit Fittings",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (484,531,"Connectors",3,"Industrial -> Electrical -> Connectors",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (485,531,"Contacts",3,"Industrial -> Electrical -> Contacts",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (486,531,"Extension Cords",3,"Industrial -> Electrical -> Extension Cords",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (487,531,"Gardner Bender Misc.",3,"Industrial -> Electrical -> Gardner Bender Misc.",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (488,531,"Industrial Electrical",3,"Industrial -> Electrical -> Industrial Electrical",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (489,531,"Light Bulbs",3,"Industrial -> Electrical -> Light Bulbs",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (490,531,"Lighting",3,"Industrial -> Electrical -> Lighting",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (491,531,"Lugs",3,"Industrial -> Electrical -> Lugs",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (492,531,"Outlet Boxes",3,"Industrial -> Electrical -> Outlet Boxes",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (493,531,"Outlets",3,"Industrial -> Electrical -> Outlets",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (494,531,"Power Strips",3,"Industrial -> Electrical -> Power Strips",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (495,531,"Relays",3,"Industrial -> Electrical -> Relays",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (496,531,"Security",3,"Industrial -> Electrical -> Security",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (497,531,"Small Wire Rolls",3,"Industrial -> Electrical -> Small Wire Rolls",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (498,531,"Transformers",3,"Industrial -> Electrical -> Transformers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (499,531,"Wall Plates",3,"Industrial -> Electrical -> Wall Plates",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (500,531,"Wire",3,"Industrial -> Electrical -> Wire",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (501,531,"Wire Mold",3,"Industrial -> Electrical -> Wire Mold",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (502,531,"Wire Nuts",3,"Industrial -> Electrical -> Wire Nuts",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (503,532,"Air Conditioning",3,"Industrial -> Hardware -> Air Conditioning",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (504,532,"Bathroom Fixtures",3,"Industrial -> Hardware -> Bathroom Fixtures",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (505,532,"Blinds",3,"Industrial -> Hardware -> Blinds",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (506,532,"Brackets",3,"Industrial -> Hardware -> Brackets",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (507,532,"Cabinet Handles",3,"Industrial -> Hardware -> Cabinet Handles",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (508,532,"Cabinet Knobs",3,"Industrial -> Hardware -> Cabinet Knobs",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (509,532,"Canopies",3,"Industrial -> Hardware -> Canopies",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (510,532,"Dead Bolts",3,"Industrial -> Hardware -> Dead Bolts",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (511,532,"Ducting",3,"Industrial -> Hardware -> Ducting",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (512,532,"Fans",3,"Industrial -> Hardware -> Fans",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (513,532,"Garbage Cans",3,"Industrial -> Hardware -> Garbage Cans",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (514,532,"Heaters",3,"Industrial -> Hardware -> Heaters",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (515,532,"Hinges",3,"Industrial -> Hardware -> Hinges",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (516,532,"Insect Killers",3,"Industrial -> Hardware -> Insect Killers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (517,532,"Janitorial",3,"Industrial -> Hardware -> Janitorial",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (518,532,"Keyed Entry Knobs",3,"Industrial -> Hardware -> Keyed Entry Knobs",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (519,532,"Light Sticks",3,"Industrial -> Hardware -> Light Sticks",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (520,532,"Mats",3,"Industrial -> Hardware -> Mats",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (521,532,"Outside Sales",3,"Industrial -> Hardware -> Outside Sales",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (522,532,"Pad Locks",3,"Industrial -> Hardware -> Pad Locks",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (523,532,"Poles",3,"Industrial -> Hardware -> Poles",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (524,532,"Privacy Door Knobs",3,"Industrial -> Hardware -> Privacy Door Knobs",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (525,532,"Signs",3,"Industrial -> Hardware -> Signs",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (526,532,"Tarps",3,"Industrial -> Hardware -> Tarps",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (527,532,"Tile",3,"Industrial -> Hardware -> Tile",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (528,532,"Vents",3,"Industrial -> Hardware -> Vents",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (529,532,"Wall Paper",3,"Industrial -> Hardware -> Wall Paper",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (530,690,"Auto",2,"Industrial -> Auto",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (531,690,"Electrical",2,"Industrial -> Electrical",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (532,690,"Hardware",2,"Industrial -> Hardware",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (533,690,"Marine",2,"Industrial -> Marine",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (534,690,"Motorcycle/ATV",2,"Industrial -> Motorcycle/ATV",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (535,690,"Plumbing",2,"Industrial -> Plumbing",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (536,690,"Point Of Sale",2,"Industrial -> Point Of Sale",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (537,690,"Tools",2,"Industrial -> Tools",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (538,690,"Welding",2,"Industrial -> Welding",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (539,490,"Lamps",4,"Industrial -> Electrical -> Lighting -> Lamps",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (540,490,"Light Fixtures",4,"Industrial -> Electrical -> Lighting -> Light Fixtures",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (541,490,"Light Switches",4,"Industrial -> Electrical -> Lighting -> Light Switches",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (542,534,"Motor Cycle Chain",3,"Industrial -> Motorcycle/ATV -> Motor Cycle Chain",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (543,535,"Air Couplings",3,"Industrial -> Plumbing -> Air Couplings",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (544,535,"Couplings",3,"Industrial -> Plumbing -> Couplings",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (545,535,"Drains",3,"Industrial -> Plumbing -> Drains",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (546,535,"Faucet Hoses",3,"Industrial -> Plumbing -> Faucet Hoses",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (547,535,"Faucet Parts",3,"Industrial -> Plumbing -> Faucet Parts",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (548,535,"Filter Drier",3,"Industrial -> Plumbing -> Filter Drier",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (549,535,"Float Valves",3,"Industrial -> Plumbing -> Float Valves",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (550,535,"Gas Hoses",3,"Industrial -> Plumbing -> Gas Hoses",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (551,535,"Gas Parts",3,"Industrial -> Plumbing -> Gas Parts",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (552,535,"Hammer Arrestor",3,"Industrial -> Plumbing -> Hammer Arrestor",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (553,535,"Hose",3,"Industrial -> Plumbing -> Hose",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (554,535,"Pool Supplies",3,"Industrial -> Plumbing -> Pool Supplies",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (555,535,"Pressure Gauges",3,"Industrial -> Plumbing -> Pressure Gauges",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (556,535,"Pressure Relief Valve",3,"Industrial -> Plumbing -> Pressure Relief Valve",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (557,535,"P-Traps",3,"Industrial -> Plumbing -> P-Traps",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (558,535,"Sharkbite",3,"Industrial -> Plumbing -> Sharkbite",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (559,535,"Shower Parts",3,"Industrial -> Plumbing -> Shower Parts",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (560,535,"Sinks",3,"Industrial -> Plumbing -> Sinks",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (561,535,"Small Hose",3,"Industrial -> Plumbing -> Small Hose",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (562,535,"Spray Nozzles",3,"Industrial -> Plumbing -> Spray Nozzles",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (563,535,"Sprinkler Parts",3,"Industrial -> Plumbing -> Sprinkler Parts",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (564,535,"Sprinkler Timers",3,"Industrial -> Plumbing -> Sprinkler Timers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (565,535,"Sprinkler Valves",3,"Industrial -> Plumbing -> Sprinkler Valves",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (566,535,"Sprinklers",3,"Industrial -> Plumbing -> Sprinklers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (567,535,"Stop Valves",3,"Industrial -> Plumbing -> Stop Valves",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (568,535,"Toilet Parts",3,"Industrial -> Plumbing -> Toilet Parts",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (569,535,"Toilets",3,"Industrial -> Plumbing -> Toilets",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (570,535,"Water Filters",3,"Industrial -> Plumbing -> Water Filters",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (571,537,"Adjustable Wrenches",3,"Industrial -> Tools -> Adjustable Wrenches",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (572,537,"Allen Wrenches",3,"Industrial -> Tools -> Allen Wrenches",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (573,537,"Boundry Tape",3,"Industrial -> Tools -> Boundry Tape",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (574,537,"Box Knives",3,"Industrial -> Tools -> Box Knives",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (575,537,"Chain Saws",3,"Industrial -> Tools -> Chain Saws",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (576,537,"Chisels",3,"Industrial -> Tools -> Chisels",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (577,537,"Clamps",3,"Industrial -> Tools -> Clamps",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (578,537,"Diamond Blades",3,"Industrial -> Tools -> Diamond Blades",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (579,537,"Dremel & Rotozip",3,"Industrial -> Tools -> Dremel & Rotozip",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (580,537,"Drill Bits",3,"Industrial -> Tools -> Drill Bits",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (581,537,"Duct Tape",3,"Industrial -> Tools -> Duct Tape",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (582,537,"Electrical Tape",3,"Industrial -> Tools -> Electrical Tape",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (583,537,"End Mill",3,"Industrial -> Tools -> End Mill",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (584,537,"Flash Lights",3,"Industrial -> Tools -> Flash Lights",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (585,537,"Foil Tape",3,"Industrial -> Tools -> Foil Tape",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (586,537,"Hammer",3,"Industrial -> Tools -> Hammer",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (587,537,"Mallets",3,"Industrial -> Tools -> Mallets",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (588,537,"Masking Tape",3,"Industrial -> Tools -> Masking Tape",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (589,537,"Measuring Tapes",3,"Industrial -> Tools -> Measuring Tapes",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (590,537,"Paint Brushes",3,"Industrial -> Tools -> Paint Brushes",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (591,537,"Paint Rollers",3,"Industrial -> Tools -> Paint Rollers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (592,537,"Paint Supplies",3,"Industrial -> Tools -> Paint Supplies",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (593,537,"Pliers",3,"Industrial -> Tools -> Pliers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (594,537,"Power Tools",3,"Industrial -> Tools -> Power Tools",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (595,537,"Razor Blades",3,"Industrial -> Tools -> Razor Blades",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (596,537,"Rope",3,"Industrial -> Tools -> Rope",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (597,537,"Sand Paper",3,"Industrial -> Tools -> Sand Paper",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (598,537,"Saw Blades",3,"Industrial -> Tools -> Saw Blades",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (599,537,"Screw Drivers",3,"Industrial -> Tools -> Screw Drivers",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (600,537,"Socket Extensions",3,"Industrial -> Tools -> Socket Extensions",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (601,537,"Socket Wrenches",3,"Industrial -> Tools -> Socket Wrenches",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (602,537,"Sockets",3,"Industrial -> Tools -> Sockets",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (603,537,"Tape",3,"Industrial -> Tools -> Tape",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (604,537,"Tie Downs",3,"Industrial -> Tools -> Tie Downs",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (605,537,"Tool Holders",3,"Industrial -> Tools -> Tool Holders",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (606,537,"Tools",3,"Industrial -> Tools -> Tools",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (607,537,"Wrenches",3,"Industrial -> Tools -> Wrenches",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (608,538,"Cable Connectors",3,"Industrial -> Welding -> Cable Connectors",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (609,538,"Electrode Hoders",3,"Industrial -> Welding -> Electrode Hoders",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (610,538,"Electrods",3,"Industrial -> Welding -> Electrods",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (611,538,"Grounding Clamps",3,"Industrial -> Welding -> Grounding Clamps",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (612,538,"Mask",3,"Industrial -> Welding -> Mask",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (613,538,"Mig Wire",3,"Industrial -> Welding -> Mig Wire",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (614,538,"Nozzles Welding",3,"Industrial -> Welding -> Nozzles Welding",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (615,538,"Rod",3,"Industrial -> Welding -> Rod",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (616,538,"Rolls Misc.",3,"Industrial -> Welding -> Rolls Misc.",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (617,538,"Solder",3,"Industrial -> Welding -> Solder",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (618,538,"Tips",3,"Industrial -> Welding -> Tips",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (619,538,"Torch",3,"Industrial -> Welding -> Torch",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (620,538,"Welding Hose",3,"Industrial -> Welding -> Welding Hose",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (621,538,"Welding Supplies",3,"Industrial -> Welding -> Welding Supplies",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (622,627,"Designer Frames",3,"Jewelry -> Glasses -> Designer Frames",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (623,627,"Reading Glasses",3,"Jewelry -> Glasses -> Reading Glasses",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (624,627,"Sun Glasses",3,"Jewelry -> Glasses -> Sun Glasses",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (625,691,"Bracelets",2,"Jewelry -> Bracelets",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (626,691,"Costume Jewelry",2,"Jewelry -> Costume Jewelry",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (627,691,"Glasses",2,"Jewelry -> Glasses",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (628,691,"Jewelry Boxes",2,"Jewelry -> Jewelry Boxes",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (629,691,"Necklaces",2,"Jewelry -> Necklaces",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (630,691,"Pendants",2,"Jewelry -> Pendants",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (631,691,"Pins",2,"Jewelry -> Pins",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (632,691,"Rings",2,"Jewelry -> Rings",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (633,691,"Watches",2,"Jewelry -> Watches",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (634,692,"Books",2,"Media -> Books",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (635,692,"Cd's",2,"Media -> Cd's",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (636,692,"Dvd's",2,"Media -> Dvd's",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (637,692,"Pc Games",2,"Media -> Pc Games",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (638,692,"Software",2,"Media -> Software",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (639,692,"Video Games",2,"Media -> Video Games",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (640,639,"Accessories",3,"Media -> Video Games -> Accessories",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (641,639,"Games",3,"Media -> Video Games -> Games",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (642,639,"Systems",3,"Media -> Video Games -> Systems",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (643,693,"Dentist Supplies",2,"Medical -> Dentist Supplies",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (644,693,"Doctor Supplies",2,"Medical -> Doctor Supplies",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (645,693,"Federal Law",2,"Medical -> Federal Law",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (646,693,"Medical Assisting Devices",2,"Medical -> Medical Assisting Devices",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (647,656,"Camp Chairs",4,"Sporting Goods -> Outdoor Recreation -> Camping -> Camp Chairs",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (648,673,"Dumb Bells",3,"Sporting Goods -> Exercise Equipment -> Dumb Bells",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (649,657,"Reels",4,"Sporting Goods -> Outdoor Recreation -> Fishing -> Reels",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (650,664,"Golf Balls",4,"Sporting Goods -> Sporting -> Golf -> Golf Balls",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (651,659,"Ammo",4,"Sporting Goods -> Outdoor Recreation -> Hunting -> Ammo",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (652,659,"Knives",4,"Sporting Goods -> Outdoor Recreation -> Hunting -> Knives",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (653,667,"Microscope",4,"Sporting Goods -> Sporting -> Optics -> Microscope",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (654,667,"Spotting Scope",4,"Sporting Goods -> Sporting -> Optics -> Spotting Scope",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (655,667,"Telescope",4,"Sporting Goods -> Sporting -> Optics -> Telescope",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (656,674,"Camping",3,"Sporting Goods -> Outdoor Recreation -> Camping",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (657,674,"Fishing",3,"Sporting Goods -> Outdoor Recreation -> Fishing",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (658,674,"Grills",3,"Sporting Goods -> Outdoor Recreation -> Grills",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (659,674,"Hunting",3,"Sporting Goods -> Outdoor Recreation -> Hunting",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (660,674,"Patio Furniture",3,"Sporting Goods -> Outdoor Recreation -> Patio Furniture",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (661,675,"Baseball",3,"Sporting Goods -> Sporting -> Baseball",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (662,675,"Boxing",3,"Sporting Goods -> Sporting -> Boxing",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (663,675,"Football",3,"Sporting Goods -> Sporting -> Football",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (664,675,"Golf",3,"Sporting Goods -> Sporting -> Golf",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (665,675,"Hockey",3,"Sporting Goods -> Sporting -> Hockey",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (666,675,"Lacrosse",3,"Sporting Goods -> Sporting -> Lacrosse",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (667,675,"Optics",3,"Sporting Goods -> Sporting -> Optics",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (668,675,"Paintball",3,"Sporting Goods -> Sporting -> Paintball",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (669,675,"Soccer",3,"Sporting Goods -> Sporting -> Soccer",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (670,675,"Tactical Gear",3,"Sporting Goods -> Sporting -> Tactical Gear",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (671,675,"Tennis",3,"Sporting Goods -> Sporting -> Tennis",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (672,675,"Watersport",3,"Sporting Goods -> Sporting -> Watersport",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (673,694,"Exercise Equipment",2,"Sporting Goods -> Exercise Equipment",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (674,694,"Outdoor Recreation",2,"Sporting Goods -> Outdoor Recreation",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (675,694,"Sporting",2,"Sporting Goods -> Sporting",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (676,694,"Wheel Sports",2,"Sporting Goods -> Wheel Sports",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (677,676,"Bicycle",3,"Sporting Goods -> Wheel Sports -> Bicycle",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (678,676,"Scooter",3,"Sporting Goods -> Wheel Sports -> Scooter",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (679,676,"Skateboard",3,"Sporting Goods -> Wheel Sports -> Skateboard",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (680,676,"Tricycle",3,"Sporting Goods -> Wheel Sports -> Tricycle",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (713,30,"Shoes",3,"Clothing -> Womens -> Shoes",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (714,31,"Shoes",3,"Clothing -> Men -> Shoes",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (715,27,"Shoes",3,"Clothing -> Children -> Shoes",1);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (716,683,"Video Game",2,"Electronics -> Video Game",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (717,716,"Video Game System",3,"Electronics -> Video Game -> Video Game System",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (718,716,"Video Game System Accessories",3,"Electronics -> Video Game -> Video Game System Accessories",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (719,683,"Security",2,"Electronics -> Security",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (720,719,"Security Accessories",3,"Electronics -> Security -> Security Accessories",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (721,719,"Security Cameras",3,"Electronics -> Security -> Security Cameras",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (722,690,"Scientific Equipment",2,"Industrial -> Scientific Equipment",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (723,674,"Boating/Water Sports",3,"Sporting Goods -> Outdoor Recreation -> Boating/Water Sports",0);
INSERT INTO cataloginfocategory (id,parentId,name,level,trail,ignoreInheritedAttributes) VALUES (724,681,"Collectibles",2,"Art -> Collectibles",0);

INSERT INTO cataloginfocategoryattribute (CatalogInfoAttributeId,cataloginfocategoryId)
VALUES
(11,183),(11,184),(11,185),(11,186),
(11,187),(11,188),(11,189),(11,190),
(11,191),(11,192),(11,193),(11,194),
(11,195),(11,196),(11,197),(11,198),
(11,199),(11,200),(11,201),(11,202),
(11,203),(11,204),(11,205),(11,206),
(11,207),(11,208),(11,209),(11,210),
(11,211),(11,212),(11,213),(11,214),
(11,215),(11,216),(11,217),(11,218),
(11,219),(11,220),(11,221),(11,222),
(11,223),(11,224),(11,225),(11,226),
(11,227),(11,228),(11,229),(11,230),
(11,231),(11,232),(11,233),(11,234),
(11,235),(11,236),(11,237),(11,238),
(11,239),(11,240),(11,241),(11,242),
(11,243),(11,244),(11,245),(11,246),
(11,253),(11,254),(11,255),(21,247),
(21,248),(21,249),(21,250),(21,251),
(21,252);

INSERT INTO cataloginfo (categoryid,title,description,msrp,upc,manufacturer,taxable,securityUserId,cataloginfocategoryId)
VALUES
(233,"Purified Drinking Water","Processed By Advanced Filtration, Ozone and Reverse Osmosis Technologies.",0.25,"011110816405","Kroger",1,1,233);
INSERT INTO cataloginfo (categoryid,title,description,msrp,upc,model,manufacturer,taxable,securityUserId,cataloginfocategoryId)
VALUES
(717,"Xbox One X","Xbox One X Game System",399.99,"889842208252", "CYV00001","Microsoft",1,1,717);
INSERT INTO cataloginfo (categoryid,title,description,msrp,upc,model,manufacturer,taxable,securityUserId,cataloginfocategoryId)
VALUES
(62,"Samsung Galaxy S7","Samsung Galaxy S7 Normal Screen",199.99,"672713615217","S7","Samsung",1,1,62);
INSERT INTO cataloginfo (categoryid,title,description,msrp,upc,model,manufacturer,taxable,securityUserId,cataloginfocategoryId)
VALUES
(443,"Dominion: 2nd Edition","Dominion: 2nd Edition Board Game",25.00,"772223961979","RIO531","Rio Grande Games",1,1,443);

