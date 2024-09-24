-- we have a new type called age
-- after the = is the constructor
newtype Age = Age Int

--------------------------------------------------------------------------------------------------------------

newtype USD = USD Double
    deriving (Show)
newtype EUR = EUR Double
    deriving (Show)

convert (USD v) = EUR (v * 1.1)
-- convert (EUR v) = USD (v `div` 1.1)

--------------------------------------------------------------------------------------------------------------

-- making a binary tree in haskell
-- 

-- data Tree = EmptyNode | Node Int Tree Tree
--     deriving (Show)

-- tree = Node 1 (Node 2 EmptyNode EmptyNode) (Node 3 (Node 4 EmptyNode EmptyNode) EmptyNode)

-- -- function to compute depth of a tree

-- treeDepth EmptyNode = 0
-- treeDepth (Node v leftTree rightTree) = 1 + max (treeDepth leftTree) (treeDepth rightTree) 

-- treeFind EmptyNode _ = False
-- treeFind (Node v leftTree rightTree) query
--     | v == True
--     | otherwise = (treeFind leftTree query) || (treeFind rightTree query)