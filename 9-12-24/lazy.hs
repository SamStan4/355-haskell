
numbers = [1..100]

odd' n = n `mod` 2 /= 0

getNodds n = take n (filter odd' numbers)

-- I like this version more than the other one
getFirstNOdds n = take n (filter odd [1..(n * 2)])

--------------------------------------------------

x :: Int -- "x has type int"

type point = (Double, Double)