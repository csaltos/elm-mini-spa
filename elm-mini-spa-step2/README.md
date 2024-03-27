# Elm mini SPA (step 2)

## What?

This is the third step on creating a simple Elm web application using the
Single-page Application architecture.

At this step we are adding a second page, just copy the `Page1.elm` file to a
new `Page2.elm` file refactoring the new module names.

After that, import the new module `Page2` and the `Main.elm` and add the new
page calls.

At some points you will requrire to add `Cmd.batch` and `Sub.batch` for
including multiple commands and subscriptions for the multiple pages.

For making the multiple page navigation work we add a piece called a router and
also a top bar visual navigation at the `Main.elm` file.

When this step is complete you will be able to change from one page to the other
with local independent counters where we add some visual changes like different
backgrounds and labels for the two pages.

Play around the now two local counters and check they work independanly.

But what if I want to make a global counter or any other kind of global shared
piece of data? ... discover how in the next step.

> **NOTE:** For this sample we are using similar pages but obviously you can
> have different interfaces, behaviours and contents for multiple different
> pages.

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
cd elm-mini-spa-step2
elm-live -- src/Main.elm
```

And open your favorite browser pointing to <http://localhost:8080>

## Where?

The source code is at <https://github.com/csaltos/elm-mini-spa> and the full
tutorial at <https://www.udemy.com/course/elm-the-complete-guide/>.

## Who?

This sample code is created with love by [Carlos Saltos](https://csaltos.com),
please considere to [buy me a coffee](https://csaltos.com/tech-blog/buy-me-a-coffee.html).
