module Main exposing (..)

import Html exposing (Html, div, text, program, span, ul, li, article)
import Html.Attributes exposing (class, id)
import Html.Events exposing (onClick)
import Markdown exposing (toHtml)
import Home exposing (home)
import School exposing (school)
import Work exposing (work)
import Resume exposing (resume)


init : ( Model, Cmd Msg )
init =
    ( Model Home home, Cmd.none )


type Msg
    = SwitchTo Page


type Page
    = Home
    | School
    | Work
    | Resume


type alias Model =
    { page : Page
    , content : String
    }



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ div [ class "nav", id "header" ]
            [ ul []
                [ li [ onClick (SwitchTo Home), class (isActive Home model.page) ] [ text "Home" ]
                , li [ onClick (SwitchTo School), class (isActive School model.page) ] [ text "School" ]
                , li [ onClick (SwitchTo Work), class (isActive Work model.page) ] [ text "Work" ]
                , li [ onClick (SwitchTo Resume), class (isActive Resume model.page) ] [ text "Resume" ]
                ]
            ]
        , article [] [ toHtml [] model.content ]
        ]



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        SwitchTo newPage ->
            ( { model | page = newPage, content = findContent newPage }, Cmd.none )


findContent : Page -> String
findContent page =
    case page of
        Home ->
            home

        School ->
            school

        Work ->
            work

        Resume ->
            resume


isActive : Page -> Page -> String
isActive page selectedPage =
    if page == selectedPage then
        "active"
    else
        ""



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
