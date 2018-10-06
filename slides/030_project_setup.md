
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
