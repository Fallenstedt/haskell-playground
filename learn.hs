module FunctionWithWhere where
import Distribution.Simple.Utils (xargs)

printInc :: (Show a, Num a) => a -> IO ()
printInc n = print plusTwo
    where plusTwo = n + 2

printInc2 :: (Show a, Num a) => a -> IO ()
printInc2 n = let plusTwo = n + 2
    in print plusTwo

-- let x = 3; y = 1000 in x * 3 + y
thing1 = x * 3 + y
    where x = 3
          y = 1000

-- let y = 10; x = 10 * 5 + y in x * 5
thing2 = x * 5
    where y = 10
          x  = 10 * 5  + 5

foo = let x = 7; y = negate x; z = y * 10 in z / x + y
thing3 = z / x + y
    where x = 7
          y = negate x
          z = y * 10

-- z = 7
-- x = y ^ 2
-- waxOn = x * 5
-- y = z + 8
waxOn = x * 5
    where z = 7
          y = z + 8
          x = y ^ 2