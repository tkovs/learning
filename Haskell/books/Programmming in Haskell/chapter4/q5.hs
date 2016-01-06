{-
	Do the same for the following version, and note the difference in the number
	of conditional expressions required:

	True ∧ b = b
	False ∧ _ = False
-}

(∧) :: Bool -> Bool -> Bool
(∧) b b' = if b then b' else False