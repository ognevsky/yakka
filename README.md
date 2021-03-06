# Yakka

Yakka is a simple gem to organize your time. You can manage list of time-killing resources and _disable_ them when working. I've tried to manage /etc/hosts file, but... you know.

So, I wanted something like this:

 * Create arbitrary rules
 * Enable and disable these rules quickly
 * Clear all restrictions

This gem was built on top of [ghost](https://github.com/bjeanes/ghost).

## Installation

    gem install yakka

## Usage

### Create config file

     $ yakka install
     # yakka i

This command will create `~/.yakka` config file. This is common YAML-file, feel free to edit this.

### Rules listing

    $ yakka list
    # yakka l

This will list all available rules within your `~/.yakka` file.

### Enable rule

    $ yakka enable work
    # yakka e work

This will enable `work` rule. You can create your own and use it.

### Clear restrictions

    $ yakka clear
    # yakka c

By the way, `clear` command runs before every `yakka enable`.

## Copyright

Copyright © 2011 Andrey Ognevsky.