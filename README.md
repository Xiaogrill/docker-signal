# Dockerized Signal

## Why?

I just want to run it on non-debian systems :(

## Installation

Read `deploy.sh` and `signal` and maybe change `INSTALL_PREFIX` and `WORKDIR` respectively.

Run `./deploy.sh`.

## Usage

`signal` should now be in your $PATH. So, run `signal` from a terminal or dmenu et al (or make a signal.desktop shortcut).

## Dependencies

Docker, sudo, sakura (terminal for --no-interaction), X.

Customize to your needs.

## Tips

This Docker setup assumes your user is not in the docker-group, and you are not root. It will try to use sudo to elevate your privileges - you can give your user NOPASSWD sudo access to the `signal` script. This should be "safe" since it takes no actual user input.

## Contributing

If you want to contribute, feel free to make a pull request on [Github](https://github.com/Xiaogrill/docker-signal), please read [CONTRIBUTING](CONTRIBUTING) and [the license](UNLICENSE) first.
