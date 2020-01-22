CREATE DATABASE db_LIBRARY

USE db_LIBRARY


CREATE TABLE LIBRARY_BRANCH (BranchID INT NOT NULL PRIMARY KEY IDENTITY (1,1), BranchName VARCHAR(30), "Address" VARCHAR(100)); 

CREATE TABLE PUBLISHER (PublisherName VARCHAR(50) Primary Key, "Address" VARCHAR(50), Phone VARCHAR(30)); 

CREATE TABLE BOOKS (BookID INT NOT NULL PRIMARY KEY IDENTITY (1,1), Title VARCHAR(50), 
	PublisherName VARCHAR(50) CONSTRAINT fk_publisherName FOREIGN KEY REFERENCES PUBLISHER(PublisherName) ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE BOOK_AUTHORS (BookID INT NOT NULL CONSTRAINT fk_bookIDAUTHORS FOREIGN KEY REFERENCES BOOKS(BookID) ON UPDATE CASCADE ON DELETE CASCADE, 
	AuthorName VARCHAR(50)); 

CREATE TABLE BOOK_COPIES (BookID INT NOT NULL CONSTRAINT fk_bookIDCOPIES FOREIGN KEY REFERENCES BOOKS(BookID) ON UPDATE CASCADE ON DELETE CASCADE, 
	BranchID INT NOT NULL CONSTRAINT fk_BranchID FOREIGN KEY REFERENCES LIBRARY_BRANCH(BranchID) ON UPDATE CASCADE ON DELETE CASCADE, 
	Number_Of_Copies INT NOT NULL);

CREATE TABLE BORROWER (CardNo INT NOT NULL PRIMARY KEY IDENTITY (1,1), "Name" VARCHAR(50), "Address" VARCHAR(50), Phone VARCHAR(50)); 

CREATE TABLE BOOK_LOANS (BookID INT NOT NULL CONSTRAINT fk_bookIDLOANS FOREIGN KEY REFERENCES BOOKS(BookID) ON UPDATE CASCADE ON DELETE CASCADE, 
	BranchID INT NOT NULL CONSTRAINT fk_BranchIDLOANS FOREIGN KEY REFERENCES LIBRARY_BRANCH(BranchID) ON UPDATE CASCADE ON DELETE CASCADE,
	CardNO INT NOT NULL CONSTRAINT fk_cardNO FOREIGN KEY REFERENCES BORROWER(CardNo) ON UPDATE CASCADE ON DELETE CASCADE,
	DateOut DATE NOT NULL, DateDue DATE NOT NULL); 

INSERT INTO LIBRARY_BRANCH 
(BranchName, "Address") 
VALUES 
('Central', '1450 S Molalla Ave, Oregon City, OR 97045'),
('Sharpstown', '1525 SE Grand Ave, Portland, OR 97214'), 
('Pawnee', '232 NE 82nd Ave, Portland, OR 97220'), 
('Eagleton','4242 SE 82nd Ave, Portland, OR 97266');

INSERT INTO PUBLISHER
(PublisherName, "Address",Phone)
VALUES 
('Random House', '13130 SE 84th Ave, Clackamas, OR 97015', '503-794-5500'),
('Penguin Books', '4200 SE 82nd Ave, Portland, OR 97266','503-788-0200'),
('Ace Books', '9000 SE Sunnyside Rd, Clackamas, OR 97015','503-659-1057'), 
('Harcourt', '8955 SE 82nd Ave, Happy Valley, OR 97086', '503-788-2000');


INSERT INTO BOOKS
(Title, PublisherName)
VALUES 
('The Lost Tribe', 'Random House'),
('Carrie', 'Random House'),
('The Stand', 'Random House'),
('The Old Man and the Sea', 'Ace Books'),
('Les Miserables', 'Penguin Books'),
('The Color Purple','Harcourt'), 
('The Three Musketeers', 'Penguin Books'),
('Crime and Punishment', 'Penguin Books'), 
('The Adventures of Tom Sawyer', 'Ace Books'), 
('A Connecticut Yankee in King Arthur''s Court', 'Ace Books'), 
('Dune', 'Harcourt'),
('Ender''s Game', 'Random House'), 
('Speaker for the Dead', 'Random House'), 
('The Awakening', 'Ace Books'), 
('Frankenstein', 'Random House'), 
('I Know Why the Caged Bird Sings', 'Harcourt'), 
('The Once and Future King', 'Harcourt'), 
('Anansi Boys', 'Random House'), 
('American Gods', 'Random HouSe'), 
('Pride and Prejudice', 'Penguin Books'), 
('Sense and Sensibility', 'Penguin Books'),
('Dracula', 'Ace Books'), 
('War and Peace', 'Harcourt'),
('1984', 'Random House'), 
('Animal Farm', 'Random House'), 
('The Lord of the Rings', 'Penguin Books'),
('The Hobbit', 'Penguin Books');


INSERT INTO BOOK_AUTHORS
(BookID, AuthorName)
VALUES
(1, 'Mark Lee'),
(2, 'Stephen King'),
(3, 'Stephen King'),
(4, 'Ernest Hemingway'),
(5, 'Victor Hugo'), 
(6, 'Alice Walker'), 
(7, 'Alexander Dumas'), 
(8, 'Fyodor Dostoevsky'), 
(9, 'Mark Twain'), 
(10, 'Mark Twain'),
(11, 'George Herbert'), 
(12, 'Orson Scott Card'), 
(13, 'Orson Scott Card'), 
(14, 'Kate Chopin'), 
(15, 'Mary Shelley'),
(16, 'Maya Angelou'), 
(17, 'T.H. White'), 
(18, 'Neil Gaiman'), 
(19, 'Neil Gaiman'),
(20, 'Jane Austen'), 
(21, 'Jane Austen'), 
(22, 'Bram Stoker'), 
(23, 'Leo Tolstoy'),
(24, 'George Orwell'), 
(25, 'George Orwell'), 
(26, 'J.R.R. Tolkien'), 
(27, 'J.R.R. Tolkien');	

INSERT INTO BOOK_COPIES
(BookID, BranchID, Number_Of_Copies) 
VALUES
(1, 2, 7),
(1, 3, 4),
(2, 1, 5), 
(2, 4, 6), 
(3, 3, 8), 
(3, 1, 3), 
(3, 2, 2),
(4, 4, 4), 
(4, 3, 2), 
(4, 2, 3), 
(4, 1, 5), 
(5, 1, 2), 
(5, 3, 6), 
(5, 4, 10), 
(6, 2, 6), 
(6, 3, 2), 
(6, 4, 3), 
(7, 1, 2), 
(7, 2, 3), 
(7, 4, 8), 
(8, 1, 4), 
(8, 2, 9), 
(8, 3, 3), 
(9, 2, 2), 
(9, 3, 5), 
(9, 4, 7), 
(10, 1, 3), 
(10, 2, 2), 
(10, 3, 7),
(10, 4, 8), 
(11, 1, 4), 
(11, 2, 3), 
(11, 3, 3), 
(11, 4, 5), 
(12, 1, 2), 
(12, 2, 3), 
(12, 4, 8), 
(12, 1, 4), 
(13, 2, 2), 
(13, 3, 4), 
(13, 4, 2), 
(14, 1, 2), 
(14, 2, 3), 
(14, 3, 2), 
(15, 1, 4), 
(15, 2, 3), 
(15, 3, 6), 
(15, 4, 4), 
(16, 2, 8), 
(16, 3, 7), 
(16, 4, 3), 
(17, 1, 2), 
(17, 2, 2), 
(17, 4, 5),
(18, 1, 3), 
(18, 3, 9), 
(18, 4, 7),
(19, 1, 3),
(19, 2, 8),
(19, 4, 2),
(20, 2, 5),
(20, 3, 3),
(20, 4, 3),
(21, 2, 3),
(21, 3, 2),
(21, 4, 2),
(22, 1, 2),
(22, 2, 3),
(23, 4, 3),
(24, 1, 3),
(24, 3, 5),
(24, 4, 4),
(25, 1, 4),
(25, 2, 4),
(25, 3, 3),
(25, 4, 2),
(26, 1, 4),
(26, 2, 2),
(26, 3, 3),
(26, 4, 2),
(27, 1, 2),
(27, 2, 2),
(27, 3, 3),
(27, 4, 6);

INSERT INTO BORROWER
("Name", "Address", Phone)
VALUES
('Harry Potter', '2203 South 355th Street, Federal Way, WA 98003', '253-776-4494'), 
('Jessica Day', '2203 South 355th Street, Federal Way WA 98003', '253-776-5899'),
('Han Solo', '3445 N Broadway Ave, Portland, OR 97045', '253-718-4899'),
('John Brown', '1509 N Finch Lane, Oregon City, OR 97023', '503-994-7633'),
('Hermione Granger', '76403 East 26th Ave, Seattle WA 98003', '206-846-7221'),
('Bruce Dickinson', '884 West Acacia Ave, Tacoma WA 98018', '253-623-2543'),
('Isabella Greene', '81231 North 45th Street, Clackamas OR 97032', '503-831-3495'),
('Rachel Smith', '6321 West Plymouth Lane, Auburn WA 98002', '253-422-6343'),
('Bilbo Baggins', '7112 Shire Lane, Leavenworth WA 98332', '425-974-4214'),
('Natasha Malone', '421 North Oak Street, Portland OR 97025', '503-121-8420');

INSERT INTO BOOK_LOANS
(BookID, BranchID, CardNO, DateOut, DateDue)
VALUES 
(20, 2, 1, '20191120', '20200121'),
(18, 3, 1, '20191120', '20200121'),  
(3, 2, 1, '20191204', '20200130'),
(6, 2, 1, '20191204', '20200210'),
(7, 2, 1, '20191204', '20200210'),
(10, 2, 1, '20191220', '20200221'),
(1, 2, 1, '20191220', '20200221'),
(27, 1, 2, '20191115', '20200121'),
(2, 1, 2, '20191115', '20200124'),
(11, 1, 2, '20191217', '20200219'),
(25, 1, 2, '20191030', '20200110'),
(19, 1, 2, '20200107', '20200310'),  
(7, 1, 2, '20191209', '20200122'),
(4, 1, 2, '20191215', '20200128'),
(6, 3, 5, '20191122', '20200123'),
(13, 3, 5, '20191130', '20200124'),
(14, 3, 5, '20191220', '20200125'),
(10, 3, 5, '20191222', '20200126'),
(21, 3, 5, '20191223', '20200127'),
(18, 3, 5, '20191224', '20200128'),
(20, 3, 5, '20191225', '20200129'),
(27, 3, 5, '20191223', '20200121'),  
(16, 3, 5, '20191225', '20200125'),
(3, 3, 5, '20191230', '20200201'),
(1, 3, 5, '20191231', '20200202'),
(25, 3, 5, '20200102', '20200215'),
(26, 3, 5, '20200104', '20200217'),
(9, 3, 5, '20200105', '20200219'),
(15, 3, 5, '20200108', '20200224'),
(24, 4, 5, '20200115', '20200307'),
(20, 4, 6, '20191120', '20200121'),
(26, 4, 6, '20190920', '20191130'),  
(2, 4, 6, '20190918', '20191128'),
(4, 4, 6, '20181120', '20190115'),
(7, 1, 7, '20191019', '20200122'),
(10, 1, 7, '20191210', '20200203'),
(17, 1, 7, '20191215', '20200208'),
(24, 1, 7, '20191218', '20200214'),
(12, 4, 8, '20200105', '20200310'),
(10, 2, 9, '20200111', '20200322'),
(9, 2, 9, '20200113', '20200219'),
(22, 2, 9, '20200116', '20200221'),  
(3, 2, 9, '20200120', '20200228'),
(2, 1, 10, '20191220', '20200205'),
(4, 1, 10, '20191220', '20200205'),
(7, 1, 10, '20191220', '20200205'),
(10, 1, 10, '20191220', '20200205'),
(26, 1, 10, '20200105', '20200121'),
(19, 1, 10, '20200105', '20200121'),
(17, 1, 10, '20200105', '20200121'),
(12, 1, 10, '20200105', '20200121');

SELECT * FROM BOOK_AUTHORS;

SELECT * FROM LIBRARY_BRANCH;

SELECT * FROM BOOK_COPIES;

SELECT * FROM BORROWER;

SELECT * FROM BOOK_LOANS;

SELECT * FROM BOOKS;

SELECT * FROM PUBLISHER;




