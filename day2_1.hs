sumevenNumbers :: [Int] -> Int
sumevenNumbers [] = 0
sumevenNumbers (x:xs)
    | even x    = x + sumevenNumbers xs
    | otherwise = sumevenNumbers xs

main :: IO ()
main = do
    let numbers = [1, 2, 3, 4, 5, 6, 7, 8]
    let result = sumevenNumbers numbers
    print result  
