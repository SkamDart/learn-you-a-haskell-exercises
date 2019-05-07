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
reverseColorOrder = reverse [minBound :: Color .. ]


paintMix :: Color -> Color -> Color
paintMix = undefined
-- paintMix c1 c2
  -- | c1 < c2 = c2 / c1
  -- | otherwise = c1 / c2

