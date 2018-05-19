# barcode

## Main Functionality: 
Quickly input product into inventory and make it available to consumers. Keep track of who inputted and edited the product for productivity and accountability reasons. Keep track of where the product came from to help answere questions like: which vendors are profitable, should renegotiations be persued, or should business be discontinued with the vendor. Track costs back to every item to help with profitability.


## Internal Processing Side
- [x] create ERD in lucidchart (Thomas)
- [x] export schema creation from lucidchart (Thomas)
- [x] create file structure (Thomas)
- [x] convert schema into sequelize models (Tyler)
- [x] initialize config and server settings (Thomas)
- [x] search box to find existing products if any and display those. (Merek)
- [x] look up product on walmart and amazon to verify pricing or to find information. (Merek)
- [ ] make each section of information clickable and mapped to our fields so once it is clicked it will populate our forms with data. (Merek)
- [ ] allow tabing through fields to populate data or edit data. have fields in the following order: unique code (UPC, ean13, asin and etc), model, category, size, condition, package condition, webprice, ourprice, qty (Merek)
- [ ] On UPC scan populate following fields with information if a result is found. (Thomas)
- [ ] capture images (Tyler)
- [ ] Save item info (Tyler)
- [x] Create New Security Users UI (Merek)
- [x] Save new user and hash password (Thomas)
- [x] Category Management Screen (Merek)
- [ ] Login authorization and authentication (Thomas -> Able to get auth token from jwt)

## Testing
-[x] test barcode-scan method to verify it is detecting scans correctly (Thomas)

## Customer UI (Phase 2)
- [ ] create account (ToDo)
- [ ] allow customer login (ToDo)
- [ ] view products (ToDo)
- [ ] search products (ToDo)
- [ ] filter products by cat,size,gender,price (ToDo)

## Database Structure
![Image of appended log file](/mdimages/tablesa.PNG)
![Image of appended log file](/mdimages/tablesb.PNG)


Merek - Employee UI/handlebars
Tyler - DB/Sequalize/ORM
Thomas - API routes/controllers/json authentication/seed files/testing

## Production Deployment and Heroku Server Setup
 * Make sure sync force is set to false. ex: db.sequelize.sync({ force: false }). If this is not false it will recreate the tables everytime it runs.
 * remove config, .env from the .gitignore file so that all the configurations will be set on production server.







