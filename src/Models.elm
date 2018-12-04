module Models exposing (Drill, HeaderLink, Model, Page, Route(..))

import Browser.Navigation as Nav
import Html
import Msgs exposing (Msg)
import Url


type alias Model =
    { key : Nav.Key
    , url : Url.Url
    , route : Route
    }


type Route
    = HomeRoute
    | WarmupRoute
    | DrillListRoute
    | DrillRoute String
    | GameRoute
    | NotFoundRoute


type alias Page msg =
    Model -> List (Html.Html msg)


type alias HeaderLink =
    { name : String, href : String }


type alias Drill =
    { source : String, name : String, time : String, next : HeaderLink, details : List String }
