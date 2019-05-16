import Control.Applicative
import Data.Monoid


data List' = Empty' | Cons' (List')
data List a = Empty | Value a (List a) deriving (Show)

-- Make a list Functor
instance Functor List where
    fmap f (Empty) = Empty
    fmap f (Value a x) = Value (f a) (fmap f x)

-- Write a function that appends one list to another
combineLists :: List a -> List a -> List a
combineLists Empty  Empty = Empty
combineLists x      Empty = x
combineLists Empty  x = x
combineLists (Value a x) y = combineLists x y

-- Make our list a Monoid
instance Semigroup (List a) where
    Empty <> Empty = Empty
    Empty <> Value a x = Value a x
    Value a x <> Empty = Value a x
    (Value a x) <> (Value b y) = combineLists x y

instance Monoid (List a) where
    mempty = Empty
    mappend = combineLists

-- Make our list an Applicative

-- Verify List obeys Applicative and Monoid Laws

