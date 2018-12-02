module Header exposing (header)

import Html exposing (a, div, text)
import Html.Attributes exposing (class, href)
import Models exposing (HeaderLink)


header : HeaderLink -> Html.Html msg
header next =
    div [ class "w-100 flex justify-between" ]
        [ div [] [ a [ href "/" ] [ text "Go Home" ] ]
        , div [] [ a [ href next.href ] [ text (String.concat [ "Next: ", next.name ]) ] ]
        ]
