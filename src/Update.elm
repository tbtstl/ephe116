module Update exposing (..)

import Browser
import Browser.Navigation as Nav
import Url

import Msgs exposing (Msg(..))
import Models exposing (Model)

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    LinkClicked urlRequest ->
      case urlRequest of
        Browser.Internal url ->
          (model, Nav.pushUrl model.key (Url.toString url))
        Browser.External href ->
          (model, Nav.load href)
    UrlChanged url ->
      ( { model | url = url }
      , Cmd.none
      )
    NoOp -> (model, Cmd.none)

