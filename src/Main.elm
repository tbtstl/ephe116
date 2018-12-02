module Main exposing (init, main)

import Browser
import Browser.Navigation as Nav
import Html exposing (Html, div, h1, img, text)
import Html.Attributes exposing (src)
import Models exposing (Model)
import Msgs exposing (Msg(..))
import Routing exposing (router)
import Update exposing (update)
import Url
import View exposing (view)


init : () -> Url.Url -> Nav.Key -> ( Model, Cmd Msg )
init flags url key =
    ( { url = url, key = key, route = router url }, Cmd.none )


main : Program () Model Msg
main =
    Browser.application
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        , onUrlChange = UrlChanged
        , onUrlRequest = LinkClicked
        }
