module View exposing (..)

import Browser exposing (Document)
import Html exposing (div, text)
import Msgs exposing (Msg)
import Models exposing (Model)

view : Model -> Document msg 
view model = 
  { title = "EPHE 116 Lesson Plan"
  , body = [div [] [text "Hello"]]
  }

