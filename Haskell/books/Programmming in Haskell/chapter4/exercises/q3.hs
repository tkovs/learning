{-
	In a similar way to ∧, show how the logical disjunction operator ∨ can be
	defined in four different ways using pattern matching.
-}

(∨) :: Bool -> Bool -> Bool
True ∨ True = True
True ∨ False = True
False ∨ True = True
False ∨ False = False

(∨) :: Bool -> Bool -> Bool
b ∨ b'
	| b == b' = b
	| otherwise = True

(∨) :: Bool -> Bool -> Bool
False ∨ b = b
_ ∨ _ = True

(∨) :: Bool -> Bool -> Bool
False ∨ False = False
_ ∨ _ = True
