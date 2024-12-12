CREATE DATABASE movielist_db 

--Movies Table
CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `summary` text DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `actors` text DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `poster_url` varchar(255) DEFAULT NULL,
  `imdb_rating` decimal(3,1) DEFAULT NULL,
  `available_platforms` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `movies` (`id`, `name`, `summary`, `director`, `actors`, `year`, `poster_url`, `imdb_rating`, `available_platforms`, `created_at`, `updated_at`) VALUES
(1, 'Inception', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the task of planting an idea into the mind of a CEO.', 'Christopher Nolan', 'Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page', 2010, 'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_FMjpg_UX1000_.jpg', 8.8, 'Netflix, Amazon Prime, Hulu', NULL, NULL),
(2, 'The Dark Knight', 'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham.', 'Christopher Nolan', 'Christian Bale, Heath Ledger, Aaron Eckhart', 2008, 'https://www.thewestdale.ca/wp-content/uploads/2024/04/westdale_the_dark_knight_rises.jpg', 9.0, 'Netflix, Amazon Prime, Hulu', NULL, NULL),
(3, 'The Matrix', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 'Lana Wachowski, Lilly Wachowski', 'Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss', 1999, 'https://xl.movieposterdb.com/06_11/1999/0133093/xl_145384_0133093_fd241228.jpg', 8.7, 'Netflix, Amazon Prime, HBO Max', NULL, NULL),
(4, 'The Shawshank Redemption', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'Frank Darabont', 'Tim Robbins, Morgan Freeman', 1994, 'https://m.media-amazon.com/images/M/MV5BMDAyY2FhYjctNDc5OS00MDNlLThiMGUtY2UxYWVkNGY2ZjljXkEyXkFqcGc@._V1_.jpg', 9.3, 'Amazon Prime, Hulu', NULL, NULL),
(5, 'The Godfather', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 'Francis Ford Coppola', 'Marlon Brando, Al Pacino, James Caan', 1972, 'https://static0.moviewebimages.com/wordpress/wp-content/uploads/sharedimages/2024/04/the-godfather-poster.jpeg', 9.2, 'Netflix, Amazon Prime', NULL, NULL),
(6, 'The Avengers', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are to stop the mischievous Loki and his alien army from enslaving humanity.', 'Joss Whedon', 'Robert Downey Jr., Chris Evans, Scarlett Johansson', 2012, 'https://m.media-amazon.com/images/M/MV5BNGE0YTVjNzUtNzJjOS00NGNlLTgxMzctZTY4YTE1Y2Y1ZTU4XkEyXkFqcGc@._V1_.jpg', 8.0, 'Disney+, Amazon Prime', NULL, NULL),
(7, 'Interstellar', 'A group of explorers must travel through a wormhole in space in an attempt to ensure humanity\'s survival.', 'Christopher Nolan', 'Matthew McConaughey, Anne Hathaway, Jessica Chastain', 2014, 'https://m.media-amazon.com/images/M/MV5BYzdjMDAxZGItMjI2My00ODA1LTlkNzItOWFjMDU5ZDJlYWY3XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', 8.6, 'Netflix, Amazon Prime, Hulu', NULL, NULL),
(8, 'Forrest Gump', 'The presidencies of Kennedy and Johnson, the events of Vietnam, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an extraordinary level of intelligence.', 'Robert Zemeckis', 'Tom Hanks, Robin Wright, Gary Sinise', 1994, 'https://image.tmdb.org/t/p/w780/arw2vcBveWOVZr6pxd9XTd1TdQa.jpg', 8.8, 'Netflix, Amazon Prime', NULL, NULL),
(9, 'The Lion King', 'A young lion prince flees his kingdom only to learn the true meaning of responsibility and bravery.', 'Jon Favreau', 'Donald Glover, Beyoncé, Seth Rogen', 2019, 'https://m.media-amazon.com/images/M/MV5BMjIwMjE1Nzc4NV5BMl5BanBnXkFtZTgwNDg4OTA1NzM@._V1_FMjpg_UX1000_.jpg', 6.9, 'Disney+, Amazon Prime', NULL, NULL),
(10, 'Fight Club', 'An insomniac office worker and a soap salesman build a global organization to help vent male aggression.', 'David Fincher', 'Brad Pitt, Edward Norton, Helena Bonham Carter', 1999, 'https://m.media-amazon.com/images/M/MV5BOTgyOGQ1NDItNGU3Ny00MjU3LTg2YWEtNmEyYjBiMjI1Y2M5XkEyXkFqcGc@._V1_.jpg', 8.8, 'Amazon Prime, Hulu, Netflix', NULL, NULL);


--Favorites Table
CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

