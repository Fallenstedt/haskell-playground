module Print3Broken where


printSecond g= do
    putStrLn g


main = let greeting = "Yarrrr"
    in do
        printSecond greeting
        putStrLn greeting
        
