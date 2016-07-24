module Main exposing (..)

import Html exposing (text)
import List


sublist : List a -> Int -> Int -> List a
sublist list start end =
    let
        i =
            if start >= 1 then
                start
            else
                1

        j =
            end
    in
        List.take (j + 1 - i) (List.drop (i - 1) list)


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
        [ ( sublist [ 1, 2, 5, 5, 2, 1 ] 2 3, [ 2, 5 ] )
        , ( sublist [1..20] 3 13, [ 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13 ] )
        , ( sublist [1..5] 6 1, [] )
        , ( sublist [1..5] 0 5, [ 1, 2, 3, 4, 5 ] )
        , ( sublist [1..5] -1 4, [ 1, 2, 3, 4 ] )
        , ( sublist [1..5] 1 3, [ 1, 2, 3 ] )
        ]
        && List.all (\( result, expect ) -> result == expect)
            [ ( sublist [ "1", "2", "3", "4", "5", "6" ] 2 5, [ "2", "3", "4", "5" ] ) ]
