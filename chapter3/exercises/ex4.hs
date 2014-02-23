-- file chp3/ex4.hs

palindrome :: [a] -> [a]
palindrome [] = []
palindrome (x:xs) = [x] ++ palindrome (xs) ++ [x]
