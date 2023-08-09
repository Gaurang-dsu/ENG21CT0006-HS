class Slicable a where
    slice :: a -> Int -> Int -> Maybe a


instance Slicable String where
    slice str start end
        | start < 0 || end > length str || start > end = Nothing  
        | otherwise = Just (take (end - start) (drop start str))


sliceMyString :: Slicable a => a -> Int -> Int -> Maybe a
sliceMyString value start end = slice value start end

main :: IO ()
main = do
    let myString = "Hello, World!"
        startIndex = 7
        endIndex = 12
        result = sliceMyString myString startIndex endIndex
    case result of
        Just substr -> putStrLn $ "Substring: " ++ substr
        Nothing -> putStrLn "Invalid indices or slice operation"

