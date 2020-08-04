---
layout: default
title: Projects
permalink: /projects.html
---

# Projects

I graduated from Emerson College in 2015 with a degree in video post production and have
worked since then creating online video content for clinical translational scientists at
Harvard Catalyst. Many of my early short films [can be found on my Vimeo page](https://vimeo.com/reelmatt)
and some of the educational courses I have worked on can be found through [the Harvard Catalyst
'Train' page](https://catalyst.harvard.edu/online_learning_matrix.html) including a [promo video
for Comparative Effectiveness Research](https://catalyst.harvard.edu/services/cer/).

Along the way, I developed a passion for programming, writing small tools to help simplify
repetitive tasks in my workflow. I started classes at the Harvard Extension School to further
my knowledge and expertise and applied for the Masters degree program which I completed in 2020. 

Below is a brief summary of some of the courses and projects I worked on during my Masters
degree. Some links are to private GitHub repositories; if you would like access to them,
[shoot me an email](mailto:matt@reelmatt.com).

## [Capstone project&mdash;PyWorkflow](https://github.com/PyWorkflowApp/visual-programming)

*Languages used: Python, Javascript/Typescript*

*Frameworks used: Django, React*

*Packages used: pandas, NetworkX*


PyWorkflow was a group capstone project I worked on to finish my Masters degree. As the
project's README mentions, the quick summary of the project is:
> PyWorkflow is a visual programming application for building data science pipelines and workflows

My responsibilities included most of the back-end design and implementation. Some
highlights include:
* Workflow model to represent a visual workflow as a computational graph.
* REST API to map front-end actions to the back-end computational graph, including
execution of workflows.
* Designed an extensible Node class to support new user-created workflow operations.
PyWorkflow included a handful of Nodes for users to start with, but the main draw to the
application is the extensibility provided. By sub-classing the Node, users can bring in
other packages besides *pandas* and add new visual nodes by writing an `execute()` method.
All other work, including storage and passing of Node execution data, is handled by
PyWorkflow.
* Assisted the team with Docker containerization.
* Assisted the team with the CLI interface to allow for batch execution of saved workflows.
* Setup a CI pipeline to run automated unit tests with GitHub Actions.
  
## [Harvard Catalyst Tools](https://github.com/Harvard-Catalyst-PGE/hcat-tools) (Private repo)
The goal of these tools is to help simplify common tasks for myself and colleagues at my
day job. The main tools that are part of this repository are:
* Runtime fetcher: looks up a video's runtime using the Vimeo oEmbed API
* HTML generator: creates HTML pages for each video, populating a template with a video's
specific information.
* Budget reconciler: Uses the Airtable standard API to pull in coures expenses from many
Airtable bases, to populate a central Online Team budget document. This process is
automated using the Heroku Scheduler so the central budget is always kept up-to-date.

I started writing these tools early on in my Masters degree and have evolved them as I have
learned new skills, techniques, and languages. Some started as simple shell scripts, then
deployed on a Digital Ocean server, and now features a semi-CI/CD pipeline to deploy on
Heroku.

As my main job is to film, edit, and produce our online courses, some of the code and
documentation has gotten a bit stale and out-of-date. My recent work towards these tools
has been to shift from a web-app to a REST API to correspond to Airtable's new Scripting
and Custom Blocks. These blocks would enable myself and others to perform actions from
within Airtable itself and through a few button clicks, rather than visiting a web-page
and manually entering information.

## Class assignments

### [Dynamic Web Applications](https://github.com/reelmatt/csci15)
This class was a great introduction to writing web applications and version control.
Laravel was a great framework to introduce me to the model-view-controller pattern later
seen in Flask and Django. The tip calculator project was also my first experience with a
single-page application.

*Languages used: HTML, CSS, PHP*

*Frameworks used: Laravel*

*Database experience: MySQL*

* About me page
    * PHP addition cycles through a hard-coded array of quotes and randomly presents one
    on each page load.
* Tip calculator
    * One version is written in pure PHP.
    * A second version was written in PHP using the Laravel framework. This version is
    written as a single-page application.
* Apartment Hunter
    * MySQL database to store apartment and realtor listings.
    * CRUD functionality for listings and Google Maps integration to show apartment
    location.

### [Introduction to C/Unix/CGI Programming](https://github.com/reelmatt/csci26)
*Languages used: C*

Perhaps the greatest skill I learned in this course was the benefit for writing small,
modular code that adheres to the UNIX ethos of "do one thing, and do it well". The
assignments for this course covered a lot of ground and are not as easily grouped into
bullets as other classes. A few highlights are:
* `tt2ht3.c` &mdash; program to convert plain-text tables into an HTML-formatted table
* `wlfiler6.c` &mdash; word counter using extensive C-pointers and memory management
* `fl.c` &mdash; mail-merge program to substitute data values into a format file
* Hangman &mdash; a collection of shell scripts to play a game of Hangman in the terminal

### [Unix System Programming](https://github.com/reelmatt/csci28)
*Languages used: C*

This class was the "sequel" to the Intro to C course and was one of my favorite classes at
the Extension School. Many of the assignments were to recreate parts of existing 
command-line tools, and in the process of doing so, I learned a lot about the underlying
UNIX system architecture. For the later assignments, culminating with the web server, I
learned about internet protocols

* `alastlog.c` &mdash; displays a list of last logins
* `more03.c` &mdash; perform a subset of features of the built-in `more`
* `pfind.c` &mdash; recursively search directories for a file, much like the built-in `find`
* `sttyl.c` &mdash; a `stty`-lite command to set a limited number of options for a terminal
device
* `smsh.c` &mdash; implement a sub-set of features for a shell, including builtins, control
flow, and execution of other programs.
* `pong.c` &mdash; a single-player game of pong; uses signals
* `wsng.c` &mdash; implement a limited feature set for a web server, including reply
headers, HEAD support, configuration files, directory listing, zombie processes, and more.

### [Web Application Development using Node.js](https://github.com/reelmatt/csci31)
*Languages used: HTML, CSS, Javascript (Node.js)*

*Frameworks used: Express, Angular*

*Database experience: MongoDB*

This course expanded upon my web application skills from Dynamic Web Applications. Instead
of PHP/Laravel, this course focused on Node.js/Express and also added Angular to create a
more dynamic front-end experience.

* Simple file-server using Node.js
* Film Logger
    * Uses the OMDB API for looking up film information
    * Assignment 3 began the Film Logger app with simple Express routing and templates
    * Assignment 4 added CRUD operations to add film data to a MongoDB
    * Assignment 5 added a REST API to access the film data
    * Assignment 6 converted most of the front-end from Express templates to Angular
    * Assignment 7 combined the Express back-end with Angular front-end into a single
    application

### [Web Programming with Python and JavaScript](https://github.com/reelmatt/csci33a)
*Languages used: HTML, CSS, Python, Javascript*

*Frameworks used: Sass, Flask, Django*

*Database experience: SQL, SQLite*

* About me page, uses Sass for advanced styling.
* "Book Review Central"
    * Flask app with a SQL database.
    * Python importer script to load CSV book data into SQL database.
    * Calls to Goodreads API to look up additional book and rating info.
* Slack-clone
    * Flask app using SocketIO to send messages between accounts and channels, à la Slack.
    * Designed as a single-page application.
* Online menu for order pizza
    * Django app with a SQLite database to store a list of menu items and combinations.
    * Allows users to create accounts, add items to cart, and check previous orders.
* "Book Review Central" v2.0
    * Translated the Flask app from project 1 into a Django app with a SQLite database.
    * Expanded on the Goodreads API and added OpenLibrary API for searching any title
    besides the 5,000 from initial CSV import.

### Cloud DevOps: Basics and Modern Techniques
*Services used: Amazon AWS, Google Cloud Platform*

*Tools used: Jenkins, Ansible, Terraform, Docker*

I learned some basics about cloud devops with Amazon AWS and the Google Cloud Platform.
The assignments for this class included learning the following techniques:
* Setting up EC2/Compute Engine instances via the browser
* Automating setup with Amazon CloudFormation and Terraform
* Configuration management with Ansible
* Setting up CI/CD pipelines with Jenkins
* Serverless applications with Amazon Lambda and containerization using Docker


### [Software Design: Principles, Models and Patterns](https://github.com/reelmatt/csci97)
*Languages used: Java*

This was one of my final classes before the capstone project. The focus was primarily on
software design&mdash;creating UML diagrams and class dictionaries to guide the
implementation. I then took these concepts and implemented the designs for the first
four assignments to create a Store 24X7 service, an autonomous store design akin to Amazon
Go. During design and implementation, there was a requirement to incorporate several Java
design patterns like the Command, Observer, and Singleton.

* Ledger Service
* Store Model Service
* Store Controller Service
* Authentication Service
* Interplanetary Space Transport System (design only)

