-- file: ch03/listADT.hs

data List a = Cons a (List a)
		| Nil
		deriving (Show)


fromList (x:xs) = Cons x (fromList xs)
fromList []     = Nil
