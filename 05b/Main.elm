module Main exposing (..)

import Html exposing (text)
import List


myReverse : List a -> List a
myReverse xs =
    List.foldl (\n reversed -> n :: reversed) [] xs


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
        [ myReverse [1..4] == [ 4, 3, 2, 1 ]
        , myReverse [ 2, 1 ] == [ 1, 2 ]
        , myReverse [ 1 ] == [ 1 ]
        , myReverse [] == []
        , myReverse [ 'a', 'b', 'c' ] == [ 'c', 'b', 'a' ]
        ]
