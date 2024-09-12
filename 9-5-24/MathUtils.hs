module MathUtil where

import Debug.Trace
-- sumList' xs = foldr add 0 xs

add x y = x + y

inc1 x = add 1

-- myIncrementList xs = foldr (\x acc -> inc1 x : acc) [] xs

fac 0 = 1
fac n = n * fac (n - 1)

-- myMul x y | trace ("myMul called with " ++ show x ++ " " ++ show y) False = undefined

myMul x 1 = x
myMul 1 x = x
myMul _ 0 = 0
myMul 0 _ = 0
myMul x y = x + myMul x (y - 1)

myFindIndexHelp [] _ _ = -1
myFindIndexHelp (x : xs) n elm = if elm == x then n else myFindIndexHelp xs (n + 1) elm
myFindIndex xs elm = myFindIndexHelp xs 0 elm

findMaxHelper [] max = max
findMaxHelper (x : xs) max = if x > max then findMaxHelper xs x else findMaxHelper xs max
findMax [] = -1
findMax (x : xs) = findMaxHelper xs x

myReverse [] = []
myReverse (x : xs) = myReverse xs ++ [x]

myTake _ [] = []
myTake 0 _ = []
myTake n (x : xs) = x : myTake (n - 1) xs 

-- splitByConditionHelper [] _ res = res
-- splitByConditionHelper (x : xs) c (leftList, rightList) = 
--     if c x then splitByConditionHelper xs x (x : leftList, rightList)
--     else splitByConditionHelper xs x (leftList, x : rightList)


-- splitByCondition xs c = splitByConditionHelper xs c ([], [])

pythagTrips = [(a, b, c) | a <- [1..100], b <- [1..100], c <- [1..100], (a ^ 2) + (b ^ 2) == (c ^ 2)]

subList = [[1..n] | n <- [1..5]]


fibs = 0 : 1 : zipWith add fibs (tail fibs)

-- 0 1 1 2 3 ...
-- 1 1 2 3 ...
-- 1 2 3 5

-- fibs   : 00 01 01 02 03 05 08
-- tfibs  : 01 01 02 03 05 08
-- result : 01 02 03 05 08 13