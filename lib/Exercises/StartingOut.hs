module Exercises.StartingOut
(
  penultimate,
  findK,
  isPalindrome,
  duplicate,
  ziplike,
  splitAtIndex,
  dropK,
  slice,
  insertElem,
  rotate,
) where


-- Find the penultimate element in list l
penultimate l = last (init l)

-- Find the element at index k in list l
-- TODO test
findK k l
  | l == [] = 0
  | k == 0 = head l
  | k > 0 = findK (k - 1) (tail l)
  | otherwise = 0

-- Determine if list l is a palindrome
-- TODO odd length case
-- TODO test
isPalindrome [] = True
isPalindrome xs
  | xs == [] = True
  | otherwise = (head xs) == (last xs) && isPalindrome (tail (init xs))


{-
 - Duplicate the elements in list xs, for example "duplicate [1,2,3]" would give the list [1,1,2,2,3,3]
 - For example: concat [[1,2,3],[3,4,5]] returns [1,2,3,3,4,5]
 -}
-- TODO test
duplicate :: [a] -> [a]
duplicate [] = []
duplicate (x:xs) = x:x: duplicate xs

{-
 - Imitate the functinality of zip
 -}
ziplike :: [a] -> [b] -> [(a, b)]
ziplike []     []     = []
ziplike xs     []     = []
ziplike []     (ys)   = []
ziplike (x:xs) (y:ys) = (x, y) : (ziplike xs ys)

-- Split a list l at element k into a tuple: The first part up to and including k, the second part after k
-- For example "splitAtIndex 3 [1,1,1,2,2,2]" returns ([1,1,1],[2,2,2])
-- TODO test
splitAtIndex :: Int -> [a] -> ([a], [a])
splitAtIndex k l = undefined

-- Drop the element at index k in list l
-- For example "dropK 3 [0,0,0,1,0,0,0]" returns [0,0,0,0,0,0]
-- TODO test
dropK :: Int -> [a] -> [a]
dropK k l = undefined

-- Extract elements between ith and kth element in list l. Including i, but not k
-- For example, "slice 3 6 [0,0,0,1,2,3,0,0,0]" returns [1,2,3]
-- TODO test
slice i k l = undefined

-- Insert element x in list l at index k
-- For example, "insertElem 2 5 [0,0,0,0,0,0]" returns [0,0,0,0,0,2,0]
-- TODO test
insertElem :: a -> [a] -> Int
insertElem = undefined

-- Rotate list l n places left.
-- For example, "rotate 2 [1,2,3,4,5]" gives [3,4,5,1,2]
-- TODO test
rotate :: Int -> [a] ->[a]
rotate n l = undefined
