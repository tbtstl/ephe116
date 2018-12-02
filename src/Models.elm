module Models exposing (Model, Route(..))

import Browser.Navigation as Nav
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
