-- file ex3.hs

mySum [] = 0
mySum lista = ( head lista ) + mySum ( tail lista )

mySumLen [] = (0,0)
mySumLen (x:xs) = let (sum, len) = mySumLen xs 
                  in (sum +x, len+1)

myMean [] = 0
myMean xs = (mySum xs) / fromIntegral (length xs) 

myMean' [] = 0
myMean' xs = let (sum, len) = mySumLen xs
	         mySumLen (y:ys) = let (sum, len) = mySumLen ys
                            in (sum +y, len+1) 	
                 mySumLen [] = (0,0)
	     in sum / fromIntegral len  

