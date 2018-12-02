module Home exposing (page)

import Html exposing (a, div, h1, li, ol, text)
import Html.Attributes exposing (classList, href)
import Models exposing (Page)


page : Page msg
page model =
    [ div [] [ h1 [] [ text "EPHE 116 Badminton Assignment" ] ]
    , div [] [ text "This is a badminton lesson plan designed for intermediate badminton players of any age who wish to practice clearing. The total time frame for this lesson is 120 minutes." ]
    , div [ classList [ ( "mt3", True ) ] ]
        [ text "For your convenience, this assignment is broken down into the following parts:"
        , ol []
            [ li [] [ a [ href "/warmups" ] [ text "Warmup" ] ]
            , li [] [ a [ href "/drills/cover-on" ] [ text "Cover On Drill" ] ]
            , li [] [ a [ href "/drills/run-clear" ] [ text "Run Clear Drill" ] ]
            , li [] [ a [ href "/drills/wall-return" ] [ text "Wall Return Drill" ] ]
            , li [] [ a [ href "/game" ] [ text "Wrap-up Game" ] ]
            ]
        ]
    ]
