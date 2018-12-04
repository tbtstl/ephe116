module Warmups exposing (page)

import Header
import Html exposing (div, h3, li, ol, p, text)
import Html.Attributes exposing (class)
import Models exposing (Page)


page : Page msg
page _ =
    [ Header.header { name = "Drill: Cover On", href = "/drills/cover-on" }
    , div [ class "w-100" ] [ h3 [] [ text "Warmups" ], p [] [ text "Estimated Time: 15 minutes" ] ]
    , div [ class "instructions" ]
        [ p [] [ text "In order to avoid injury, it is important to warm up. By following this warmup plan, players should find themselves prepared to undergo the drills for the lesson." ]
        , ol []
            [ li [] [ text "Moderately paced jog (5 minutes)" ]
            , li [] [ text "Lunges (2 minutes)" ]
            , li [] [ text "Karaoke running drill (2 minutes)" ]
            , li [] [ text "Stretching (6 minutes)" ]
            ]
        ]
    ]
