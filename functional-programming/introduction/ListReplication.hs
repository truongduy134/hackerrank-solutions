-- Author: Nguyen Truong Duy

listReplicate :: Int -> [Int] -> [Int]
listReplicate n = concatMap (replicate n)

parseInputToInts :: String -> [Int]
parseInputToInts = map read . words

listToOutput :: [Int] -> String
listToOutput = unlines . map show
 
main = do
  input <- getContents
  let n:arr = parseInputToInts input
      output = listToOutput (listReplicate n arr)
  putStr output

