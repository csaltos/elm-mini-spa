# Elm mini SPA (step 3)

## What?

This is the fourth step on creating a simple Elm web application using the
Single-page Application architecture.

At this step we are adding a global counter as a sample on how to have shared
data between pages and the `Main` module.

First add an integer called `globalCounter` at the `Main` module and show it at
the top navigation bar.

The new global counter should show at the top of the page ... but ... how to
share it between the pages? ... how to make the increment and decrement buttons
of the pages to change the global counter at the `Main` module? ... for that we
have added the notion of an action that are very similar to the original Elm
messages but for passing signals from the pages to the `Main` module, for
passing messages back from the pages.

Play with the local counters at each page and check how the global top
navigation bar counter is in-sync.

When you click on the different pages links you will notice the browser URL
does not change, this is because on an Elm application project all the
navigation is intercepted so we can create the illusion of new pages but for
making that illusion real we need to add a couple of things on the step 4.

> **NOTE:** What we call `globalCounter` at this sample code can
> also be named as `SharedModel` and have a richer record type alias rather
> than just an integer and also you can propagate this new shared piece of data
> to the pages modules.

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
cd elm-mini-spa-step3
elm-live -- src/Main.elm
```

And open your favorite browser pointing to <http://localhost:8080>

## Where?

The source code is at <https://github.com/csaltos/elm-mini-spa> and the full
tutorial at <https://www.udemy.com/course/elm-the-complete-guide/>.

## Who?

This sample code is created with love by [Carlos Saltos](https://csaltos.com),
please considere to [buy me a coffee](https://csaltos.com/tech-blog/buy-me-a-coffee.html).
