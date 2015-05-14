type Name = String
type Language = String
type University = String

data People = Programmer Name Language | Student Name University
            deriving(Show)

programmer = Programmer "Vitor" "Haskell"
student = Student "Vitor" "IFAL"

is_programmer :: People -> Bool
is_programmer (Programmer _ _) = True
is_programmer _ = False

is_student :: People -> Bool
is_student (Student _ _) = True
is_student _ = False