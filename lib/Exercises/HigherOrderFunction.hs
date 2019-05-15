module Exercises.HigherOrderFunctions
(
  sumInts,
  sq,
  sumSquares,
) where


sumInts :: Int -> Int -> Int
sumInts a b = foldl (\acc x -> acc + x) 0 [a..b]


sq :: Int -> Int
sq x = x * x


sumSquares :: Int -> Int -> Int
sumSquares a b = foldl (\acc x -> acc + (sq x)) 0 [a..b]
