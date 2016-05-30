-- Give another possible calculation for the result of double (double 2)

double :: Num a => a -> a
double x = x * 2
--double x = x + x

main :: IO ()
main = do
    print $ (double 2) * 2
