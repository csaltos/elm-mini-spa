module Page1 exposing (Model, Msg, init, subscriptions, update, viewBody)

import Html
import Html.Attributes
import Html.Events


type alias Model =
    { count : Int
    }


type Msg
    = IncrementMsg
    | DecrementMsg


init : () -> ( Model, Cmd Msg )
init _ =
    ( { count = 0 }, Cmd.none )


viewBody : Model -> Html.Html Msg
viewBody model =
    Html.div [ Html.Attributes.style "background-color" "#EEE", Html.Attributes.style "display" "flex", Html.Attributes.style "justify-content" "space-around", Html.Attributes.style "padding" "24px" ]
        [ Html.button [ Html.Events.onClick DecrementMsg ] [ Html.text "Decrement -" ]
        , Html.text ("Counter page1: " ++ String.fromInt model.count)
        , Html.button [ Html.Events.onClick IncrementMsg ] [ Html.text "Increment +" ]
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        IncrementMsg ->
            ( { model | count = model.count + 1 }, Cmd.none )

        DecrementMsg ->
            ( { model | count = model.count - 1 }, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none
