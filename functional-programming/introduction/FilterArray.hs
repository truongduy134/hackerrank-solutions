-- Author: Nguyen Truong Duy

-- Constraint: Must implement my own implementation of filter

filterSmallerNumbers :: Int -> [Int] -> [Int]
filterSmallerNumbers limit (x:xs)
  | x < limit = x : filterSmallerNumbers limit xs
  | otherwise = filterSmallerNumbers limit xs 
filterSmallerNumbers limit [] = []

-- listToOutputStr :: (Show a) => [a] -> String
listToOutputStr = unlines . map show

main = do
  upperLimit <- readLn :: IO Int
  arrContents <- getContents
  let numbers = map read (words arrContents) :: [Int]
  putStr (listToOutputStr (filterSmallerNumbers upperLimit numbers))

