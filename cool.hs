module GreetIfCool1 where

greetIfCool :: Bool -> IO ()
greetIfCool coolness =
    if cool
        then putStrLn "Cool"
    else
        putStrLn "sucka"
    where
        cool = coolness