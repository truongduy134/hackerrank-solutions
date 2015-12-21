-- Author: Nguyen Truong Duys

filterPositions :: [Int] -> [Int]
filterPositions lst =
  let lstWithInd = (zip lst [0..]) :: [(Int, Int)]
      subListWithInd = filter (odd . snd) lstWithInd
  in map fst subListWithInd

inputToInts :: String -> [Int]
inputToInts = map read . words

printInts :: [Int] -> IO ()
printInts = mapM_ (putStrLn . show)

main = do
  intput <- getContents
  printInts (filterPositions (inputToInts intput))
  
