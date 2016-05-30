-- Show how the library function last that selects the last element of a
-- non-empty list could be defined in terms of the library functions introduced
-- in this chapter. Can you think of another posible definition?

last' :: [a] -> a
last' a = head (reverse a)
