describeNumber :: Int -> String
describeNumber n
    | n > 0     = "Positive"
    | n < 0     = "Negative"
    | otherwise = "Zero"

main :: IO ()
main = do
    putStrLn $ describeNumber 5  
    putStrLn $ describeNumber (-3) 
    putStrLn $ describeNumber 0    
