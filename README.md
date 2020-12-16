## Laravel CRUD API with Auth
Basic Laravel CRUD API application included with Authentication Module & Product Module. It's included with JWT authentication and Swagger API format.

----

### Language & Framework Used:
1. PHP
1. Laravel

### Architecture Used:
1. Interface-Repository Pattern
1. Model Based Eloquent Query
1. Swagger API Documentation - https://github.com/DarkaOnLine/L5-Swagger
1. JWT Auth - https://github.com/tymondesigns/jwt-auth

### API List:
##### Authentication Module
1. [x] Register User API with Token
1. [x] Login API with Token
1. [x] Authenticated User Profile
1. [x] Refresh Data
1. [x] Logout

##### Product Module
1. [x] Product List
1. [x] Product List [Public]
1. [x] Create Product
1. [x] Edit Product
1. [x] View Product
1. [x] Delete Product

### How to Run:
1. Clone Project - 

```bash
git clone https://github.com/ManiruzzamanAkash/Laravel-Basic-CRUD-API.git
```
2. Go to the project drectory by `cd Laravel-Basic-CRUD-API` & Run the 
2. Create `.env` file & Copy `.env.example` file to `.env` file
3. Create a database called - `laravel_basic_crud`.
4. Now migrate and seed database to complete whole project setup by running this-
``` bash
php artisan migrate:refresh --seed
```
It will create `21` Users and `103` Dummy Products.
5. Run the server - 
``` bash
php artisan serve
```
6. Open Browser - 
http://127.0.0.1:8000 & go to API Documentation -
http://127.0.0.1:8000/api/documentation
7. You'll see a Swagger Panel.


### Procedure
1. First Login with the given credential or any other user credential
1. Set bearer token to Swagger Header or Post Header as Authentication
1. Hit Any API, You can also hit any API, before authorization header data set to see the effects.


### Demo 

###### API List Views:
<img src="https://i.ibb.co/gV1Yn9Z/1-Swagger-API-Demo.png" alt="1-Swagger-API-Demo" border="0">

###### Login in Swagger with Given Data:
<img src="https://i.ibb.co/5vrXkgN/2-API-Login1.png" alt="2-API-Login1" border="0">


###### Get token After Successfull Login:
<img src="https://i.ibb.co/cQ37n9t/3-API-Login2-Response.png" alt="3-API-Login2-Response" border="0">

###### Set token in Swagger Header:
<img src="https://i.ibb.co/7bqBHMP/4-API-Swaagger-Set-Bearer-Token.png" alt="4-API-Swaagger-Set-Bearer-Token" border="0">

###### Or, Set token in Postman Header as Authorization:
<img src="https://i.ibb.co/7p8Y3Yz/Postman-Product-List-API-with-Authenticated-Token.png" alt="Postman-Product-List-API-with-Authenticated-Token" border="0">

###### Hit Any API Route in Swagger:
<img src="https://i.ibb.co/VSWbXq9/5-API-Swaagger-Public-Product-List-View.png" alt="5-API-Swaagger-Public-Product-List-View" border="0">

###### Image Upload throw Postman:
<img src="https://i.ibb.co/VBkMBBp/Postman-Store-Product-with-File-Upload.png" alt="Postman-Store-Product-with-File-Upload" border="0">



### Test
1. Test with Postman - https://www.getpostman.com/collections/dbb31ed9c8dd676e0531 [Click to open with post man]
1. Test with Swagger.
1. Swagger Limitation: Image can not be uploaded throw Swagger, it can be uploaded throw Postman.
