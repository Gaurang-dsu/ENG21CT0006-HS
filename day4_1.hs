incrementListElements :: [Int] -> [Int]
incrementListElements lst = map (\x -> x + 1) lst
main :: IO ()
main = do
    let originalList = [1, 2, 3, 4, 5]
    let incrementedList = incrementListElements originalList
    print incrementedList
