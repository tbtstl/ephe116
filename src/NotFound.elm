module NotFound exposing (page)

import Html exposing (Html, div, text)
import Models exposing (Model)
import Msgs exposing (Msg)


page : Model -> List (Html msg)
page model =
    [ div [] [ text "Not Found" ] ]
