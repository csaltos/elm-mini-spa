# Elm mini SPA (step 6)

## What?

This is the seventh step on creating a simple Elm web application using the
Single-page Application architecture.

At this step we will add a module called `Route.elm` for better using multiple
pages path routes.

You can use several different kind of routes and even create your own manually
but we are here presenting a magical router developed by
[Simon Lydell](https://github.com/lydell/) at
[elm-app-url](https://package.elm-lang.org/packages/lydell/elm-app-url/latest/)

For using `elm-app-url` you may install it with the command:

```bash
elm install lydell/elm-app-url
```

Then move all the routes created at `Main.elm` to a new module called
`Route.elm` and add helper functions to locate the routes and use them from the
`Main.elm` module.

That's it, now you have a solid router to handle your Elm web application, of
course with just two pages there is no need for an explicit router but for real
massive multipages applications a router is a life saver.

More info about `elm-app-url` may be found at [Elm Radio Episode 077: elm-app-url with Simon Lydell](https://elm-radio.com/episode/elm-app-url/).

Congratulations !! ... You have created an Elm SPA application, rather simple
but it can work as a fundation real Elm web multipages applications like the
ones we use at [Talenteca](https://www.talenteca.com/empleos) using Elm and
[elm-ui](https://korban.net/elm/elm-ui-guide/), just please remember to used only as a reference and adapt it to your
own projects requirements.

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
cd elm-mini-spa-step6
elm-live -- src/Main.elm
```

And open your favorite browser pointing to <http://localhost:8080>

## Where?

The source code is at <https://github.com/csaltos/elm-mini-spa> and the full
tutorial at <https://www.udemy.com/course/elm-the-complete-guide/>.

## Who?

This sample code is created with love by [Carlos Saltos](https://csaltos.com),
please considere to [buy me a coffee](https://csaltos.com/tech-blog/buy-me-a-coffee.html).
