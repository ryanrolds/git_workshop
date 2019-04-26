class: middle, center

# Git, README's, and a little Docker

---

# Key points

This workshop covers three topics:

* Key project files
* Git & Github
* Docker & Docker Compose

By the end of the workshop you will have the tools installed, forked a repo, and made a pull request.

---

# Requirements

You must have:

* [GitHub](https://github.com/) account
* [Git](https://git-scm.com/downloads)
* [Docker CE](https://docs.docker.com/install/)
* [Docker Compose](https://docs.docker.com/compose/install/)

---

# Teams can be challenging

Challenges

* Onboarding can become complex and time consuming
* Keeping everyone's copies of the code up-to-date
* Multiple people working in the same files
* Helping others requires getting a copy of their files
* Supporting multiple operating systems

---

# REAMDE.md and LICENSE

`README.md` is the defacto standard file for important project information. `LICENSE` is the where people expect to find the license in OSS projects. Larger projects also have a `CONTRIBUTING.md` file.

* Description of project
* Setup instructions
* Other information important
* H4C requires an MIT license

---

# Version Control

Version Control is universally used at software companies for good reason.

* Solves distributing and updating code
* Helps prevent losing code
* Keeps past versions of the code
* Easy to switch between work
* Git, Mercurial, Subversion, VCS, Team Foundation Server

---

# Git 

Working as a team requires being able to syncronize code accross the team while still being able to work independently. Git allows every developer to have their own local copy of the codebase, maintain multiple sets of changes, and push code to the rest of the team.

* Very popular
* Used for Linux kernel development
* Distributed Version Control 

---

# GitHub

GitHub is a Git repository hosting platform that provides a web interface for managing the central repository.

* Very popular
* Used by a large number of OSS projects
* Provides good UI for code review 

---

# Docker

Most projects have dependencies that must be setup when on-boarding contributors. Containerization tools, like Docker, and container oristration tools, like Docker Compose, allow projects to define their environment with code (Infrastructure as Code). 

Requires creating `Dockerfile` and `docker-compose.yaml`. See this repository's for a basic example.

---

# Workshop

We are going to:

* Fork the [workshop repo](https://github.com/ryanrolds/git_workshop)
* Clone the fork
* Run the service with Docker & Docker Compose
* Create a branch
* Add your name to end of `README.md`
* Commit and push your change
* Create a pull request and merge changes

---

# Fork Workshop Repo

Create a GitHub account if you don't already have one. Visit the [workshop repo](https://github.com/ryanrolds/git_workshop) and fork the project.

To fork a project, click the "Fork" button in the top right corner.

---

# Checkout your fork

Open your command line (Git Bash on Windows). Clone your fork to create a local copy and change your directory.

``` bash
$ git clone https://github.com/ryanrolds/git_workshop.git
Cloning into 'git_workshop'...
remote: Enumerating objects: 4, done.
remote: Counting objects: 100% (4/4), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 4 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (4/4), done.
$ cd git_workshop
```

---

<img src="/images/starting_projects_github.png"/>

---

# Start the service

Docker Compose will use the repos `Dockerfile` to create a new container and start the service. Multiple services can defined in `docker-compose.yaml`, including web services, datastores, message queues, and much more.

``` bash
$ docker-compose up
...
Creating git_workshop_git_workshop_1_7bd975fa4b54 ... done
Attaching to git_workshop_git_workshop_1_1ba72dfdf271
git_workshop_1_1ba72dfdf271 | 2019/04/26 00:37:03 View slides at http://localhost:8080/
```

---

# Create a branch in your repo

Creating branches is how you group changes and ensure unfinished changes do not get sent to your team, or deployed accidentally. You can have any number of branches and most companies expect each ticket to have a branch.

``` bash
$ git branch add_ryanolds
$ git checkout add_ryanolds
Switched to branch 'add_ryanolds'
```

---

# Add name to README.md

Using your preferred editor, add your name to the end of `README.md`.

``` bash
$ tail README.md
8. Get the Pull Request (PR) merged
9. Checkout `master` branch
10. Pull latest changes to master

## Contributors

* Ryan Olds
```

---

# Status

Check the status of your repository:

``` bash
$ git status
On branch add_ryanolds
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

        modified:   slides.md

no changes added to commit (use "git add" and/or "git commit -a")
```

---

# Git Add & Commit

Add your changes to the next commit. This of commits as checkpoints. It's common to commit and push unfinished work when you need someone to look at your code.

``` bash
$ git add README.md
$ git commit -m "Adding myself"
[add_ryanolds 06053a1] Adding myself
 1 file changed, 24 insertions(+), 1 deletion(-)
 rewrite README.md (100%)
```

---

# Push

Once your changes are commited, push them to your fork:

``` bash
$ git push
...
...
...
Branch 'add_ryanolds' set up to track remote branch 'add_ryanolds' from 'origin'.
```

> Pay attention to the output of this command.

---

# Submit Pull Request and Pull

Visit your fork on GitHub and create a PR. After your PR is merged, checkout `master` and merge the upstream changes:

``` bash
$ git checkout master
$ git fetch upstream
$ git merge upstream/master
...
From github.com:ryanrolds/git_workshop
   a41337a..f3d2c97  master     -> origin/master
 * [new branch]      add_myself -> origin/add_myself
Updating a41337a..f3d2c97
Fast-forward
 README.md | 25 ++++++++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)
```

---

# Questions? 

Ready?

---

# It's your turn

1. Go to https://github.com/ryanrolds/git_workshop
2. Perform the tasks in `README.md`.

