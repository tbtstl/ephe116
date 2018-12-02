module NotFound exposing (page)

import Header
import Html exposing (Html, div, text)
import Html.Attributes exposing (class)
import Models exposing (Model)
import Msgs exposing (Msg)


page : Model -> List (Html msg)
page model =
    [ div [ class "w-100" ] [ Header.header { name = "Warmups", href = "/warmups" }, text "Not Found" ] ]
