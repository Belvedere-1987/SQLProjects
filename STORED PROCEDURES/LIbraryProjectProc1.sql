CREATE PROC uspProc1
AS
SELECT Number_of_Copies 
FROM BOOK_COPIES
 INNER JOIN BOOKS ON BOOK_COPIES.BookID=BOOKS.BookID
WHERE Title = 'The Lost Tribe' and BranchID = 2; 

EXEC uspProc1



