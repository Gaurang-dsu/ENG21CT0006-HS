import Control.Monad.Reader

data Env = Env { userName :: String }

type GreetingReader a = Reader Env a

greetUser :: GreetingReader String
greetUser = do
    name <- asks userName
    return $ "Hello, " ++ name ++ "! Welcome!"

main :: IO ()
main = do
    putStrLn "Enter your name:"
    name <- getLine
    let env = Env { userName = name }
    let greeting = runReader greetUser env
    putStrLn greeting
