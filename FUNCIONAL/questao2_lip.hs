-- 2. Faça um programa que, dado uma lista numérica, imprima uma 2-tupla, tal que contenha o
-- maior valor da lista, bem como sua posição relativa.
maior :: [Int] -> (Int, Int)
maior l = maiorFun l 0

maiorFun :: [Int] -> Int -> (Int, Int)
maiorFun [x] i = (x, i)
maiorFun (x:y:s) i = if x > y then maiorFun (x:s) i else maiorFun (y:s) (i+1)

main :: IO ()
main = do
    input <- getLine
    let nums = map read (words input) :: [Int]
    let (m, idx) = maior nums
    putStrLn (show m ++ " " ++ show idx)