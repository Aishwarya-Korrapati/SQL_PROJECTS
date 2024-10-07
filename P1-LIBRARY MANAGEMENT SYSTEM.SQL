CREATE database LMS;
USE LMS;
CREATE TABLE books(
	id SERIAL PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	author VARCHAR(255) NOT NULL,
	category VARCHAR(255) NOT NULL,
	price DECIMAL(10,2) NOT NUll,
	status VARCHAR(255) NOT NULL,
	total_copies INT NOT NULL
	);
CREATE TABLE customers (
	id SERIAl PRIMARY KEY,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	phone_number VARCHAR(20) NOT NULL
	);
CREATE TABLE issued_books (
	id SERIAL PRIMARY KEY,
	book_id INT NOT NULL REFERENCES books(id),
	customer_id INT NOT NULL REFERENCES customers(id),
	issue_date DATE NOT NULL,
	due_date DATE NOT NULL,
	return_date DATE
	);
/* ======================= INSERTING VALUES ========================*/

INSERT INTO books (title, author, category, price, status, total_copies)
VALUES
    ('Book 1', 'Author 1', 'Fiction', 10.99, 'Available', 5),
    ('Book 2', 'Author 2', 'Non-Fiction', 15.99, 'Available', 3),
    ('Book 3', 'Author 3', 'Science', 12.99, 'Available', 7),
    ('Book 4', 'Author 4', 'Fantasy', 9.99, 'Available', 2),
    ('Book 5', 'Author 5', 'Mystery', 14.99, 'Available', 4),
    ('Book 6', 'Author 6', 'Romance', 11.99, 'Available', 3),
    ('Book 7', 'Author 7', 'Biography', 13.99, 'Available', 6),
    ('Book 8', 'Author 8', 'Thriller', 16.99, 'Available', 2),
    ('Book 9', 'Author 9', 'History', 10.49, 'Available', 8),
    ('Book 10', 'Author 10', 'Self-Help', 14.49, 'Available', 5),
    ('Book 11', 'Author 11', 'Fiction', 12.99, 'Available', 3),
    ('Book 12', 'Author 12', 'Science', 9.99, 'Available', 7),
    ('Book 13', 'Author 13', 'Mystery', 11.99, 'Available', 4),
    ('Book 14', 'Author 14', 'Romance', 15.99, 'Available', 6),
    ('Book 15', 'Author 15', 'Fantasy', 10.99, 'Available', 2),
    ('Book 16', 'Author 16', 'Biography', 13.49, 'Available', 8),
    ('Book 17', 'Author 17', 'Non-Fiction', 16.49, 'Available', 5),
    ('Book 18', 'Author 18', 'Thriller', 12.99, 'Available', 3),
    ('Book 19', 'Author 19', 'History', 9.99, 'Available', 7),
    ('Book 20', 'Author 20', 'Science', 14.99, 'Available', 4),
    ('Book 21', 'Author 21', 'Fiction', 11.99, 'Available', 6),
    ('Book 22', 'Author 22', 'Mystery', 15.49, 'Available', 2),
    ('Book 23', 'Author 23', 'Romance', 17.49, 'Available', 8),
    ('Book 24', 'Author 24', 'Non-Fiction', 13.99, 'Available', 5),
    ('Book 25', 'Author 25', 'Fantasy', 10.99, 'Available', 3),
    ('Book 26', 'Author 26', 'Biography', 12.99, 'Available', 7),
    ('Book 27', 'Author 27', 'Thriller', 16.99, 'Available', 4),
    ('Book 28', 'Author 28', 'Science', 9.99, 'Available', 6),
    ('Book 29', 'Author 29', 'History', 11.49, 'Available', 2),
    ('Book 30', 'Author 30', 'Fiction', 14.49, 'Available', 8),
    ('Book 31', 'Author 31', 'Mystery', 10.99, 'Available', 5),
    ('Book 32', 'Author 32', 'Romance', 12.99, 'Available', 3),
    ('Book 33', 'Author 33', 'Non-Fiction', 15.99, 'Available', 7),
    ('Book 34', 'Author 34', 'Biography', 9.99, 'Available', 4),
    ('Book 35', 'Author 35', 'Fantasy', 13.99, 'Available', 6),
    ('Book 36', 'Author 36', 'Thriller', 11.99, 'Available', 2),
    ('Book 37', 'Author 37', 'History', 16.49, 'Available', 8),
    ('Book 38', 'Author 38', 'Science', 10.49, 'Available', 5),
    ('Book 39', 'Author 39', 'Fiction', 14.99, 'Available', 3),
    ('Book 40', 'Author 40', 'Mystery', 12.99, 'Available', 7),
    ('Book 41', 'Author 41', 'Romance', 9.99, 'Available', 4),
    ('Book 42', 'Author 42', 'Non-Fiction', 11.99, 'Available', 6),
    ('Book 43', 'Author 43', 'Biography', 15.49, 'Available', 2),
    ('Book 44', 'Author 44', 'History', 17.49, 'Available', 8),
    ('Book 45', 'Author 45', 'Fantasy', 13.99, 'Available', 5),
    ('Book 46', 'Author 46', 'Science', 10.99, 'Available', 3),
    ('Book 47', 'Author 47', 'Thriller', 12.99, 'Available', 7),
    ('Book 48', 'Author 48', 'Mystery', 16.99, 'Available', 4),
    ('Book 49', 'Author 49', 'Romance', 9.99, 'Available', 6),
    ('Book 50', 'Author 50', 'Non-Fiction', 11.49, 'Available', 2),
	('Book 51', 'Author 51', 'Fiction', 10.99, 'Available', 5),
    ('Book 52', 'Author 52', 'Non-Fiction', 15.99, 'Available', 3),
    ('Book 53', 'Author 53', 'Science', 12.99, 'Available', 7),
    ('Book 54', 'Author 54', 'Fantasy', 9.99, 'Available', 2),
    ('Book 55', 'Author 55', 'Mystery', 14.99, 'Available', 4),
    ('Book 56', 'Author 56', 'Romance', 11.99, 'Available', 3),
    ('Book 57', 'Author 57', 'Biography', 13.99, 'Available', 6),
    ('Book 58', 'Author 58', 'Thriller', 16.99, 'Available', 2),
    ('Book 59', 'Author 59', 'History', 10.49, 'Available', 8),
    ('Book 60', 'Author 60', 'Self-Help', 14.49, 'Available', 5),
    ('Book 61', 'Author 61', 'Fiction', 12.99, 'Available', 3),
    ('Book 62', 'Author 62', 'Science', 9.99, 'Available', 7),
    ('Book 63', 'Author 63', 'Mystery', 11.99, 'Available', 4),
    ('Book 64', 'Author 64', 'Romance', 15.99, 'Available', 6),
    ('Book 65', 'Author 65', 'Fantasy', 10.99, 'Available', 2),
    ('Book 66', 'Author 66', 'Biography', 13.49, 'Available', 8),
    ('Book 67', 'Author 67', 'Non-Fiction', 16.49, 'Available', 5),
    ('Book 68', 'Author 68', 'Thriller', 12.99, 'Available', 3),
    ('Book 69', 'Author 69', 'History', 9.99, 'Available', 7),
    ('Book 70', 'Author 70', 'Science', 14.99, 'Available', 4),
    ('Book 71', 'Author 71', 'Fiction', 11.99, 'Available', 6),
    ('Book 72', 'Author 72', 'Mystery', 15.49, 'Available', 2),
    ('Book 73', 'Author 73', 'Romance', 17.49, 'Available', 8),
    ('Book 74', 'Author 74', 'Non-Fiction', 13.99, 'Available', 5),
    ('Book 75', 'Author 75', 'Fantasy', 10.99, 'Available', 3),
    ('Book 76', 'Author 76', 'Biography', 12.99, 'Available', 7),
    ('Book 77', 'Author 77', 'Thriller', 16.99, 'Available', 4),
    ('Book 78', 'Author 78', 'Science', 9.99, 'Available', 6),
    ('Book 79', 'Author 79', 'History', 11.49, 'Available', 2),
    ('Book 80', 'Author 80', 'Fiction', 14.49, 'Available', 8),
    ('Book 81', 'Author 81', 'Mystery', 10.99, 'Available', 5),
    ('Book 82', 'Author 82', 'Romance', 12.99, 'Available', 3),
    ('Book 83', 'Author 83', 'Non-Fiction', 15.99, 'Available', 7),
    ('Book 84', 'Author 84', 'Biography', 9.99, 'Available', 4),
    ('Book 85', 'Author 85', 'Fantasy', 13.99, 'Available', 6),
    ('Book 86', 'Author 86', 'Thriller', 11.99, 'Available', 2),
    ('Book 87', 'Author 87', 'History', 16.49, 'Available', 8),
    ('Book 88', 'Author 88', 'Science', 10.49, 'Available', 5),
    ('Book 89', 'Author 89', 'Fiction', 14.99, 'Available', 3),
    ('Book 90', 'Author 90', 'Mystery', 12.99, 'Available', 7),
    ('Book 91', 'Author 91', 'Romance', 9.99, 'Available', 4),
    ('Book 92', 'Author 92', 'Non-Fiction', 11.99, 'Available', 6),
    ('Book 93', 'Author 93', 'Biography', 15.49, 'Available', 2),
    ('Book 94', 'Author 94', 'History', 17.49, 'Available', 8),
    ('Book 95', 'Author 95', 'Fantasy', 13.99, 'Available', 5),
    ('Book 96', 'Author 96', 'Science', 10.99, 'Available', 3),
    ('Book 97', 'Author 97', 'Thriller', 12.99, 'Available', 7),
    ('Book 98', 'Author 98', 'Mystery', 16.99, 'Available', 4),
    ('Book 99', 'Author 99', 'Romance', 9.99, 'Available', 6),
    ('Book 100', 'Author 100', 'Non-Fiction', 11.49, 'Available', 2);
/* ======================= INSERTING VALUES ========================*/

INSERT INTO books (title, author, category, price, status, total_copies)
VALUES
    ('Book 1', 'Author 1', 'Fiction', 10.99, 'Available', 5),
    ('Book 2', 'Author 2', 'Non-Fiction', 15.99, 'Available', 3),
    ('Book 3', 'Author 3', 'Science', 12.99, 'Available', 7),
    ('Book 4', 'Author 4', 'Fantasy', 9.99, 'Available', 2),
    ('Book 5', 'Author 5', 'Mystery', 14.99, 'Available', 4),
    ('Book 6', 'Author 6', 'Romance', 11.99, 'Available', 3),
    ('Book 7', 'Author 7', 'Biography', 13.99, 'Available', 6),
    ('Book 8', 'Author 8', 'Thriller', 16.99, 'Available', 2),
    ('Book 9', 'Author 9', 'History', 10.49, 'Available', 8),
    ('Book 10', 'Author 10', 'Self-Help', 14.49, 'Available', 5),
    ('Book 11', 'Author 11', 'Fiction', 12.99, 'Available', 3),
    ('Book 12', 'Author 12', 'Science', 9.99, 'Available', 7),
    ('Book 13', 'Author 13', 'Mystery', 11.99, 'Available', 4),
    ('Book 14', 'Author 14', 'Romance', 15.99, 'Available', 6),
    ('Book 15', 'Author 15', 'Fantasy', 10.99, 'Available', 2),
    ('Book 16', 'Author 16', 'Biography', 13.49, 'Available', 8),
    ('Book 17', 'Author 17', 'Non-Fiction', 16.49, 'Available', 5),
    ('Book 18', 'Author 18', 'Thriller', 12.99, 'Available', 3),
    ('Book 19', 'Author 19', 'History', 9.99, 'Available', 7),
    ('Book 20', 'Author 20', 'Science', 14.99, 'Available', 4),
    ('Book 21', 'Author 21', 'Fiction', 11.99, 'Available', 6),
    ('Book 22', 'Author 22', 'Mystery', 15.49, 'Available', 2),
    ('Book 23', 'Author 23', 'Romance', 17.49, 'Available', 8),
    ('Book 24', 'Author 24', 'Non-Fiction', 13.99, 'Available', 5),
    ('Book 25', 'Author 25', 'Fantasy', 10.99, 'Available', 3),
    ('Book 26', 'Author 26', 'Biography', 12.99, 'Available', 7),
    ('Book 27', 'Author 27', 'Thriller', 16.99, 'Available', 4),
    ('Book 28', 'Author 28', 'Science', 9.99, 'Available', 6),
    ('Book 29', 'Author 29', 'History', 11.49, 'Available', 2),
    ('Book 30', 'Author 30', 'Fiction', 14.49, 'Available', 8),
    ('Book 31', 'Author 31', 'Mystery', 10.99, 'Available', 5),
    ('Book 32', 'Author 32', 'Romance', 12.99, 'Available', 3),
    ('Book 33', 'Author 33', 'Non-Fiction', 15.99, 'Available', 7),
    ('Book 34', 'Author 34', 'Biography', 9.99, 'Available', 4),
    ('Book 35', 'Author 35', 'Fantasy', 13.99, 'Available', 6),
    ('Book 36', 'Author 36', 'Thriller', 11.99, 'Available', 2),
    ('Book 37', 'Author 37', 'History', 16.49, 'Available', 8),
    ('Book 38', 'Author 38', 'Science', 10.49, 'Available', 5),
    ('Book 39', 'Author 39', 'Fiction', 14.99, 'Available', 3),
    ('Book 40', 'Author 40', 'Mystery', 12.99, 'Available', 7),
    ('Book 41', 'Author 41', 'Romance', 9.99, 'Available', 4),
    ('Book 42', 'Author 42', 'Non-Fiction', 11.99, 'Available', 6),
    ('Book 43', 'Author 43', 'Biography', 15.49, 'Available', 2),
    ('Book 44', 'Author 44', 'History', 17.49, 'Available', 8),
    ('Book 45', 'Author 45', 'Fantasy', 13.99, 'Available', 5),
    ('Book 46', 'Author 46', 'Science', 10.99, 'Available', 3),
    ('Book 47', 'Author 47', 'Thriller', 12.99, 'Available', 7),
    ('Book 48', 'Author 48', 'Mystery', 16.99, 'Available', 4),
    ('Book 49', 'Author 49', 'Romance', 9.99, 'Available', 6),
    ('Book 50', 'Author 50', 'Non-Fiction', 11.49, 'Available', 2),
	('Book 51', 'Author 51', 'Fiction', 10.99, 'Available', 5),
    ('Book 52', 'Author 52', 'Non-Fiction', 15.99, 'Available', 3),
    ('Book 53', 'Author 53', 'Science', 12.99, 'Available', 7),
    ('Book 54', 'Author 54', 'Fantasy', 9.99, 'Available', 2),
    ('Book 55', 'Author 55', 'Mystery', 14.99, 'Available', 4),
    ('Book 56', 'Author 56', 'Romance', 11.99, 'Available', 3),
    ('Book 57', 'Author 57', 'Biography', 13.99, 'Available', 6),
    ('Book 58', 'Author 58', 'Thriller', 16.99, 'Available', 2),
    ('Book 59', 'Author 59', 'History', 10.49, 'Available', 8),
    ('Book 60', 'Author 60', 'Self-Help', 14.49, 'Available', 5),
    ('Book 61', 'Author 61', 'Fiction', 12.99, 'Available', 3),
    ('Book 62', 'Author 62', 'Science', 9.99, 'Available', 7),
    ('Book 63', 'Author 63', 'Mystery', 11.99, 'Available', 4),
    ('Book 64', 'Author 64', 'Romance', 15.99, 'Available', 6),
    ('Book 65', 'Author 65', 'Fantasy', 10.99, 'Available', 2),
    ('Book 66', 'Author 66', 'Biography', 13.49, 'Available', 8),
    ('Book 67', 'Author 67', 'Non-Fiction', 16.49, 'Available', 5),
    ('Book 68', 'Author 68', 'Thriller', 12.99, 'Available', 3),
    ('Book 69', 'Author 69', 'History', 9.99, 'Available', 7),
    ('Book 70', 'Author 70', 'Science', 14.99, 'Available', 4),
    ('Book 71', 'Author 71', 'Fiction', 11.99, 'Available', 6),
    ('Book 72', 'Author 72', 'Mystery', 15.49, 'Available', 2),
    ('Book 73', 'Author 73', 'Romance', 17.49, 'Available', 8),
    ('Book 74', 'Author 74', 'Non-Fiction', 13.99, 'Available', 5),
    ('Book 75', 'Author 75', 'Fantasy', 10.99, 'Available', 3),
    ('Book 76', 'Author 76', 'Biography', 12.99, 'Available', 7),
    ('Book 77', 'Author 77', 'Thriller', 16.99, 'Available', 4),
    ('Book 78', 'Author 78', 'Science', 9.99, 'Available', 6),
    ('Book 79', 'Author 79', 'History', 11.49, 'Available', 2),
    ('Book 80', 'Author 80', 'Fiction', 14.49, 'Available', 8),
    ('Book 81', 'Author 81', 'Mystery', 10.99, 'Available', 5),
    ('Book 82', 'Author 82', 'Romance', 12.99, 'Available', 3),
    ('Book 83', 'Author 83', 'Non-Fiction', 15.99, 'Available', 7),
    ('Book 84', 'Author 84', 'Biography', 9.99, 'Available', 4),
    ('Book 85', 'Author 85', 'Fantasy', 13.99, 'Available', 6),
    ('Book 86', 'Author 86', 'Thriller', 11.99, 'Available', 2),
    ('Book 87', 'Author 87', 'History', 16.49, 'Available', 8),
    ('Book 88', 'Author 88', 'Science', 10.49, 'Available', 5),
    ('Book 89', 'Author 89', 'Fiction', 14.99, 'Available', 3),
    ('Book 90', 'Author 90', 'Mystery', 12.99, 'Available', 7),
    ('Book 91', 'Author 91', 'Romance', 9.99, 'Available', 4),
    ('Book 92', 'Author 92', 'Non-Fiction', 11.99, 'Available', 6),
    ('Book 93', 'Author 93', 'Biography', 15.49, 'Available', 2),
    ('Book 94', 'Author 94', 'History', 17.49, 'Available', 8),
    ('Book 95', 'Author 95', 'Fantasy', 13.99, 'Available', 5),
    ('Book 96', 'Author 96', 'Science', 10.99, 'Available', 3),
    ('Book 97', 'Author 97', 'Thriller', 12.99, 'Available', 7),
    ('Book 98', 'Author 98', 'Mystery', 16.99, 'Available', 4),
    ('Book 99', 'Author 99', 'Romance', 9.99, 'Available', 6),
    ('Book 100', 'Author 100', 'Non-Fiction', 11.49, 'Available', 2);
INSERT INTO issued_books (book_id, customer_id, issue_date, due_date)
VALUES
    (1, 1, '2023-06-15', '2023-06-22'),
    (1, 1, '2023-06-15', '2022-06-22'),
    (1, 1, '2023-06-15', '2022-06-22'),
    (2, 2, '2023-06-16', '2023-06-23'),
    (3, 3, '2023-06-17', '2023-06-24'),
    (4, 4, '2023-06-18', '2023-06-25'),
    (5, 5, '2023-06-19', '2023-06-26'),
    (6, 6, '2023-06-20', '2023-06-27'),
    (7, 7, '2023-06-21', '2023-06-28'),
    (8, 8, '2023-06-22', '2023-06-29'),
    (9, 9, '2023-06-23', '2023-06-30'),
    (10, 10, '2023-06-24', '2023-07-01'),
    (11, 11, '2023-06-25', '2023-07-02'),
    (12, 12, '2023-06-26', '2023-07-03'),
    (13, 13, '2023-06-27', '2023-07-04'),
    (14, 14, '2023-06-28', '2023-07-05'),
    (15, 15, '2023-06-29', '2023-07-06'),
    (16, 16, '2023-06-30', '2023-07-07'),
    (17, 17, '2023-07-01', '2023-07-08'),
    (18, 18, '2023-07-02', '2023-07-09'),
    (19, 19, '2023-07-03', '2023-07-10'),
    (20, 20, '2023-07-04', '2023-07-11'),
    (21, 21, '2023-07-05', '2023-07-12'),
    (22, 22, '2023-07-06', '2023-07-13'),
    (23, 23, '2023-07-07', '2023-07-14'),
    (24, 24, '2023-07-08', '2023-07-15'),
    (25, 25, '2023-07-09', '2023-07-16'),
    (26, 26, '2023-07-10', '2023-07-17'),
    (27, 27, '2023-07-11', '2023-07-18'),
    (28, 28, '2023-07-12', '2023-07-19'),
    (29, 29, '2023-07-13', '2023-07-20'),
    (30, 30, '2023-07-14', '2023-07-21'),
    (31, 31, '2023-07-15', '2023-07-22'),
    (32, 32, '2023-07-16', '2023-07-23'),
    (33, 33, '2023-07-17', '2023-07-24'),
    (34, 34, '2023-07-18', '2023-07-25'),
    (35, 35, '2023-07-19', '2023-07-26'),
    (36, 36, '2023-07-20', '2023-07-27'),
    (37, 37, '2023-07-21', '2023-07-28'),
    (38, 38, '2023-07-22', '2023-07-29'),
    (39, 39, '2023-07-23', '2023-07-30'),
    (40, 40, '2023-07-24', '2023-07-31'),
    (41, 41, '2023-07-25', '2023-08-01'),
    (42, 42, '2023-07-26', '2023-08-02'),
    (43, 43, '2023-07-27', '2023-08-03'),
    (44, 44, '2023-07-28', '2023-08-04'),
    (45, 45, '2023-07-29', '2023-08-05'),
    (46, 46, '2023-07-30', '2023-08-06'),
    (47, 47, '2023-07-31', '2023-08-07'),
    (48, 48, '2023-08-01', '2023-08-08'),
    (49, 49, '2023-08-02', '2023-08-09'),
    (50, 50, '2023-08-03', '2023-08-10'),
	(51, 51, '2023-08-04', '2023-08-11'),
    (52, 52, '2023-08-05', '2023-08-12'),
    (53, 53, '2023-08-06', '2023-08-13'),
    (54, 54, '2023-08-07', '2023-08-14'),
    (55, 55, '2023-08-08', '2023-08-15'),
    (56, 56, '2023-08-09', '2023-08-16'),
    (57, 57, '2023-08-10', '2023-08-17'),
    (58, 58, '2023-08-11', '2023-08-18'),
    (59, 59, '2023-08-12', '2023-08-19'),
    (60, 60, '2023-08-13', '2023-08-20'),
    (61, 61, '2023-08-14', '2023-08-21'),
    (62, 62, '2023-08-15', '2023-08-22'),
    (63, 63, '2023-08-16', '2023-08-23'),
    (64, 64, '2023-08-17', '2023-08-24'),
    (65, 65, '2023-08-18', '2023-08-25'),
    (66, 66, '2023-08-19', '2023-08-26'),
    (67, 67, '2023-08-20', '2023-08-27'),
    (68, 68, '2023-08-21', '2023-08-28'),
    (69, 69, '2023-08-22', '2023-08-29'),
    (70, 70, '2023-08-23', '2023-08-30'),
    (71, 71, '2023-08-24', '2023-08-31'),
    (72, 72, '2023-08-25', '2023-09-01'),
    (73, 73, '2023-08-26', '2023-09-02'),
    (74, 74, '2023-08-27', '2023-09-03'),
    (75, 75, '2023-08-28', '2023-09-04'),
    (76, 76, '2023-08-29', '2023-09-05'),
    (77, 77, '2023-08-30', '2023-09-06'),
    (78, 78, '2023-08-31', '2023-09-07'),
    (79, 79, '2023-09-01', '2023-09-08'),
    (80, 80, '2023-09-02', '2023-09-09'),
    (81, 81, '2023-09-03', '2023-09-10'),
    (82, 82, '2023-09-04', '2023-09-11'),
    (83, 83, '2023-09-05', '2023-09-12'),
    (84, 84, '2023-09-06', '2023-09-13'),
    (85, 85, '2023-09-07', '2023-09-14'),
    (86, 86, '2023-09-08', '2023-09-15'),
    (87, 87, '2023-09-09', '2023-09-16'),
    (88, 88, '2023-09-10', '2023-09-17'),
    (89, 89, '2023-09-11', '2023-09-18'),
    (90, 90, '2023-09-12', '2023-09-19'),
    (91, 91, '2023-09-13', '2023-09-20'),
    (92, 92, '2023-09-14', '2023-09-21'),
    (93, 93, '2023-09-15', '2023-09-22'),
    (94, 94, '2023-09-16', '2023-09-23'),
    (95, 95, '2023-09-17', '2023-09-24'),
    (96, 96, '2023-09-18', '2023-09-25'),
    (97, 97, '2023-09-19', '2023-09-26'),
    (98, 98, '2023-09-20', '2023-09-27'),
    (99, 99, '2023-09-21', '2023-09-28'),
    (100, 100, '2023-09-22', '2023-09-29')
	;
/* ======================= END INSERTING VALUES ========================*/

/* ======================QUERIES=========================*/

/*  1. Find all books currently issued 
This query retrieves all the books that are currently issued and not yet returned.*/

SELECT * 
FROM issued_books
WHERE due_date >= CURDATE();

/*2. Find overdue books
To identify the books that are overdue and not returned by the customer:*/

SELECT * 
FROM issued_books
WHERE due_date < CURDATE();

/*3. Count of books issued to each customer
To track how many books each customer has issued:*/

SELECT customer_id, COUNT(*) AS books_issued
FROM issued_books
GROUP BY customer_id;

/*4. Top customers by number of issued books
To find customers who have issued the most books:*/

SELECT customer_id, COUNT(*) AS books_issued
FROM issued_books
GROUP BY customer_id
ORDER BY books_issued DESC
LIMIT 10;

/*5. Books issued between specific dates
For generating reports or records of books issued within a certain time frame:*/

SELECT * 
FROM issued_books
WHERE issue_date BETWEEN '2023-07-01' AND '2023-07-31';

/*6. Find the most popular books (most issued)
To identify books that are frequently issued:*/

SELECT book_id, COUNT(*) AS times_issued
FROM issued_books
GROUP BY book_id
ORDER BY times_issued DESC
LIMIT 10;

/*7. Books issued by a specific customer
This query can help track the borrowing history of a particular customer:*/

SELECT * 
FROM issued_books
WHERE customer_id = 1;  

/*8. Average loan duration for books
To find the average duration for which books are issued:*/

SELECT AVG(DATEDIFF(due_date, issue_date)) AS avg_loan_duration
FROM issued_books;

/*9. Books due in the next 7 days
To notify customers about upcoming due dates:*/

SELECT * 
FROM issued_books
WHERE due_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY);

/*11. Check for duplicate records
To find potential duplicates in the data (same book issued to the same customer multiple times):*/

SELECT book_id, customer_id, COUNT(*) AS duplicate_count
FROM issued_books
GROUP BY book_id, customer_id, issue_date
HAVING COUNT(*) > 1;

/*12. List customers who have never issued a book*/

SELECT * 
FROM customers
WHERE id NOT IN(SELECT customer_id FROM issued_books);

/*13.List total revenue generated from issued books*/

SELECT COUNT(b.price) AS total_revenue
FROM books AS b
JOIN issued_books AS i ON b.id=i.book_id
WHERE i.issue_date IS NOT NULL;

