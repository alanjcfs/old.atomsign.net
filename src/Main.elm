module Main exposing (..)

import Html exposing (Html, div, text, program, span, ul, li, article)
import Html.Attributes exposing (class, id)
import Html.Events exposing (onClick)

import Markdown exposing (toHtml)

home : Html msg
home = toHtml [ class "content" ]"""
# Home

Welcome to my home page.

There's nothing here yet.

I'm playing with [Elm](http://elm-lang.org), [Rust](https://www.rust-lang.org/en-US/),
and [Elixir](https://elixir-lang.org), but not all at the same time.
"""
school : Html msg
school = toHtml [ class "content" ] """

# School

I received a BA in Molecular and Cell Biology from UC Berkeley and an MS in
                   Chemistry from CSU East Bay.  After a time as a lab
                   assistant, I decided to change career to programming.
                   Although I had taken some programming classes



"""

work : Html msg
work = toHtml [ class "content" ] """
# Work

I currently work at Citadel. The tools of the trade are Ruby on Rails for API,
React for client-side development, Python for data science analysis. We use
Postgres for data storage, in addition to MongoDB, Redis, and ElasticSearch.

"""

-- MODEL

type alias Model =
    { page : Html Msg
    }


init : ( Model, Cmd Msg )
init =
    ( Model home, Cmd.none )

-- MESSAGES

type Msg
    = Home
    | School
    | Work



-- VIEW
view : Model -> Html Msg
view model =
    div []
        [ div [ class "nav", id "header" ]
            [ ul []
                [ li [ onClick Home ] [ text "Home" ]
                , li [ onClick School ] [ text "School" ]
                , li [ onClick Work ] [ text "Work" ]
                ]
            ]
        , article [] [ model.page ]
        ]


-- UPDATE

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Home ->
            ( Model home, Cmd.none )
        School ->
            ( Model school, Cmd.none )
        Work ->
            ( Model work, Cmd.none )




-- SUBSCRIPTIONS

subscriptions : Model -> Sub Msg
subscriptions model = Sub.none


-- MAIN

main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
