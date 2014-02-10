-- file: ch02/lending.hs

lend amount balance = let reserve    = 100
			  newBalance = balance - amount
		      in if newBalance < reserve
		         then Nothing
		         else Just newBalance

lend2 amount balance = if newBalance < reserve * 0.5
		       then Nothing
		       else Just newBalance
                 where reserve    = 100
		       newBalance = balance - amount
