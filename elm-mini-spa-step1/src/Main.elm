module Main exposing (main)

import Browser
import Browser.Navigation
import Html
import Page1
import Url


type alias Model =
    { page1Model : Page1.Model
    }


type Msg
    = Page1Msg Page1.Msg
    | UrlChangedMsg Url.Url
    | UrlRequestedMsg Browser.UrlRequest


main : Program () Model Msg
main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        , onUrlChange = onUrlChange
        , onUrlRequest = onUrlRequest
        }


init : () -> Url.Url -> Browser.Navigation.Key -> ( Model, Cmd Msg )
init flags _ _ =
    let
        ( page1Model, page1Cmd ) =
            Page1.init flags
    in
    ( { page1Model = page1Model
      }
    , Cmd.map Page1Msg page1Cmd
    )


view : Model -> Browser.Document Msg
view model =
    { title = "Elm mini SPA (step 1)"
    , body = [ viewBody model ]
    }


viewBody : Model -> Html.Html Msg
viewBody model =
    let
        page1View =
            Page1.viewBody model.page1Model
    in
    Html.map Page1Msg page1View


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Page1Msg page1Msg ->
            let
                ( newPage1Model, newPage1Cmd ) =
                    Page1.update page1Msg model.page1Model
            in
            ( { model | page1Model = newPage1Model }, Cmd.map Page1Msg newPage1Cmd )

        UrlChangedMsg _ ->
            ( model, Cmd.none )

        UrlRequestedMsg _ ->
            ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.map Page1Msg (Page1.subscriptions model.page1Model)


onUrlChange : Url.Url -> Msg
onUrlChange url =
    UrlChangedMsg url


onUrlRequest : Browser.UrlRequest -> Msg
onUrlRequest urlRequested =
    UrlRequestedMsg urlRequested
