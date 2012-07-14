
-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
-- The sum of these multiples is 23.

-- Find the sum of all the multiples of 3 or 5 below 1000.

multipleOf :: (Integer, Integer) -> Bool
multipleOf (n, y) = n `mod` y == 0
multipleOf3or5 (n) = multipleOf(n, 3) || multipleOf(n, 5)

main = do
  putStrLn(show(sum([i | i <- [1..999], multipleOf3or5(i)])))