module Main exposing (..)

import Html exposing (Html, div, text, program, span, ul, li, article)
import Html.Attributes exposing (class, id)
import Html.Events exposing (onClick)
import Model exposing (Model)
import Msg exposing (..)
import Home exposing (home)
import School exposing (school)
import Work exposing (work)
import Resume exposing (resume)


init : ( Model, Cmd Msg )
init =
    ( home, Cmd.none )



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
            ( home, Cmd.none )

        School ->
            ( school, Cmd.none )

        Work ->
            ( work, Cmd.none )

        Resume ->
            ( resume, Cmd.none )



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
