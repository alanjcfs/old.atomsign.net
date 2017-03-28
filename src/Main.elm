module Main exposing (..)

import Html exposing (Html, div, text, program, span, ul, li)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)

import Markdown exposing (toHtml)

home = toHtml [ class "content" ]"""
# Home

Welcome to my home page.

There's nothing here yet.
"""

school = toHtml [ class "content" ] """
# School

I went to UC Berkeley.
"""

work = toHtml [ class "content" ] """
# Work

I work at Citadel
"""

-- MODEL

type alias Model =
    { page : Html Msg
    }


init : ( Model, Cmd Msg )
init =
    ( Model (toHtml [ class "content" ] """Hello, this was written in Elm."""), Cmd.none )

-- MESSAGES

type Msg
    = Home
    | School
    | Work



-- VIEW
view : Model -> Html Msg
view model =
    div []
        [ div [ class "nav" ]
            [ ul []
                [ li [ onClick Home ] [ text "Home" ]
                , li [ onClick School ] [ text "School" ]
                , li [ onClick Work ] [ text "Work" ]
                ]
            , div [] [ model.page ]
            ]
        ]


-- UPDATE

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Home ->
            ( { page = home }, Cmd.none )
        School ->
            ( { page = school }, Cmd.none )
        Work ->
            ( { page = work }, Cmd.none )




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
