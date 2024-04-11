import Data.Char

sumOfDigits :: Int -> Int
sumOfDigits num = sum $ map digitToInt $ show num

main :: IO ()
main = do
  let nums = [92, 91, 44, 17]
  putStr "Числа: "
  mapM_ (\num -> if sumOfDigits num < 10 then putStr (show num ++ " ") else return ()) nums