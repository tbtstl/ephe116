module Main exposing (..)

import Browser
import Browser.Navigation as Nav
import Url
import Html exposing (Html, text, div, h1, img)
import Html.Attributes exposing (src)

import Msgs exposing (Msg(..))
import Models exposing (Model)
import Update exposing (update)
import View exposing (view)

init : () -> Url.Url -> Nav.Key -> ( Model, Cmd Msg )
init flags url key = 
    ( {url = url, key = key}, Cmd.none )

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
