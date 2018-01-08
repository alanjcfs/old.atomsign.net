module Atomsign exposing (..)

import Css exposing (..)
import Css.Elements exposing (body, li)
import Css.Namespace exposing (namespace)

type CssClasses
  = NavBar

type CssIds
  = Page

css =
  (stylesheet << namespace "dreamwriter")
  [ body
    [ overflowX auto
    , minWidth (px 1280)
    ]
  ]
