# Elm mini SPA (step 1)

## What?

This is the second step on creating a simple Elm web application using the
Single-page Application architecture.

At this step we are upgrading the code to a full navigation application using
two modules.

For implementing the change, just extract all the code to a new file called
`Page1.elm` and map all the calls from `Main.elm` to the new `Page1` module.

The idea is to upgrade the previous `main` function to a `Browser.application`
call with full navigation mapping the original `view` function to the new pages
`viewBody` function depending on which page to display in the next step.

The refactoring is not that complicated but requires a trick to cover different
types using `Html.map`, `Cmd.map`, `Sub.map` for aligning message, commands
and subscriptions types.

When this step is complete, the web app will look the same but now with two
modules ready to jump to multiple pages on the next step.

> **NOTE:** Obviously if you will have only one page, there is no need to create
> an extra module, this is just the preparation for applications when multiple
> pages are required.

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
cd elm-mini-spa-step1
elm-live -- src/Main.elm
```

And open your favorite browser pointing to <http://localhost:8080>

## Where?

The source code is at <https://github.com/csaltos/elm-mini-spa> and the full
tutorial at <https://www.udemy.com/course/elm-the-complete-guide/>.

## Who?

This sample code is created with love by [Carlos Saltos](https://csaltos.com),
please considere to [buy me a coffee](https://csaltos.com/tech-blog/buy-me-a-coffee.html).
