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
  | y < 0 = error "Unable to take integer power to negative number"
  | y > 0 = power' x (y - 1) (acc * x)
  | otherwise = acc

fib :: (Num a, Enum a, Eq a) => a -> [a]
fib a = [fib' i | i <- [0..a] ]

fib' :: (Num a, Enum a, Eq a) => a -> a
fib' a
    | a == 0 = 0
    | a == 1 = 1
    | otherwise = fib' (a - 1) + fib' (a - 2)


stopReverseSign :: (Fractional a, Ord a) => a -> a -> a
stopReverseSign a step
    | a < 0 = (((-1) * a) + step)
    | a > 0 = (-1) * (a + step)
    | otherwise = 0

piCalc :: (Fractional a, Integral b, Ord a) => a -> (a, b)
piCalc a = undefined

piCalc' :: (Ord a, Fractional a, Integral b) => a -> a -> a -> b -> (a, b)
piCalc' w x y z = undefined
