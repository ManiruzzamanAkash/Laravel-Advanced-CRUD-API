## Laravel CRUD API with Auth
----

### Language & Framework Used:
1. PHP
1. Laravel

### Architecture Used:
1. Interface-Repository Pattern
1. Model Based Eloquent Query
1. Swagger API Documentation - https://github.com/DarkaOnLine/L5-Swagger
1. JWT Auth - https://github.com/tymondesigns/jwt-auth


### How to Run:
1. Clone Project - 

```bash
git clone https://github.com/ManiruzzamanAkash/Laravel-Basic-CRUD-API.git
```

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




### Test
1. Test with Postman - https://www.getpostman.com/collections/dbb31ed9c8dd676e0531 [Click to open with post man]
1. Test with Swagger.
1. Swagger Limitation: Image can not be uploaded throw Swagger, it can be uploaded throw Postman.
