module Main where

coins :: [Int]
coins = [200,100,50,20,10,5,2,1]

main :: IO ()
main = print . length $ ways 200 coins

ways :: Int -> [Int] -> [[Int]]
ways 0 _ = [[]]
ways _ [] = []
ways goal cs@(c:rest)
    | c <= goal = [c:waysRemaining | waysRemaining <- ways newGoal cs] ++ ways goal rest
    | otherwise = ways goal rest
    where newGoal = goal-c





