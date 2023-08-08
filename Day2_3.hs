data Tree = EmptyTree
          | TreeNode Int Tree Tree

instance Show Tree where
    show EmptyTree = "Empty"
    show (TreeNode value left right) =
        "Node " ++ show value ++ " (" ++ show left ++ ") (" ++ show right ++ ")"

sumTree :: Tree -> Int
sumTree EmptyTree = 0
sumTree (TreeNode value left right) =
    value + sumTree left + sumTree right

main :: IO ()
main = do
    let sampleTree = TreeNode 10 (TreeNode 5 EmptyTree EmptyTree) (TreeNode 15 EmptyTree EmptyTree)
    putStrLn $ "Sample Tree: " ++ show sampleTree
    putStrLn $ "Sum of values in the tree: " ++ show (sumTree sampleTree)
