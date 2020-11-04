-- Query 1: Create authors table --
 CREATE TABLE AUTHORS (id SERIAL PRIMARY KEY, name VARCHAR(255));
-- Query 2:  Select distinct authores from the books table and insert into the author table --
 Query 2: INSERT INTO authors(name) SELECT DISTINCT author FROM books;
-- Query 3: Alter the books table to include a field for author id --
 Query 3: ALTER TABLE books ADD COLUMN author_id INT;
-- Query 4: Retrieves the primary key on each authors and fills in the author id field in the books table --
 Query 4: UPDATE books SET author_id=author.id FROM (SELECT * FROM authors) AS author WHERE books.author = author.name;
-- Query 5: Retrieves the primary key on each author and fills in the authors id field in the books table --

 Query 5: ALTER TABLE books DROP COLUMN author;
-- Query 6: Set the author_id as the foreign key of the books table --
 Query 6: ALTER TABLE books ADD CONSTRAINT fk_authors FOREIGN KEY (author_id) REFERENCES authors(id);
