-- Author: Nguyen Truong Duy

printHelloWorld :: Int -> IO ()
printHelloWorld n =
  if n == 0
  then return ()
  else do putStrLn "Hello World"
          printHelloWorld (n - 1)
  
main = do
  n <- readLn :: IO Int
  printHelloWorld n

