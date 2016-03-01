{-
	Redefine the following version of the conjunction operator using conditional
	expressions rather than pattern matching:

	True ∧ b = b
	_ ∧ _ = False
-}

(∧) :: Bool -> Bool -> Bool
(∧) b b' = if b then b' else False