# Product Catalog API

## Introduction
The **Product Catalog API** is a Laravel-based RESTful API for managing product catalogs. It is designed for use by web and mobile applications, as well as third-party integrations.

## Features
- Request validation using Laravel's built-in validation features.
- **Business Objects (BO):** For transferring data between the controller and service layers.
- **Data Access Objects (DAO):** Mirrors database table structures.
- **Repository Pattern:** Interfaces to abstract data access logic.
- Proper error handling with appropriate HTTP status codes.
- Unit tests for service layers and repositories.
- Auto-generated API documentation.

## Setup Instructions

### Prerequisites
- PHP **>= 7.3**
- Composer
- MySQL

### Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/sunnymumbai25/laravel-tl-assignment.git
   cd product-catalog-api
   ```

2. Install dependencies:
   ```sh
   composer install
   ```

3. Set up environment variables:
   ```sh
   cp .env.example .env
   ```
   Update database credentials in `.env`.

4. Import laravel.sql database file:

   ```sh
   mysql -u [username] -p laravel < path/to/laravel.sql
   ```


5. Run migrations and seed database:
   ```sh
    php artisan migrate:fresh
    php artisan db:seed 
   ```

6. Start the application:
   ```sh
   php artisan serve
   ```
   
7. Run phpunit test:
   ```sh
   vendor/bin/phpunit
   ```
## API Endpoints

### 1. Get All Products
```sh
curl --location 'http://localhost:8000/api/v1/products'
```

### 2. Create a Product
```sh
curl --location 'http://localhost:8000/api/v1/products' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--data '{
    "name": "Sample Product",
    "description": "This is a sample product description.",
    "sku": "SKU123456",
    "price": 99.99,
    "category_id": 1
}'
```
**Response:**
```json
{
    "status": "success",
    "message": "Product created successfully",
    "data": {
        "product": {
            "name": "Sample Product",
            "description": "This is a sample product description.",
            "sku": "SKU11212311",
            "price": 99.99,
            "category_id": 1,
            "updated_at": "2025-02-13T06:25:12.000000Z",
            "created_at": "2025-02-13T06:25:12.000000Z",
            "id": 7
        }
    }
}
```

### 3. Get Paginated Products
```sh
curl --location 'http://localhost:8000/api/v1/products?search=test&category_id=2&page=1'
```
**Response:**
```json
{
    "status": "success",
    "data": {
        "products": [
            {
                "id": 3,
                "name": "Sample Product",
                "description": "This is a sample product description...",
                "sku": "SK1221131",
                "price": "99.99",
                "category_id": 1,
                "created_at": "2025-02-12T18:49:01.000000Z",
                "updated_at": "2025-02-13T07:58:31.000000Z"
            }
        ],
        "pagination": {
            "total": 8,
            "count": 1,
            "per_page": 1,
            "current_page": 1,
            "total_pages": 8,
            "links": {
                "previous": null,
                "next": "http://localhost:8000/api/v1/products?page=2"
            }
        }
    }
}
```

### 4. Update a Product
```sh
curl --location --request PUT 'http://localhost:8000/api/v1/products/2' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--data '{
    "name": "Updated Product",
    "description": "This is an updated product description.",
    "sku": "SKU123434",
    "price": 99.99,
    "category_id": 2
}'
```
**Response:**
```json
{
    "status": "success",
    "message": "Product updated successfully",
    "data": {
        "product": {
            "id": 3,
            "name": "Sample Product",
            "description": "This is a sample product description.",
            "sku": "SKU12113",
            "price": "99.99",
            "category_id": 1,
            "created_at": "2025-02-12T18:49:01.000000Z",
            "updated_at": "2025-02-13T06:24:11.000000Z"
        }
    }
}
```

### 5. Delete a Product
```sh
curl --location --request DELETE 'http://localhost:8000/api/v1/products/1'
```
**Response:**
```json
{
    "status": "success",
    "message": "Product deleted successfully."
}
```

### 6. Get Categories
```sh
curl --location 'http://localhost:8000/api/v1/categories'
```
**Response:**
```json
{
    "status": "success",
    "data": {
        "categories": [
            {
                "id": 1,
                "name": "cloths",
                "parent_category_id": null,
                "created_at": "2025-02-12T23:47:55.000000Z",
                "updated_at": "2025-02-12T23:47:55.000000Z",
                "children": []
            },
            {
                "id": 2,
                "name": "scissors",
                "parent_category_id": null,
                "created_at": "2025-02-12T23:47:55.000000Z",
                "updated_at": "2025-02-12T23:47:55.000000Z",
                "children": []
            }
        ]
    },
    "message": "Categories retrieved successfully."
}
```

## License
This project is open-source and available under the [MIT License](LICENSE).
