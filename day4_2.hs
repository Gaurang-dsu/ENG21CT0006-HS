sumListsElements :: [Int] -> [Int] -> [Int]
sumListsElements list1 list2 = zipWith (+) list1 list2
main :: IO ()
main = do
    let list1 = [1, 2, 3, 4, 5]
    let list2 = [5, 4, 3, 2, 1]
    let summedList = sumListsElements list1 list2
    print summedList
