-- file: ex1.hs
myLen :: [a] -> Int

myLen (x:xs) =  1 + myLen xs
myLen [] =  0

