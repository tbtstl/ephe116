module View exposing (page, view)

import Browser exposing (Document)
import Header
import Home
import Html exposing (Html, div, text)
import Html.Attributes exposing (class)
import Models exposing (Model, Page, Route(..))
import Msgs exposing (Msg)
import NotFound
import Warmups


view : Model -> Document msg
view model =
    { title = "EPHE 116 Lesson Plan"
    , body = container (page model)
    }


container : List (Html msg) -> List (Html msg)
container current_page =
    [ div [ class "container" ]
        [ div [ class "page-container" ] current_page
        , div [ class "example-container" ] [ text "hi" ]
        ]
    ]


page : Page msg
page model =
    case model.route of
        NotFoundRoute ->
            NotFound.page model

        HomeRoute ->
            Home.page model

        WarmupRoute ->
            Warmups.page model

        _ ->
            [ Header.header { name = "idk", href = "/idk" } ]
