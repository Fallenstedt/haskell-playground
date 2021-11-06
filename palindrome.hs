module Palindrome where

isPalindrome :: (Eq a) => [a] -> Bool 
isPalindrome x =
    let 
        rvrs = reverse x
    in x == rvrs