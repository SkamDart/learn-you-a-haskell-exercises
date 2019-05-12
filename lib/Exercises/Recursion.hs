module Exercises.Recursion
(
  fib,
  piCalc,
  power,
  stopReverseSign,
) where


-- Raises x to the power y
power :: Int -> Int -> Int
power x y = power' x y 1

-- Calculate power using accumulator.
-- Can assume that we are not going to calculate negative
-- powers based on type signature.
power' :: Int -> Int -> Int -> Int
power' x y acc
--  | y < 0 = power' x (y + 1) (acc * (1 / x))
  | y > 0 = power' x (y - 1) (acc * x)
  | otherwise = acc

fib :: (Num a, Eq a) => a -> [a]
fib x
  | x == 0 = [0]
  | x == 1 = [1, 0]
  | otherwise = rest ++ [1, 0]
  where rest = []

stopReverseSign :: (Fractional a, Ord a) => a -> a-> a
stopReverseSign = undefined

piCalc :: (Fractional a, Integral b, Ord a) => a -> (a, b)
piCalc a = undefined


piCalc' :: (Ord a, Fractional a, Integral b) => a -> a -> a -> b -> (a, b)
piCalc' w x y z = undefined
