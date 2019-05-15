module Exercises.Recursion
(
  areaConv,
  sqIntoSqCm,
  sqChainsToSqm,
) where

import DistanceConversion

areaConv :: (Float -> Float) -> Float -> Float
areaConv linearConversion area = linearConversion area

sqIntoSqCm :: Float -> Float
sqIntoSqCm = undefined

sqChainsToSqm :: Float -> Float
sqChainsToSqm = undefined
