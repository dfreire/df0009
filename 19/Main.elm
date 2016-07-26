module Main exposing (..)

import Html exposing (text)
import List


rotate : List a -> Int -> List a
rotate list rot =
    let
        n =
            rot % List.length list
    in
        (List.drop n list) ++ (List.take n list)


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
        [ ( rotate [ 1, 2, 5, 5, 2, 1 ] 3, [ 5, 2, 1, 1, 2, 5 ] )
        , ( rotate [1..10] 13, [ 4, 5, 6, 7, 8, 9, 10, 1, 2, 3 ] )
        , ( rotate [1..5] 1, [ 2, 3, 4, 5, 1 ] )
        , ( rotate [1..5] 0, [ 1, 2, 3, 4, 5 ] )
        , ( rotate [1..5] -1, [ 5, 1, 2, 3, 4 ] )
        , ( rotate [1..5] -6, [ 5, 1, 2, 3, 4 ] )
        , ( rotate [1..5] 3, [ 4, 5, 1, 2, 3 ] )
        ]
        && List.all (\( result, expect ) -> result == expect)
            [ ( rotate [ "1", "2", "3", "4" ] 1, [ "2", "3", "4", "1" ] ) ]
