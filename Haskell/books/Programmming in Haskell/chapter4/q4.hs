{-
	Redefine the following version of the conjunction operator using conditional
	expressions rather than pattern matching:

	True ∧ b = b
	_ ∧ _ = False
-}

(∧) :: Bool -> Bool -> Bool
(∧) a b = if (a == True) then b else False