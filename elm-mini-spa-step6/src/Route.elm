module Route exposing
    ( Route(..)
    , fromUrl
    , path
    )

import AppUrl exposing (AppUrl)
import Url

type Route
    = Page1Route
    | Page2Route


path : Route -> String
path route =
    case route of
        Page1Route ->
            "/page1.html"

        Page2Route ->
            "/page2.html"



fromUrl : Url.Url -> Route
fromUrl url =
    fromAppUrl (AppUrl.fromUrl url)


fromAppUrl : AppUrl -> Route
fromAppUrl url =
    case url.path of
        [] ->
            Page1Route

        [ "page1.html" ] ->
            Page1Route

        [ "page2.html" ] ->
            Page2Route

        _ ->
            Page1Route
