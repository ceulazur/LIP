-- 5. O fatorial duplo de um número natural n é o produto de todos os números de 1 (ou 2) até n,
-- contados de 2 em 2. Por exemplo, o fatorial duplo de 8 é 8×6×4×2 = 384, e o fatorial duplo
-- de 7 é 7×5×3×1 = 105. Faça um programa que recebe um número e imprime seu fatorial
-- duplo.
fatD :: Int -> Int
fatD 1 = 1
fatD 2 = 2
fatD n = n * fatD (n-2)

main :: IO ()
main = do
    input <- getLine
    let n = read input :: Int
    putStrLn (show (fatD n))