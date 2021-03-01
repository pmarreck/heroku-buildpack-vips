heroku-buildpack-vips
=====================

Heroku buildpack with [libvips](https://github.com/jcupitt/libvips) installed.

Current vips version is 8.10.5.
Dependencies are installed using the apt buildpack.

## Usage

Point the `BUILDPACK_URL` config or add to your `.buildpacks` this:

```
https://github.com/pmarreck/heroku-buildpack-vips
```

## Build script

[This](./build.sh) is the script used to build vips on `heroku run bash`.
