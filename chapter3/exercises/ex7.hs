-- Define a function that joins a list of lists together using a separator value

intersperse :: a -> [[a]] -> [a]

intersperse sep [] = []
intersperse sep (x:[]) = x
intersperse sep (x:xs) = x ++ [sep] ++ (intersperse sep xs)
