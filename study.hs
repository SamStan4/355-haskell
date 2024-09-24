len [] = 0
len (_ : xs) = 1 + len xs

-- squareList xs = map (^2) xs

even' x =
    if (mod x 2) == 0
    then True
    else False
filterForEven xs = filter even' xs

sumListOne :: [Int] -> Int
sumListOne = foldr (+) 0

sumListTwo :: [Int] -> Int
sumListTwo = foldl (+) 0

x = [(a, b, c) | a <- [1..5], b <- [1..5], c <- [1..5]]

pythagTripples = [(a, b, c) | a <- [1..100], b <- [1..100], c <- [1..100], (a^2 + b^2 == c^2)]

nestedList = [[1..n] | n <- [1..5]]

type Name = String
type Age = Int
type Point = (Double, Double)

newtype USD = USD Double
newtype EUR = EUR Double

convertToUSD (EUR amount) = USD (amount * 1.1)

-- data Tree = Empty
--     | Node a (Tree a) (Tree a)

-- tree :: Tree Int
-- tree = Node 1
--     (Node 2 Empty Empty)
--     (Node 3 (Node 4 Empty Empty) Empty)


add x y = x + y

fibo = 0 : 1 : zipWith add fibo (tail fibo)