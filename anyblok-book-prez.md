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

## [Intro: what's Anyblok and why](#intro)
## [First blok \o/](#first_blok)



???

What we gona see! What this presentation is about? 

=> Main goal: How to develop, reuse and extend Anyblok's bloks

* What we win ! => Anyblok T-shirt

Donner les liens vers

TODO: créer une entrée DNS pour book.anyblok.org ??
* [doc régérence](http://doc.anyblok.org/)
* [book](https://anyblok.gitbooks.io/anyblok-book/content/en/)
* [le book gh:anyblok/AnyBlok-book](https://github.com/anyblok/anyblok-book)
* [le presentation gh:anyblok/AnyBlok-book-prez](
  https://github.com/anyblok/anyblok-book-prez)

---
name: intro
template: tmpl-inverse

# Introduction

## [What is **Anyblok** ?](#what_is_it)

## [What's Anyblok won't do](#wont_do)

## [Inspiration, history and Why](#history)


---

name: what_is_it

.left-column[
  ## Intro
  ### What it is
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

* define
* best 3 killing features
    *

---

name: wont_do

.left-column[
  ## Intro
  ### What it is
  ### What it isn't
]
.right-column[

Anyblok is not...

* no user GUI/online interface, we start [furetUI]() for that
*

]

???

---

name: history

.left-column[
  ## Intro
  ### What it is
  ### What it isn't
  ### History
]
.right-column[

#TODO

]

???

---
name: first_blok
template: tmpl-inverse

# First blok

## [Tutorial](#)

## [Structure](#structure)

## [Requirements](#requirements)

## [Create your first Anyblok project](#create_it)


---

name: structure

.left-column[
  ## First blok
  ### structure
]
.right-column[

Project structure:

```bash
├── app.cfg
├── CHANGELOG.rst
├── doc
│   └── [...]
├── LICENSE
├── Makefile
├── my_project
│   ├── blok1
│   │   ├── __init__.py
│   │   ├── model.py
│   │   ├── tests
│   │   │   ├── __init__.py
│   │   │   ├── test_model.py
│   │   │   └── test_pyramid.py
│   │   └── views.py
│   └── __init__.py
├── README.rst
├── requirements.dev.txt
├── setup.py
└── VERSION
```

]

???

444

---

name: requirements

.left-column[
  ## First blok
  ### structure
  ### Requirements
]
.right-column[

* Python 3.4 or higher
* Following examples are working with postgresql (but other SGDB should works)

]

???


---

name: create_it

.left-column[
  ## First blok
  ### structure
  ### Requirements
  ### Create it
]
.right-column[

* virtual environement ``python -m venv anyblok_workshop_venv``
* Cookiecutter ``pip install cookiecutter``
* Generate a projet ``cookiecutter gh:AnyBlok/cookiecutter-anyblok-project``
* Init your env ``make setup-dev``
* Play with anyblok:
    * using console interpreter: ``anyblok_interpreter -c app.test.cfg``
    * starting web server: ``make run-dev`` then visit [localhost:8080](
      http://localhost:8080)
]

???

* A virtualenv allow getting different project with differents lib version
* cookiecutter allow to generate project from cookiecutter recipes (templates)
* Generate the project structure using anyblok template
* Get dependencies and int database
* play with interpreter:

```python
In [1]: registry.Example.query().all()
Out[1]: [<Example: An example, 1>]

In [2]: registry.Example.query().all().name
Out[2]: ['An example']

In [3]: registry.Example.insert(name="Another example")
Out[3]: <Example: Another example, 2>

In [4]: registry.Example.query().all()
Out[4]: [<Example: An example, 1>, <Example: Another example, 2>]

In [5]: registry.Example.query().all().name
Out[5]: ['An example', 'Another example']

In [7]: registry.commit()
```

---
