module Update exposing (update)

import Browser
import Browser.Navigation as Nav
import Models exposing (Model)
import Msgs exposing (Msg(..))
import Routing exposing (router)
import Url


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        LinkClicked urlRequest ->
            case urlRequest of
                Browser.Internal url ->
                    ( model, Nav.pushUrl model.key (Url.toString url) )

                Browser.External href ->
                    ( model, Nav.load href )

        UrlChanged url ->
            ( { model | url = url, route = router url }
            , Cmd.none
            )

        NoOp ->
            ( model, Cmd.none )
