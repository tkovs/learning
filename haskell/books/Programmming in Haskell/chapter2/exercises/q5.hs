-- Show how the library function init that removes the last element from a
-- non-empty list could similarly be defined in two different ways.

init' :: [a] -> [a]
init' a = take n a
          where
            n = (length a) - 1

{-
init' :: [a] -> [a]
init' a = reverse (tail (reverse a))
-}
