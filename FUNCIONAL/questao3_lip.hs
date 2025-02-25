-- 3. Faça um programa que recebe uma lista numérica L e um dado número p e apaga todas as
-- ocorrências de p em L.
apaga :: [Int] -> Int -> [Int]
apaga [] p = []
apaga (x:s) p = if x == p then apaga s p else x : apaga s p

main :: IO ()
main = do
    input <- getLine
    let (nums, p) = (init parsed, last parsed)
        parsed = map read (words input) :: [Int]
    putStrLn (unwords (map show (apaga nums p)))