module Main exposing (..)

import Html exposing (text)
import List


countElements : List a -> Int
countElements xs =
    List.foldl (\n total -> total + 1) 0 xs


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
        [ countElements [1..4000] == 4000
        , countElements [ 1 ] == 1
        , countElements [] == 0
        , countElements [ 'a', 'b', 'c' ] == 3
        ]
