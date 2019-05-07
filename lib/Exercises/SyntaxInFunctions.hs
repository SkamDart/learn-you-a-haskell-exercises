module Exercises.SyntaxInFunctions
(
  englishDigit,
  divTuple,
  threeZeroList,
) where

englishDigit :: Int -> String
englishDigit 0 = "0"
englishDigit 1 = "1"
englishDigit 2 = "2"
englishDigit 3 = "3"
englishDigit 4 = "4"
englishDigit 5 = "5"
englishDigit 6 = "6"
englishDigit 7 = "7"
englishDigit 8 = "8"
englishDigit 9 = "9"
englishDigit _ = "unknown"

divTuple :: (Eq a, Fractional a) => (a, a) -> a
divTuple (x, y)
  | y == 0 = undefined
  | otherwise = x / y

threeZeroList :: [Int] -> Bool
threeZeroList = undefined
