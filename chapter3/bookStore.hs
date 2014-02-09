-- fle: ch03/bookStore.hs
data BookInfo = Book Int String [String] deriving (Show)

myInfo = Book 9780135072455 "Algebra of Programming"
	["Richard Bird", "Oege de Moor"]

data MagazineInfo = Magazine Int String [String] deriving (Show)

type CustomerID = String
type ReviewBody = String
data BookReview = BookReview BookInfo CustomerID String
data BetterReview = BetterReview BookInfo CustomerID ReviewBody

type BookRecord = (BookInfo, BookReview)

type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = CreditCard CardNumber CardHolder Address
		| CashOnDelivery
		| Invoice CustomerID
		deriving (Show)


bookId  (Book id title authors) = id
bookTitle  (Book id title authors) = title
bookAuthors  (Book id title authors) = authors

niceId  (Book id _ _) = id
niceTitle  (Book _ title _) = title
niceAuthors  (Book _ _ authors) = authors



data Customer = Customer {
	customerID 		:: CustomerID
	, customerName 		:: String
	, customerAddress	:: Address
} deriving (Show) 



customer1 = Customer "28234" "J.R. Hacker" ["255 Syntac ct", "Milpitass, CA 95123", "USA"]

customer2 = Customer {
		customerID = "271828"
		, customerAddress = ["1048576 Disk Drive",
					"Milpitas, CA 95134",
					"USA"]
		, customerName = "Jane Q. Citizen"
}

