module Main exposing (..)

import Html
import List
import Maybe


gcd : Int -> Int -> Int
gcd a b =
    let
        a' =
            abs a

        b' =
            abs b

        r =
            a' % b'
    in
        if a' < b' then
            gcd b' a'
        else if r == 0 then
            b'
        else
            gcd b' r


main =
    Html.text
        (if (test) then
            "Your implementation passed all tests."
         else
            "Your implementation failed at least one test."
        )


test : Bool
test =
    List.all (\( result, expect ) -> result == expect)
        [ ( gcd 36 63, 9 )
        , ( gcd 10 25, 5 )
        , ( gcd 120 120, 120 )
        , ( gcd 2 12, 2 )
        , ( gcd 23 37, 1 )
        , ( gcd 45 330, 15 )
        , ( gcd 24528 65934, 6 )
        , ( gcd 120 -120, 120 )
        , ( gcd -2 12, 2 )
        , ( gcd 37 23, 1 )
        ]
