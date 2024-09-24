recip2 0 = Nothing
recip2 x = Just $ 1 / x

-- recip3 0 = Left "div by zero"
-- recip3 x = Right $ 1 / x

-- getMyVal x case (recip3 x) of
--     (Left msg) -> -1
--     (Right val) -> val

sqr x = x * xs

-- reciperocal first and square it

reipSqr x = case recip2 x of
    (Left msg) -> Left msg
    (Right val) -> Right $ sqr val