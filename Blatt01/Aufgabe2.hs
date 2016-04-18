euklid :: Integer -> Integer -> Integer

euklid a b
	| a == 0 = b
	| a > b = euklid b (a-b)
	| otherwise = euklid a (b-a)

