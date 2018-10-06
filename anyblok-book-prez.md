name: tmpl-inverse
layout: true
class: center, middle, inverse

.footnote[
  [Accueil](#cover) -
  Pierre Verkest - [@petrusv84](http://twitter.com/petrusv84) -
  [fork this prez](https://github.com/anyblok/anyblok-book-prez)
]

---
name: cover
template: tmpl-inverse

# Anyblok workshop
[presentation]

.headnote[
  P: presenter mode -
  C: clone mode
]

???

Before start the prez:

* Display [Anyblok's requirements](#requirements)

=> Start the talk:

* Present myself
* Present the team

---
name: summarise
layout: false
class: center, top

# Summarise

## [Intro: what's Anyblok](#intro)
## [Setup a project](#project_setup)
## [Develop bloks](#first_blok)
## [hack game](#game)
## [Expose http services](#http)
## [Ask helps and contribute](#ask)

???

What we gona see! What this presentation is about? 

=> Main goal: How to develop, reuse and extend Anyblok's bloks

* What we win ! => Anyblok T-shirt

* Expected audience: business developers

* give some links:

* [ref doc](http://doc.anyblok.org/)
* [book](https://anyblok.gitbooks.io/anyblok-book/content/en/)
* [gh book: anyblok/AnyBlok-book](https://github.com/anyblok/anyblok-book)
* [prez](https://anyblok.github.io/anyblok-book-prez)
* [gh prez:anyblok/AnyBlok-book and why-prez](
  https://github.com/anyblok/anyblok-book-prez)

---
name: intro
template: tmpl-inverse

# Introduction

## [What is **Anyblok** ?](#what_is_it)

## [Inspirations, history and why and ecosystem](#history)

## [Workshop context](#workshop)


---

name: what_is_it

.left-column[
  ## Intro
  ### What's it
]
.right-column[

**AnyBlok** is a Python framework allowing to create highly
dynamic and modular applications on top of the SQLAlchemy ORM.

Applications are made of “bloks” that can be installed, extended,
replaced, upgraded or uninstalled.

Bloks can provide SQL Models, Column types, Fields, Mixins, SQL views,
or even plain Python code unrelated to the database, and all of these
can be dynamically customized, modified, or extended without strong
dependencies between them, just by adding new bloks.

]

???
hack
* define
* best 3 killing features
    * based on famous libraries make easy to assemble them likes
    pyramid / beaker...
    * let manage different levels of responsibilities in code source
    * A nice syntax to overwrite class with the less magic as possible
    to respect each library and keep your code looking python code
* Business application framework


---


name: history

.left-column[
  ## Intro
  ### What it is
  ### History
]
.right-column[

Amphi Shannon

* 14h: Développement d'applications avec le framework Anyblok et
  son écosystème d'outils et modules métier - Franck Bret

* 14h03: Gestion de stocks en Python avec Anyblok / WMS - Georges Racinet

]

???

---

name: workshop

.left-column[
  ## Intro
  ### What it is
  ### History
  ### Workshop
]
.right-column[

## Anyblok repos

https://github.com/AnyBlok

## Anyblok book

https://anyblok.gitbooks.io/anyblok-book/content/en

## Classrooms reservations

]

???

---

name: project_setup
template: tmpl-inverse

# Setup your AnyBlok project

## [Requirements](#requirements)

## [init project with cookiecutter](#cookiecutter)


---

name: requirements

.left-column[
  ## Setup project
  ### structure
]
.right-column[

Project structure:

* Pstgresql
* SQLAlchemy

]

???

444

---

name: requirements

.left-column[
  ## Setup project
  ### structure
]
.right-column[

Project structure:

```bash
├── app.cfg                      # Configuration file used in production
├── app.dev.cfg                  # Configuration file used for development
├── app.test.cfg                 # Configuration file used to run tests
├── CHANGELOG.rst                # Change log of your project
├── doc                          # Documentation directory
│   └── ...                      #
├── LICENSE                      # Project license
├── Makefile                     # A Makefile: see make help to list available commands
├── README.rst                   # Project's README with basics project information
├── requirements.dev.txt         # Python package dependencies required for development
├── requirements.test.txt        # Python package dependencies required for running unittest
├── rooms_booking                # The python package directory where you develop your bloks
│   ├── room                     # A blok directory
│   │   ├── __init__.py          # Blok definition
│   │   ├── model.py             # Python module with model that define an example class
│   │   ├── tests                # Test directory
│   │   │   ├── __init__.py      # Likes standard python, the __init__.py file!
│   │   │   ├── test_model.py    # File that test model.py methods
│   │   │   └── test_pyramid.py  # File that test view.py methods
│   │   └── views.py             # Python module to declare pyramid route components
│   └── __init__.py              # Likes standard python, the __init__.py file!
├── setup.cfg                    # The python package setup.cfg file
├── setup.py                     # The python package setup.py file
└── VERSION                      # Python package version file
```

]

???

444

---
name: first_blok
template: tmpl-inverse

# First bloks

## [Reuse bloks](#external_blok)
## [Extend bloks](#extend_blok)
## [Create new model](#create_model)
## [Use mixins](#mixins)
## [Relationship](#link_models)


---

name: external_blok

.left-column[
  ## First bloks
  ### external
]
.right-column[

# Reuse bloks

]

???

444

---

name: extend_blok

.left-column[
  ## First blok
  ### external
  ### extend
]
.right-column[

# Extend existing bloks

]

???

444

---

name: create_model

.left-column[
  ## First blok
  ### external
  ### extend
  ### model
]
.right-column[

# Create new model

]

???

444

---

name: mixins

.left-column[
  ## First blok
  ### external
  ### extend
  ### model
  ### mixins
]
.right-column[

# Re use mixins

]

???

444

---

name: link_models

.left-column[
  ## First blok
  ### external
  ### extend
  ### model
  ### mixins
  ### relation
]
.right-column[

# Link models

]

???

444

---
name: game
template: tmpl-inverse

# Hack game

---
name: http
template: tmpl-inverse

# Epoxse python API over HTTP

---
name: ask
template: tmpl-inverse

## Ask

Open issues in Anyblok's repos
https://github.com/AnyBlok

## Contribute

https://github.com/AnyBlok

## Thanks


---
