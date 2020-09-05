# ruby-bash
[![Gem Version](https://badge.fury.io/rb/ruby-bash.svg)](https://badge.fury.io/rb/ruby-bash)

User-Friendly Versions of Bash Commands Built in Ruby

## Commands

### gdr

`gdr` (go to directory): enables interactive browsing and changing of directories starting from the current path

It is a versatile, efficient, and user-friendly replacement of using `cd` & `ls` when changing directories.

## Pre-requisites

- Bash shell
- Ruby (Vanilla or [RVM](https://rvm.io))

## Setup Instructions

### Vanilla Ruby

```
sudo gem install ruby-bash
ruby-bash-setup
source ~/.ruby_bash_source
```

### With RVM

The gem can be installed unto any [Ruby](https://rvm.io/rubies/installing)/[Gemset](https://rvm.io/gemsets/basics) in [RVM](https://rvm.io) and it will be used from there everywhere. 

Since it is independent of any particular [Ruby](https://www.ruby-lang.org/en/) project, it is recommended you install unto the default [gemset](https://rvm.io/gemsets/basics).

Afterwards, run the `ruby-bash-setup` command from the same [RVM](https://rvm.io) [Ruby](https://rvm.io/rubies/installing)/[Gemset](https://rvm.io/gemsets/basics) you installed the gem at to setup the `ruby-bash` functions in `~/.bash_profile` or `~/.bashrc` (whichever is available)

These are the commands you need to run:

```
rvm use @default
gem install ruby-bash
ruby-bash-setup
source ~/.ruby_bash_source
```

## Usage

### gdr Usage

Simply run this command from anywhere:

```
gdr
```

You should see a diretory listing as follows:

```
== gdr (go to directory) - ruby-bash - version 0.0.1 ==
Choose a directory:  
Current: /Users/User/code/ruby-bash (Type to filter / ENTER to navigate / ESC to go back / CTRL+X to go to directory / CTRL+C to abort back to original path)
‣ ..
  drwxr-xr-x  3 User  staff    96 Sep  5 11:00 bin
  drwxr-xr-x  4 User  staff   128 Sep  5 11:04 lib
  drwxr-xr-x  3 User  staff    96 Sep  5 13:56 pkg
  drwxr-xr-x  4 User  staff   128 Jul 21 01:46 spec
```

1. Type any characters to filter the list (e.g. typing 's' filters by `spec` directory)
2. Hit ENTER to navigate to directory
3. Hit ESC to go back where you were before
4. Hit CTRL+X once ready to go to directory (exit)
5. Hit CTRL+C if you want to abort and go back to original path

## Contributing to ruby-bash

-   Check out the latest master to make sure the feature hasn't been
    implemented or the bug hasn't been fixed yet.
-   Check out the issue tracker to make sure someone already hasn't
    requested it and/or contributed it.
-   Fork the project.
-   Start a feature/bugfix branch.
-   Commit and push until you are happy with your contribution.
-   Make sure to add tests for it. This is important so I don't break it
    in a future version unintentionally.
-   Please try not to mess with the Rakefile, version, or history. If
    you want to have your own version, or is otherwise necessary, that
    is fine, but please isolate to its own commit so I can cherry-pick
    around it.

## License

[GPLv3](LICENSE.md)

**ruby-bash** - User-Friendly Versions of Bash Commands Built in Ruby

Copyright (c) 2020 Andy Maleh

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a [copy](LICENSE.md) of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
