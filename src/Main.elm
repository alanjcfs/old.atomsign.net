module Main exposing (..)

import Html exposing (Html, div, text, program, span, ul, li, article)
import Html.Attributes exposing (class, id)
import Html.Events exposing (onClick)
import Markdown exposing (toHtml)
import Home exposing (home)
import School exposing (school)
import Work exposing (work)
import Resume exposing (resume)


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
    | Resume



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ div [ class "nav", id "header" ]
            [ ul []
                [ li [ onClick Home ] [ text "Home" ]
                , li [ onClick School ] [ text "School" ]
                , li [ onClick Work ] [ text "Work" ]
                , li [ onClick Resume ] [ text "Resume" ]
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

        Resume ->
            ( Model resume, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- MAIN


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
