# docker-notejam

***************
Notejam: Django
***************

Notejam application implemented using `Django <https://www.djangoproject.com/>`_ framework.

Django version: 1.6.5

==========================
Installation and launching
==========================

-----
Clone
-----

Clone the repo:

.. code-block:: bash

    $ git clone git@github.com:komarserjio/notejam.git YOUR_PROJECT_DIR/

-------
Install
-------
Use `virtualenv <http://www.virtualenv.org>`_ or `virtualenvwrapper <http://virtualenvwrapper.readthedocs.org/>`_
for `environment management <http://docs.python-guide.org/en/latest/dev/virtualenvs/>`_.

Install dependencies:

.. code-block:: bash

    $ cd YOUR_PROJECT_DIR/django/
    $ pip install -r requirements.txt

Create Dockerfile.app:

.. code-block:: bash

    $ docker build -t img_name -f Dockerfile.app

Create Dockerfile.db:

.. code-block:: bash

    $ docker build -t img_name -f Dockerfile.db


Changes in the setting.py file in the notejam folder, provide all the details regarding the database you are using.    


Create docker-compose.yaml file:
    
      Put all the dependencies of Dockerfile.app and Dockerfile.db and compose them up

.. code-block:: bash

    $ docker compose up       
