module TopOrLocal where


topLevelFunction :: Integer -> Integer
topLevelFunction x = x + woot + topLevelValue
    where 
        woot :: Integer
        topLevelValue :: Integer
        topLevelValue = 10
        woot = 10


