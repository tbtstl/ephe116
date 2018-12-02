module Routing exposing (routeParser, router)

import Browser.Navigation as Nav
import Models exposing (Route(..))
import NotFound
import Url
import Url.Parser exposing ((</>), Parser, map, oneOf, s, string)


routeParser : Parser (Route -> a) a
routeParser =
    oneOf
        [ map HomeRoute Url.Parser.top
        , map WarmupRoute (s "warmups")
        , map DrillListRoute (s "drills")
        , map DrillRoute (s "drills" </> string)
        , map GameRoute (s "game")
        ]


router : Url.Url -> Route
router url =
    case Url.Parser.parse routeParser url of
        Nothing ->
            NotFoundRoute

        Just route ->
            route
