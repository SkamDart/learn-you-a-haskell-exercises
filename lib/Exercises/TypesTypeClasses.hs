module Exercises.TypesTypeClasses
(
  firstColor,
  paintMix,
  reverseColorOrder,
) where

data Color = Red
           | Orange
           | Yellow
           | Green
           | Blue
           | Indigo
           | Violet
  deriving (Bounded, Enum, Eq, Ord, Show)

firstColor :: Color
firstColor = minBound :: Color

reverseColorOrder :: [Color]
reverseColorOrder = reverse [minBound :: Color .. maxBound :: Color]


paintMix :: Color -> Color -> Color
paintMix c1 c2 = [c1 .. c2] !! quot (length [c1 .. c2]) 2

