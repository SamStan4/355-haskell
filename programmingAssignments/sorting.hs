-- this is a utility function that merges two sorted lists in ascending order
-- mergeSortedListsHelper [] [] result = result
-- mergeSortedListsHelper [] ys result = result ++ ys
-- mergeSortedListsHelper xs [] result = result ++ xs
-- mergeSortedListsHelper (x : xs) (y : ys) result = 
--     if x < y then mergeSortedListsHelper xs (y : ys) (result ++ [x])
--     else mergeSortedListsHelper (x : xs) ys (result ++ [y])
-- mergeSortedLists xs ys = mergeSortedListsHelper xs ys []




