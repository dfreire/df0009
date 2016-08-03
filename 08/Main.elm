module Main exposing (..)

import Html exposing (text)
import List


noDupes : List a -> List a
noDupes xs =
    List.foldl
        (\n list ->
            case List.head (List.reverse list) of
                Nothing ->
                    [ n ]

                Just h ->
                    if h == n then
                        list
                    else
                        list ++ [ n ]
        )
        []
        xs


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
        [ noDupes [ 1, 1, 1, 1, 2, 5, 5, 2, 1 ] == [ 1, 2, 5, 2, 1 ]
          -- , noDupes [ 2, 1, 1, 1 ] == [ 2, 1 ]
          -- , noDupes [ 2, 2, 2, 1, 1, 1 ] == [ 2, 1 ]
          -- , noDupes [ 1 ] == [ 1 ]
          -- , noDupes [] == []
          -- , noDupes [ "aa", "aa", "aa" ] == [ "aa" ]
          -- , noDupes [ "aab", "b", "b", "aa" ] == [ "aab", "b", "aa" ]
        ]
