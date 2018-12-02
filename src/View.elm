module View exposing (page, view)

import Browser exposing (Document)
import Html exposing (Html, div, text)
import Models exposing (Model, Route(..))
import Msgs exposing (Msg)
import NotFound


view : Model -> Document msg
view model =
    { title = "EPHE 116 Lesson Plan"
    , body = [ div [] (page model) ]
    }


page : Model -> List (Html msg)
page model =
    case model.route of
        NotFoundRoute ->
            NotFound.page model

        _ ->
            [ div [] [ text "Hello" ] ]
