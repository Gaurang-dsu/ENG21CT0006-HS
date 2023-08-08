data Tree = Leaf Int | Node Int Tree Tree

sumTree :: Tree -> Int
sumTree (Leaf val) = val
sumTree (Node val left right) = val + sumTree left + sumTree right
