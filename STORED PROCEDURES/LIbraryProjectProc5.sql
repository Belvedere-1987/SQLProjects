USE db_LIBRARY
GO
CREATE PROC uspProc5
AS
SELECT COUNT(BOOK_LOANS.BranchID),BranchName
FROM BOOK_LOANS
	INNER JOIN LIBRARY_BRANCH ON LIBRARY_BRANCH.BranchID = BOOK_LOANS.BranchID
GROUP BY BranchName
ORDER BY COUNT(BOOK_LOANS.BranchID) DESC;

EXEC uspProc5