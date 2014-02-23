-- Create a function that sorts a list of lists based on the length of each sublist

import Data.List
import Data.Ord

sortListOfLists :: [[a]] -> [[a]]
sortListOfLists = sortBy (comparing length)
