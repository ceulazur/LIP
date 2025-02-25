-- 1. Faça um programa que recebe uma lista de números inteiros e imprime o produto dos números.
produto :: [Int] -> Int
produto [] = 1
produto (x:s) = x * produto s

main :: IO ()
main = do
    input <- getLine
    let nums = map read (words input) :: [Int]
    print (produto nums)
