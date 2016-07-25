module Main exposing (..)

import Html exposing (text)
import List


dropAt : List a -> Int -> List a
dropAt list n =
    (List.take (n - 1) list) ++ (List.drop n list)


main =
    text
        (if (test) then
            "Your implementation passed all tests."
         else
            "Your implementation failed at least one test."
        )


test : Bool
test =
    List.all (\( result, expect ) -> result == expect)
        [ ( dropAt [ 1, 2, 5, 5, 2, 1 ] 2, [ 1, 5, 5, 2, 1 ] )
        , ( dropAt [1..14] 3, [ 1, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14 ] )
        , ( dropAt [1..5] 6, [ 1, 2, 3, 4, 5 ] )
        , ( dropAt [1..5] 0, [ 1, 2, 3, 4, 5 ] )
        , ( dropAt [1..5] -1, [ 1, 2, 3, 4, 5 ] )
        , ( dropAt [1..5] 1, [ 2, 3, 4, 5 ] )
        ]
        && List.all (\( result, expect ) -> result == expect)
            [ ( dropAt [ "1", "2", "3", "4", "5" ] 2, [ "1", "3", "4", "5" ] ) ]
