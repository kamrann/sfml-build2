[![SFML logo](https://www.sfml-dev.org/images/logo.png)](https://www.sfml-dev.org)

# sfml-network build2 package

[![cppget](https://img.shields.io/website/https/cppget.org/sfml-network.svg?down_message=offline&label=cppget.org&up_color=blue&up_message=online)](https://cppget.org/sfml-network)

[SFML](https://www.sfml-dev.org) is a simple, fast, cross-platform and object-oriented multimedia API. It provides access to windowing, graphics, audio and network. It is written in C++, and has bindings for various languages such as C, .Net, Ruby, Python.

This project builds and defines the build2 package for the `Network` module of SFML.

## Usage

Add `sfml-network` to your build2 `manifest` file.

```
depends: libsfml-network ^2.5.1
```

You can specify your target platform directly or let build2 try to auto-detect your system:

```
config.libsfml_network.platform = # SFML platform identifier
```

Supported platform identifiers are:

```
linux
macos
windows
freebsd
openbsd
netbsd
android
ios
```

You can determine if you want to use OpenGLES (default is `false`).

```
config.libsfml_network.use_opengles = # true or false
```

## Dependencies

This module requires certain

On Unix based system these are:

* `libx11-dev`
* `libxrandr-dev`
* `libudev-dev`
* `libegl-dev` and `libgles-dev` if OpenGLES is activates
