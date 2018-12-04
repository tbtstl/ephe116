module Game exposing (page)

import Header
import Html exposing (Html, div, h3, h4, li, p, text, ul)
import Html.Attributes exposing (class)
import Models exposing (Page)


page : Page msg
page model =
    [ Header.header { name = "Go Home", href = "/" }
    , div [ class "w-100" ] [ h3 [] [ text "Wrap-up Game" ], p [] [ text "Estimated Time: 40 minutes" ] ]
    , div []
        [ p [ class "mt-1" ] [ text "After completing the previous skill building drills, Players can gather into groups of 2 with their own court to play a game. The game is meant to solidify the clearing skills worked on throughout the lesson." ]
        , h4 [ class "mt-1" ] [ text "Instructions:" ]
        , ul [] [ li [] [ text "The game is played on a singles court between two players. Player A will begin by serving a long serve to player B." ], li [] [ text "Player B will then return the serve with a clear to the back line." ], li [] [ text "The two players will continue to clear the shuttle back and forth to eachother until one player misses or the shuttle goes out of play." ], li [] [ text "For the purposes of this game, only the space between the two back lines will be considered 'in'." ], li [] [ text "If any player successfully hits a shuttle into the back area, they receive a point." ], li [] [ text "The game goes to 11 points, winning by at least 2." ] ]
        ]
    ]
