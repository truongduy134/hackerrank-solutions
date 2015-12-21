-- Author: Nguyen Truong Duy

main = do
  val1 <- readLn :: IO Int
  val2 <- readLn :: IO Int
  let sum = val1 + val2
  print sum
  
