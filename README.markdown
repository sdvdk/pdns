#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What pdns affects](#what-pdns-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with pdns](#beginning-with-pdns)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
6. [Testing](#testing)

## Overview

This PowerDNS module lets you manage nameserver and recursor on Debian and RedHat based systems with Puppet.

## Module Description

This module installs PowerDNS nameserver and/or recursor.
It gives you the ability to install and configure both services or separatly.
The module comes with defaults (sqlite) to run both services out of the box.
For production purposes better tunning of the config is required.
This module does not install or configure the backend services, please use the appropriate puppet modules to manage these backend services.

## Setup

### What pdns affects

TODO

### Setup Requirements

On RedHat bases systems the EPEL (https://fedoraproject.org/wiki/EPEL) repository is needed to install PowerDNS.

### Beginning with pdns

In puppet node config include the class:

    include pdns

## Usage

TODO

## Reference

Classes:
  
* [pdns](#class-pdns)
* [pdns::namserver](#class-pdns::namserver)
* [pdns::recursor](#class-pdns::recursor)

###Class: pdns

Uses pdns::nameserver and/or pdns::recursor classes to setup a simple PowerDNS install.

Parameters:

* `nameserver`: Boolean (default: true)
* `recursor`: Boolean (default: true)

###Class: pdns::nameserver

Performs the basic setup tasks required for using PowerDNS nameserver.

Parameters:
TODO

###Class: pdns::recursor

Performs the basic setup tasks required for using PowerDNS recursor.

Parameters:
TODO

##Testing

Make sure you have:

* rake
* bundler

Install the necessary gems:

    bundle install

And run the tests from the root of the source code:

    rake test
