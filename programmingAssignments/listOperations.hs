--------------------------------------------------------------------------------------------------------------------------------------

dropList 0 xs = xs
dropList n [] = []
dropList n (x : xs) = dropList (n - 1) xs 

--------------------------------------------------------------------------------------------------------------------------------------

splitAtIndexHelper _ [] ys = (ys, [])
splitAtIndexHelper 0 xs ys = (ys, xs)
splitAtIndexHelper n (x : xs) ys = splitAtIndexHelper (n - 1) xs (ys ++ [x])
splitAtIndex n xs = splitAtIndexHelper n xs []

--------------------------------------------------------------------------------------------------------------------------------------

concatList [] ys = ys
concatList (x : xs) ys = x : concatList xs ys

--------------------------------------------------------------------------------------------------------------------------------------

interleaveLists [] ys = ys
interleaveLists xs [] = xs
interleaveLists (x : xs) (y : ys) = x : y : interleaveLists xs ys

--------------------------------------------------------------------------------------------------------------------------------------

mergeAscending xs [] = xs
mergeAscending [] ys = ys
mergeAscending (x : xs) (y : ys) = 
    if x < y
        then x : mergeAscending xs (y : ys)
        else y : mergeAscending (x : xs) ys

--------------------------------------------------------------------------------------------------------------------------------------

mergeDescending xs [] = xs
mergeDescending [] ys = ys
mergeDescending (x : xs) (y : ys) =
    if y < x
        then x : mergeDescending xs (y : ys)
        else y : mergeDescending (x : xs) ys

--------------------------------------------------------------------------------------------------------------------------------------