import System.Random (randomRIO)

main :: IO ()
main = do
    putStrLn "Welcome to the Guess the Number game!"
    
    target <- randomRIO (1, 100)
    playGame target

playGame :: Int -> IO ()
playGame target = do
    putStrLn "Please enter your guess:"
    guess <- readLn
    case compare guess target of
        LT -> do
            putStrLn "Too low!"
            playGame target
        GT -> do
            putStrLn "Too high!"
            playGame target
        EQ -> do
            putStrLn "Congratulations, you guessed the number!"
