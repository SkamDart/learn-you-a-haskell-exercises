import Control.Applicative
import Data.Monoid


data List a = Empty | Value a (List a) deriving (Show)

-- Make a list Functor
--instance Functor (List a) where
    --fmap f (Empty) = Empty
    --fmap f (Value a) = Value (f a)
    --fmap f (Value a (List a)) = Value (f a) (fmap f (List a))

-- Write a function that appends one list to another
combineLists :: List a -> List a -> List a
combineLists a b = undefined

-- Make our list a Monoid

-- Make our list an Applicative

-- Verify List obeys Applicative and Monoid Laws

