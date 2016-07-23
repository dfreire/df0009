module Main exposing (..)

import Html exposing (text)
import List


isPalindrome : List a -> Bool
isPalindrome xs =
    xs == List.reverse xs


main =
    text
        (if (test) then
            "Your implementation passed all tests."
         else
            "Your implementation failed at least one test."
        )


test : Bool
test =
    List.all ((==) True)
        [ isPalindrome [ 1, 3, 5, 8, 5, 3, 1 ] == True
        , isPalindrome [ 2, 1 ] == False
        , isPalindrome [ 1 ] == True
        , isPalindrome [] == True
        , isPalindrome [ "aa", "bb", "aa" ] == True
        , isPalindrome [ "aab", "b", "aa" ] == False
        ]
