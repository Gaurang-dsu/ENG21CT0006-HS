import Control.Monad.State
type CounterState a = State Int a

incrementCounter :: CounterState ()
incrementCounter = modify (+1)

getCounter :: CounterState Int
getCounter = get

main :: IO ()
main = do
    let (result, finalState) = runState (incrementCounter >> incrementCounter >> getCounter) 0
    putStrLn $ "Final Counter Value: " ++ show result
    putStrLn $ "Final State: " ++ show finalState
