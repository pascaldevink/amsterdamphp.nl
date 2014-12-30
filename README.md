[![Stories in Ready](https://badge.waffle.io/amsterdamphp/amsterdamphp.nl.png?label=ready)](https://waffle.io/amsterdamphp/amsterdamphp.nl)
amsterdamphp.nl
===============

This repository hosts the main AmsterdamPHP Website. The purpose of this website is to showcase the User Group, from the work that is done and its results to the sponsors who allow us to make this happen and the people who contribute to allow us to accomplish so much.

Its a community project, lead by the organisers and executed by the members. All communication for this project is done either in the issues page, or in the enablers mailing list.

## Want to contribute?

We want this to be a community project we all rally behind and keep up to date, but we also want it to be a **learning experience**. This means experimenting with new technologies and trying out things we may not have time to use in everyday life.

*Note*: You need a meetup.com API key (https://secure.meetup.com/meetup_api/key/) and enough permissions to get the attendees of a meetup. That requires at least the 'Event organiser' role.

### How to contribute?

1. **look at the issues**, they are our guide, find something you are comfortable with and claim it
2. if details are lacking, **start a discussion** on the issue
3. **run the behat tests** for that feature (or write if needed)
4. **write your code** according to the guidelines below
5. **run behat tests** make sure everything is green
6. **open a PR** and wait for the review results by one of the project leads
7. ...
8. **Profit!**, no I'm kidding, but the learning process should indeed be a profit for you.

### Guidelines

- use PSR-2 guidelines to write code
- tests! Please add them along with your contributions
- practice writing good clean code, this is for learning.
- use the vagrant box included if you have trouble with dependencies

### Booting up with Docker

1. In parameters.yml set meetup_key value to your meetup.com API key. Set group_urlname to amsterdamphp. Also, set redis_dsn to redis://redis:6379.
2. Install docker ([See Docs](https://docs.docker.com/installation/#installation))
3. Start redis with `docker run -d -p 6379:6379 --name redis redis`
4. Build the website with `docker build -t amsterdamphp/amsterdamphp-website .`
5. Start the website with `docker run -p 8080:8080 --link=redis:redis amsterdamphp/amsterdamphp-website`
6. In your browser visit 127.0.0.1:8080 (or the ip that boot2docker has if on Mac OSX)
7. Code!

### Booting up Vagrant Box

To make it easier for you to contribute and use all the new and shiny, we have setup a Vagrant box. It is provisioned with Ansible, so you need to have a few extra things, these are the steps

1. Install Ansible >=1.4 ([See Docs](http://www.ansibleworks.com/docs/intro_installation.html) or use HomeBrew on Mac OSX)
2. Install VirtualBox
3. Install Vagrant
4. Run `vagrant up`
5. Point `vagrant.amsterdamphp.dev` to `192.168.33.10`
6. In parameters.yml set meetup_key value to your meetup.com API key. Set group_urlname to amsterdamphp
7. Code!

**note:** This box has a always running process that will constantly compile the less files into CSS while you work, you do not need to run it yourself.

### Grunt

To make building assets easy grunt is installed on the Vagrant box. If grunt is new for you be sure to read the  [getting started](http://gruntjs.com/getting-started) guide on their site. Using grunt is easy. Just running `grunt` will build all the assets. While `grunt watch` waits until you change something in the asset sources and rebuilds them when that occurs. When you like to know more about what happens when you run `grunt` run it with `-v` like this `grunt -v` to display verbose output.

### Technology sandbox

Like I said, learning experience, we want to pack some new stuff in here for us to experiment with, this may be familiar to some and new to others, that's where you come in to teach others.

- [Symfony](http://symfony.com/) 2.3
- [Behat](http://behat.org/) and [PHPSpec](http://www.phpspec.net/)
- API's, lots of them.
- [Vagrant](http://www.vagrantup.com/) + [Ansible](http://www.ansibleworks.com)
- [Redis](http://redis.io/)
- [Less](http://lesscss.org/)
- [Grunt](http://gruntjs.com/)

Any more suggestions?
