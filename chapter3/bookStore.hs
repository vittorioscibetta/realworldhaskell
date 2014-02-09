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
