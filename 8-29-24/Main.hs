import MathUtil

main = do
    putStrLn "Enter your first number: "
    numberOneString <- getLine
    putStrLn "Enter your second number: "
    numberTwoString <- getLine
    let numberOne = read numberOneString :: Int
    let numberTwo = read numberTwoString :: Int
    let numberSum = numberOne + numberTwo
    putStrLn ("Here is the sum of your two numbers: " ++ show numberSum)