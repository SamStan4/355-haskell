module MathUtil where

add x y = x + y

sub x y = x - y

mul x y = x * y

divi x y = x `div` y

-- this is a function that calculates the length of an array
len1 [] = 0
len1 (x : xs) = 1 + len1 xs

-- this is another funciton that calculates the length of an array
-- it makes use of the ternary operator here in haskell
len2 xs = if xs == [] then 0 else 1 + len2 (tail xs)

-- this is another cool way of finding the length of an array
len3 xs
    | xs == [] = 0
    | otherwise = 1 + len3 (tail xs)

myFibonacci 0 = 0
myFibonacci 1 = 1
myFibonacci n = myFibonacci (n - 1) + myFibonacci (n - 2)