-- 4. Faça um programa que recebe uma lista de inteiros e imprime o maior e o menor elemento.
maiorMenor :: [Int] -> (Int, Int)
maiorMenor l = (maiorM l, mMenor l)

maiorM :: [Int] -> Int
maiorM [x] = x
maiorM (x:y:s) = if x > y then maiorM (x:s) else maiorM (y:s)

mMenor :: [Int] -> Int
mMenor [x] = x
mMenor (x:y:s) = if x < y then mMenor (x:s) else mMenor (y:s)

main :: IO ()
main = do
    input <- getLine
    let nums = map read (words input) :: [Int]
    let (maior, menor) = maiorMenor nums
    putStrLn (show maior ++ " " ++ show menor)