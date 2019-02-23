---
title: "Hello World From My Python Docker Container"
date: 2019-02-23T11:56:20-06:00
archives: "2019"
tags: []
author: Michael Teske
---
# Getting Started...Again

It's Saturday and I was reading my @Twitter feed and saw a few Kubernates and Docker links so I thought I would fire up my Docker Desktop on my, uh desktop. I stumbled across this [Getting Started with Docker](https://docs.docker.com/get-started/) link and thought I would, well, get started...again.

## Back Story

If you're like me, you have a horrible affliction of "shiny key" syndrome. Meaning, I'm easily distracted by shiny things. Some call it ADHD I guess. #SQUIRREL! Gotcha! Anyway, I installed Docker on my Lenovo X1 Yoga a while back, the only system I didn't have VMWare Workstation installed on. I say this, because installing Docker, from my recollection requires Hyper-V and as we know, you can't have both installed at the same time. So I installed it and attempted to load an "image" or something and didn't have much success. So, back burner. Until today.

## Today

So, I stumbled through some Twitter posts and came across the aforementioned Getting Started with Docker link and, well, got started. With Docker already installed, I went right to the CLI (PowerShell) to follow along with the doc. 

```PowerShell
# Checking my version
docker --version

Big fat error...docker daemon isn't running or something.
```
1. Insert face palm.
2. Start Docker Dekstop (icon on desktop)

```powershell
# Eh Hem...checking my version
docker --version
Docker version 18.09.2, build 6247962
```
Success! I'm a Docker ninja! Well, baby steps my friends. But I needed a win this a.m. ;). So what next, well I continued to follow along with the blog post, I tried a few more exploratory commands:

```docker
# Check additional details about your Docker installation. Ie, containers, running, stopped etc.
docker info

# List images
docker image ls
or
docker image ls --all

# Run a docker image
docker run 'image-name'
```
All good. Now lets get the Docker Hello-World image. This downloads and runs the container/image essentially validating your installation. Theirs an easter egg-ish in the output for other things to try.

```docker
docker run hello-world
```
All fun so far. I proceed to [Part 2: Containers](https://docs.docker.com/get-started/part2/) of the Getting Started with Docker series. I stumbled a bit in this process with building an app. I wasn't going to lose sleep over it, but got distracted down a different path (see shiny key syndrom above). I was reading about needing Python to "build" the app etc and not needing/wanting to have to install Python on your host/dev system. Then what? Well, enter Docker and the Python container. I fanagled one of their commands to pull the Python image down. See below:

```docker
docker run -it python
```
This command pulls down a Python image and runs the container leaving you with a Python >>> prompt.
```python
print ("hello world")
hello world
```
And there you have it. Not something overly complex. The install itself does take some time. Complete instructions and bits can be found [here](https://docs.docker.com/install/).

If you're wondering about all this "containers" and "Kubernetes" things. Check out https://docs.docker.com and get started. Very nicely written. A few things I found were outside my scope as a cloud/IT Ops person. However, I wanted to at least have a fundamental understanding of containers and how to use them.




