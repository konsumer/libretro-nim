This is an example core, written in nim. This is a translation from [a basic software-rendering example](https://github.com/libretro/libretro-samples/tree/master/video/software/rendering) but you should be able to roughly translate any of the C examples into nim, with this example, as a guide.

## Usage

Put your core-code in `src/example_libretro.nim` and you can run these:

```
# install tools/libs
nimble install -d

# build the core
nimble core

# build a C-bassed core to compare
nimble example
```

You can run your core like this:

```
# mac
/Applications/RetroArch.app/Contents/MacOS/RetroArch -L example_libretro.dylib

# linux
retroarch -L example_libretro.so

# windows
retroarch -L example_libretro.dll
```

If you don't need the C example, you can delete `src/example.c' and remove the `example` task from `example_libretro.nimble`. It's basically just for 