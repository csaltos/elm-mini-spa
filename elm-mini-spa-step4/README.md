# Elm mini SPA (step 4)

## What?

This is the fifth step on creating a simple Elm web application using the
Single-page Application architecture.

At this step we are upgrading all the internal illusion of navigation to a real
navigation and for that we are adding calls to `Browser.Navigation.pushUrl` and
`Browser.Navigation.load`, with that in place check that now the browser URL
changes along the navigation and even external links like the one added to the
top bar is also working.

Additionally we need what is called a "navigation key" and this is beause Elm
application projects are intercepting all the URL request for us to create our
own internal pages navigation but for synching this internal navigation with the
browser we now need to do it explicitly using this "navitaion key" now stored in
the model.

One piece is still missing, try to go to `/page1.html` and hit the browser
reload button, you will got a 404 not found page, this is beacuse the request
will be received by the web server and not our Elm internal navigation. We will
see how to fix it at the next step.

The full steps are:

- **Step0:** Create a simple page applications ([code](https://github.com/csaltos/elm-mini-spa/blob/main/elm-mini-spa-step0))
- **Step1:** Upgrade to a full navigation application ([code](https://github.com/csaltos/elm-mini-spa/blob/main/elm-mini-spa-step1))
- **Step2:** Add an extra page ([code](https://github.com/csaltos/elm-mini-spa/blob/main/elm-mini-spa-step2))
- **Step3:** Support for global shared data ([code](https://github.com/csaltos/elm-mini-spa/blob/main/elm-mini-spa-step3))
- **Step4:** Make the illusion real ([code](https://github.com/csaltos/elm-mini-spa/blob/main/elm-mini-spa-step4))
- **Step5:** Making the web server happy ([code](https://github.com/csaltos/elm-mini-spa/blob/main/elm-mini-spa-step5))
- **Step6:** Adding a magical router ([code](https://github.com/csaltos/elm-mini-spa/blob/main/elm-mini-spa-step6))

> **IMPORTANT:** This is only one way to provide SPA support for Elm, you do not
> need to implement new projects following exactly this code, please use it only
> as a reference and at the step level you may require.

## How?

We will cover a sample step by step starting with a simple page with a counter
until we have a multiple page Elm web application with multiple local and global
counters.

For running this step code just execute the command:

```bash
cd elm-mini-spa-step4
elm-live -- src/Main.elm
```

And open your favorite browser pointing to <http://localhost:8080>

## Where?

The source code is at <https://github.com/csaltos/elm-mini-spa> and the full
tutorial at <https://www.udemy.com/course/elm-the-complete-guide/>.

## Who?

This sample code is created with love by [Carlos Saltos](https://csaltos.com),
please considere to [buy me a coffee](https://csaltos.com/tech-blog/buy-me-a-coffee.html).
