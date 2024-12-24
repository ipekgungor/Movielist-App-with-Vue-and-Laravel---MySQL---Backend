# Movielist-App-with-Vue-and-Laravel---MySQL---Backend

This project is a web-based Movie List Application developed with Laravel and Vue.js. It is designed to help users discover different movies, view movie details, and filter them. It also allows users to manage their favorite movies in the list.

## Features

- **Movies Page:** All movies with some details are listed here in the card components. Users can add them to their favorites.
- **Filter by Movie Name:** Movies can be filtered based on their name.
- **Movie Detail Page:** Users can view detailed information about a specific movie, including its summary, actors, IMDB rating etc.
- **Favorites Page:** Users can manage their favorite movies. They can delete movies from their favorite list.

## Requirements

- **PHP:** 8.0 or later
- **Laravel:** PHP Framework 
- **Composer**
- **MySQL:** Database management system

## Installation Instructions

To run this project locally, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/ipekgungor/Movielist-App-with-Vue-and-Laravel---MySQL---Backend.git
2. Navigate to the Project Directory:
   ```bash
    cd Movielist-App-with-Vue-and-Laravel---MySQL---Backend
3. Install Dependencies:
   ```bash
   composer install
4. Configure the .env file and update database.php file:
    
    ```bash
    DB_CONNECTION=mysql
    DB_HOST=127.0.0.1
    DB_PORT=3306
    DB_DATABASE=movielist_db
    DB_USERNAME=root
    DB_PASSWORD=password
    
    'database' => env('DB_DATABASE', 'movielist_db')
    ```
    
5. Make migrations
   ```bash
    php artisan make:migration create_movies_table
    php artisan make:migration create_favorites_table
6. Run the migration:
   ```bash
   php artisan migrate
7. Generate key
   ```bash
   php artisan key:generate 
8. Start the development server
   ```bash
   php artisan serve
   
## Contact
- **Developer:** İpek Güngör
- **Email:** ipekgungor2001@gmail.com
- **GitHub Profile:** ipekgungor

## Notes
- **I used xampp during PHP and MySQL installation. You can check your tables from phpMyAdmin and don't forget to start Apache and MySQL. Additionally, the project should be inside the xampp/htdocs directory.**
- **You can find SQL queries in the 'queries.sql' file in the database folder.**
- **I used api.php for routes instead of web.php for this reason I updated the bootstrap/app.php and app/Providers/AppServiceProvider.php files. You can have some problems during api routes so you can check the status of these commands.**
```bash
  php artisan route:clear 
  php artisan cache:clear
  php artisan config:clear
  php artisan route:list
