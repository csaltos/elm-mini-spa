# Elm mini SPA (step 3)

## What?

This is the sixth step on creating a simple Elm web application using the
Single-page Application architecture.

At this step we are trying to fix the 404 not found pages when the user hits the
reload button and for that we need to tell the web server where to find this
pages.

There are several ways to patch this web server requests, the idea is to create
an alias from the original Elm web application to every new page we add.

One way to do it is with simple file aliases using soft links but you can also
use rewrite rules with an nginx or HA-Proxy server or even templates with the
support of a Laravel or Ruby on rails server.

For our sample code we just added aliases using soft link, this aliases files
`page1.html` and `page2.html` are already created and pointing to `index.html`
but you can also create them your self with these commands:

```bash
ln -s index.html page1.html
ln -s index.html page2.html
```

These will only on Linux, Mac and any other real Unix operating system, for
Windows you can create copies of the `index.html` file into `page1.html` and
`page2.html` or also try to use WSL.

Now play a little bit with the code and navigation, try to remove the alias
files, use the browser reload button, add the aliases again and even try to add
new pages like a page for `/about.html`.

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
