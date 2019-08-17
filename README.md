# udemy-dl-bash-scripts

Bash wrapper to install, manage and use [udemy-dl](https://github.com/r0oth3x49/udemy-dl), the cross-platform python based utility to download courses from udemy for personal offline use.


# Download

* https://github.com/seanwhe/udemy-dl-bash-scripts.git
* Git clone with `git clone https://github.com/seanwhe/udemy-dl-bash-scripts.git`

### Prerequisites

There is allot to install so the install script will do most of the heavy lifting.
At the start the expectation is that you have:
* Computer running Ubuntu 18.04 (LTS)
* Bash shell
* User account with sudo privileges
* Installed git

### Agreeable

Some knowledge of:
* Linux Command Line Interface
* Linux shell `bash`

### Installation

1. Change to your user home directory.
   `cd ~`
1. Install git.
   `sudo apt install git`
1. Clone this project.
   `git clone https://github.com/seanwhe/udemy-dl-bash-scripts.git`
1. Change into the cloned directory.
   `cd udemy-dl-bash-scripts`
1. Set your values for the following variables:
   1. _UDEMY_ACCESS_TOKEN
1. Run the install script
   `./install.sh`
1. Add URL's to courses in courses.txt
   1. One URL per line
   1. `https://www.udemy.com/some-course-name/learn/`
1. Run the start script
   `./start.sh`


### Operation

Defaults - The settings.sh contains a number of variables. All files and folders created during install and required for runtime are kept in the directory `~/udemy-dl-bash-scripts/`.

During install the folder source for [udemy-dl](https://github.com/r0oth3x49/udemy-dl) is cloned into `~/udemy-dl-bash-scripts/`. A folder named `download` is also created and will be the location where courses are downloaded to. 
Also created is a `cookies.sh` and `courses.txt`. The `cookies.txt` will be created with the value of your access token from `_UDEMY_ACCESS_TOKEN`. The `courses.txt` is for you to add URL's to the courses you wish to download. Each course URL must be on a single line to create a list. Example of courses.txt:
```
https://www.udemy.com/some-course-name/learn/
https://www.udemy.com/another-course-name/learn/
https://www.udemy.com/someother-course-name/learn/
```

Lastly, for ease of use udemy-dl.py is soft linked in the `~/udemy-dl-bash-scripts/` directory.

What follows is a brief of the shell scripts you will find. The names are mostly self explanatory.
Comments and notes are used liberally in the scripts to help give you hints as to how it works.
The scripts are designed to be modular to promote resuse, execute exclusion and standalone execution.

* build.sh - clones [udemy-dl](https://github.com/r0oth3x49/udemy-dl) to `~/udemy-dl-bash-scripts.git/udemy-dl`
* depends.sh - installs dependancies required by udemy-dl and these scripts.
* install.sh - the main entry point when first installing.
* maintenance.sh - performs apt update, upgrade, autoremove and autoclean operations.
* settings.sh - contains variables used by these scripts.
* start.sh - starts udemy-dl.py passing cookies for access token and course list to download.

### Viewing the log
It is recommended to run these scripts in a screen session. The output is to std_out so you can watch as it runs.

### Updating
A simple `git update` in `~/udemy-dl-bash-scripts` will update these scripts.

The install script can be run at any time to update the source found `~/udemy-dl-bash-scripts/udemy-dl`.
The branch checkout is taken from the `_UDL_BRANCH` variable in `settings.sh`. The default branch is set to `master`.

A script named update.sh is provided to perform both these steps in a single command.

## Reporting issues

[udemy-dl](https://github.com/r0oth3x49/udemy-dl) and [udemy-dl bash scripts](https://github.com/seanwhe/udemy-dl-bash-scripts) are different projects run by different people.

While the developers of both projects may be seen interacting with one another on either project, we ask that you report issues to the respective projects.
In other words, post issues for:
* udemy-dl, the cross-platform python based utility, over at [udemy-dl issue tracker](https://github.com/r0oth3x49/udemy-dl/issues)
* xmrig-bash-scripts, these conveniece scripts, over at [udemy-dl-bash-scripts](https://github.com/seanwhe/udemy-dl-bash-scripts/issues)

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/seanwhe/udemy-dl-bash-scripts/tags).

## Contributing
Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

See also the list of [contributors](https://github.com/seanwhe/udemy-dl-bash-scripts/CONTRIBUTORS) 

## Authors

* **Sean Wheller** - *Initial work* - [seanwhe](https://github.com/seanwhe)

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

* Thanks to [r0oth3x49](https://github.com/r0oth3x49) for developing and maintaining [udemy-dl](https://github.com/r0oth3x49/udemy-dl).
