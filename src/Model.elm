module Model exposing (Model)
import Msg exposing (Msg)
import Html exposing (Html)

type alias Model =
    { page : Html Msg
    }
