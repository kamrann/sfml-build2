[![SFML logo](https://www.sfml-dev.org/images/logo.png)](https://www.sfml-dev.org)

# sfml-system build2 package

[![cppget](https://img.shields.io/website/https/cppget.org/sfml-system.svg?down_message=offline&label=cppget.org&up_color=blue&up_message=online)](https://cppget.org/sfml-system)

[SFML](https://www.sfml-dev.org) is a simple, fast, cross-platform and object-oriented multimedia API. It provides access to windowing, graphics, audio and network. It is written in C++, and has bindings for various languages such as C, .Net, Ruby, Python.

This project builds and defines the build2 package for the `System` module of SFML.

## Usage

Add `sfml-system` to your build2 `manifest` file.

```
depends: libsfml-system ^2.5.1
```

You can specify your target platform directly or let build2 try to auto-detect your system:

```
config.libsfml_system.platform = # SFML platform identifier
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
