module Main exposing (main)

import Action
import Browser
import Browser.Navigation
import Html
import Html.Attributes
import Page1
import Page2
import Url


type Route
    = Page1Route
    | Page2Route


type alias Model =
    { page1Model : Page1.Model
    , page2Model : Page2.Model
    , globalCounter : Int
    , currentRoute : Route
    , navigationKey : Browser.Navigation.Key
    }


type Msg
    = Page1Msg Page1.Msg
    | Page2Msg Page2.Msg
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
init flags _ navigationKey =
    let
        ( page1Model, page1Cmd ) =
            Page1.init flags

        ( page2Model, page2Cmd ) =
            Page2.init flags
    in
    ( { page1Model = page1Model
      , page2Model = page2Model
      , globalCounter = 0
      , currentRoute = Page1Route
      , navigationKey = navigationKey
      }
    , Cmd.batch [ Cmd.map Page1Msg page1Cmd, Cmd.map Page2Msg page2Cmd ]
    )


view : Model -> Browser.Document Msg
view model =
    { title = "Elm mini SPA (step 4)"
    , body = [ viewTopBar model.globalCounter, viewBody model ]
    }


viewTopBar : Int -> Html.Html msg
viewTopBar globalCounter =
    Html.div
        [ Html.Attributes.style "display" "flex"
        , Html.Attributes.style "justify-content" "space-around"
        , Html.Attributes.style "padding" "24px"
        ]
        [ Html.a [ Html.Attributes.href "/page1.html" ] [ Html.text "Page 1" ]
        , Html.text ("Global counter " ++ String.fromInt globalCounter)
        , Html.a [ Html.Attributes.href "https://csaltos.com/tech-blog/buy-me-a-coffee.html" ] [ Html.text "Buy me a coffee" ]
        , Html.a [ Html.Attributes.href "/page2.html" ] [ Html.text "Page 2" ]
        ]


viewBody : Model -> Html.Html Msg
viewBody model =
    case model.currentRoute of
        Page1Route ->
            let
                page1View =
                    Page1.viewBody model.page1Model
            in
            Html.map Page1Msg page1View

        Page2Route ->
            let
                page2View =
                    Page2.viewBody model.page2Model
            in
            Html.map Page2Msg page2View


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Page1Msg page1Msg ->
            let
                ( newPage1Model, newPage1Cmd, newPage1Action ) =
                    Page1.update page1Msg model.page1Model

                newModel =
                    { model | page1Model = newPage1Model }
            in
            ( doAction newPage1Action newModel, Cmd.map Page1Msg newPage1Cmd )

        Page2Msg page2Msg ->
            let
                ( newPage2Model, newPage2Cmd, newPage2Action ) =
                    Page2.update page2Msg model.page2Model

                newModel =
                    { model | page2Model = newPage2Model }
            in
            ( doAction newPage2Action newModel, Cmd.map Page2Msg newPage2Cmd )

        UrlChangedMsg _ ->
            ( model, Cmd.none )

        UrlRequestedMsg urlRequested ->
            case urlRequested of
                Browser.Internal url ->
                    if String.startsWith "/page1.html" url.path then
                        ( { model | currentRoute = Page1Route }
                        , Browser.Navigation.pushUrl model.navigationKey (Url.toString url)
                        )

                    else
                        ( { model | currentRoute = Page2Route }
                        , Browser.Navigation.pushUrl model.navigationKey (Url.toString url)
                        )

                Browser.External url ->
                    ( model, Browser.Navigation.load url )


doAction : Action.Action -> Model -> Model
doAction action model =
    case action of
        Action.GlobalIncrementAction ->
            { model | globalCounter = model.globalCounter + 1 }

        Action.GlobalDecrementAction ->
            { model | globalCounter = model.globalCounter - 1 }


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.batch
        [ Sub.map Page1Msg (Page1.subscriptions model.page1Model)
        , Sub.map Page2Msg (Page2.subscriptions model.page2Model)
        ]


onUrlChange : Url.Url -> Msg
onUrlChange url =
    UrlChangedMsg url


onUrlRequest : Browser.UrlRequest -> Msg
onUrlRequest urlRequested =
    UrlRequestedMsg urlRequested
