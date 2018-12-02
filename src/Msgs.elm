module Msgs exposing (..)

import Browser
import Url

type Msg
  = LinkClicked Browser.UrlRequest
  | UrlChanged Url.Url
  | NoOp

