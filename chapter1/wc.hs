-- file ch01/wc.hs
-- lines begin with "--" are comments.

main = interact wordCount
	where wordCount input = show (length input) ++ "\n"
