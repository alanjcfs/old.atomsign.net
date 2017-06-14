module Home exposing (..)

import Html exposing(Html)
import Html.Attributes exposing (class)
import Markdown exposing (toHtml)

home : Html msg
home = toHtml [ class "content" ] """

# Home

Welcome to my home page.

There's nothing here yet.

I'm playing with [Elm](http://elm-lang.org), [Rust](https://www.rust-lang.org/en-US/),
and [Elixir](https://elixir-lang.org), but not all at the same time.

"""
