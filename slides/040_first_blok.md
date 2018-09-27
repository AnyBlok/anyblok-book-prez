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
