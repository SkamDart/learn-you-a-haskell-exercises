module Exercises.MakingOurOwnTypesAndTypeClasses
(

) where

data Suit = Heart
          | Spades
          | Diamond
          | Clubs
    deriving (Show)

data Digit = Two
           | Three
           | Four
           | Five
           | Six
           | Seven
           | Eight
           | Nine
           | Ten
           | Jack
           | Queen
           | King
           | Ace
    deriving (Enum, Eq, Ord, Show)

data Card = Card { digit :: Digit
                 , suit :: Suit
                 }

instance Show Card where
    show (Card d s) = show "The " ++ show d ++ show " of " ++ show s
