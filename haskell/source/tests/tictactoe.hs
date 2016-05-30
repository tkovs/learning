-- TicTacToe

module Main where

type Board = [Char]

showBoard :: Board -> String
showBoard board = " " ++ board !! 0 : [] ++ " | " ++ board !! 1 : [] ++ " | " ++ board !! 2 : [] ++ " \n" ++
                  "-----------\n" ++
                  " " ++ board !! 3 : [] ++ " | " ++ board !! 4 : [] ++ " | " ++ board !! 5 : [] ++ " \n" ++
                  "-----------\n" ++
                  " " ++ board !! 6 : [] ++ " | " ++ board !! 7 : [] ++ " | " ++ board !! 8 : [] ++ " \n"

isNumber :: Char -> Bool
isNumber c = filter (\x -> x == c) ['0'..'9'] /= []

validMoves :: Board -> String
validMoves [] = []
validMoves board@(x:xs)
  | isNumber x = x : validMoves xs
  | otherwise = validMoves xs

winner :: Board -> Char
winner b
  | (b !! 0) /= ' ' && (b !! 0) == (b !! 1) && (b !! 1) == (b !! 2) = (b !! 0)
  | (b !! 3) /= ' ' && (b !! 3) == (b !! 4) && (b !! 4) == (b !! 5) = (b !! 3)
  | (b !! 6) /= ' ' && (b !! 6) == (b !! 7) && (b !! 7) == (b !! 8) = (b !! 6)
  | (b !! 0) /= ' ' && (b !! 0) == (b !! 3) && (b !! 3) == (b !! 6) = (b !! 0)
  | (b !! 1) /= ' ' && (b !! 1) == (b !! 4) && (b !! 4) == (b !! 7) = (b !! 1)
  | (b !! 2) /= ' ' && (b !! 2) == (b !! 5) && (b !! 5) == (b !! 8) = (b !! 2)
  | (b !! 0) /= ' ' && (b !! 0) == (b !! 4) && (b !! 4) == (b !! 8) = (b !! 0)
  | (b !! 2) /= ' ' && (b !! 2) == (b !! 4) && (b !! 4) == (b !! 6) = (b !! 2)
  | otherwise = ' '

move :: Board -> Char -> Int -> Board
move (p:board) player position
  | position > 0 = [p] ++ move board player (position-1)
  | otherwise = [player] ++ board


switchPlayer :: Char -> Char
switchPlayer 'X' = 'O'
switchPlayer 'O' = 'X'

play :: Board -> Char -> IO ()
play board player = do
  putStrLn "-------------------"
  putStrLn "--- TIC TAC TOE ---"
  putStr $ showBoard board
  if (length (validMoves board) == 0 || (winner board) /= ' ')
    then do
      putStrLn ("Vencedor: " ++ (show (winner board)))
    else do
      putStrLn ("Movimentos válidos: " ++ validMoves board)
      putStrLn ("Vez do jogador " ++ [player])
      putStr "Escolha uma posição: "
      pos <- getLine
      if (filter (\x -> x == pos !! 0) board /= [])
        then
          play (move board player (read pos)) (switchPlayer player)
        else
          play board player
      
main = do
  play "012345678" 'X'