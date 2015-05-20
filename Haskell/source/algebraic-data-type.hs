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

type Line = [Char]
type Image = [Line]

-- Exemplo de imagem
image :: Image
image = [".......##...",
         ".....##..#..",
         "...##.....#.",
         "..#.......#.",
         "..#...#...#.",
         "..#...#.#.#.",
         "..#...#..##.",
         "..#...#.....",
         "...#...#....",
         "....#...#...",
         ".....#..#...",
         "......###..."]

-- Espelha imagem horizontalmente
reverseH :: Image -> Image
reverseH image = reverse image

-- Espelha imagem verticalmente
reverseV :: Image -> Image
reverseV image = map reverse image
