len4 xs = case xs of
    [] -> 0
    (_:ys) -> 1 + len4 ys -- this line is just simple pattern matching

-- increment all elemnts of a list by one

inc1 x = 1 + x

incrementList xs = map inc1 xs

sqrList xs = map (\x -> x * x) xs

add1