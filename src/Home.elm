module Home exposing (home)

import Html exposing(Html)
import Html.Attributes exposing (class)
import Markdown exposing (toHtml)
import Model exposing (Model)
import Msg exposing (..)

home : Model
home = Model (toHtml [ class "content" ] text)

text = """

# Home

Welcome to my home page.

There's nothing here yet.

I'm playing with [Elm](http://elm-lang.org), [Rust](https://www.rust-lang.org/en-US/),
and [Elixir](https://elixir-lang.org), but not all at the same time.

"""
