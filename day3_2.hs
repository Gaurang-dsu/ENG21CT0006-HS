
safeDiv :: Int -> Int -> Maybe Double
safeDiv _ 0 = Nothing  
safeDiv x y = Just (fromIntegral x / fromIntegral y)


safeDivision2 :: Int -> [(Int, Int)] -> Maybe Double
safeDivision2 index tuples
    | index < 0 || index >= length tuples = Nothing  
    | otherwise = case tuples !! index of
                    (x, y) -> safeDiv x y

main :: IO ()
main = do
    let tuples = [(10, 2), (5, 0), (8, 4)]
        index = 1
        result = safeDivision2 index tuples
    putStrLn $ "Division result at index " ++ show index ++ ": " ++ show result
